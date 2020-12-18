<?php

namespace app\index\controller;

use app\common\controller\Base; //导入公共控制器
use app\common\model\ArtCate as ArtCateModel;
use app\common\model\Article as ArticleModel;
use app\common\model\Comment;
use app\common\validate\ArtCate;
use app\common\validate\Article;
use think\facade\Request;
use think\Db;
use think\db\Where;

class Index extends Base
{
    public function index()
    {
        //全局查询条件 数组对象查询 搜索功能
        $map = []; //将所有的查询条件封装到数组中
        //条件1：状态为1
        $map[] = ['status', '=', 1];
        //实现搜索
        $keywords = Request::param('keywords');
        if (!empty($keywords)) {
            //条件2
            $map[] = ['title', 'like', '%' . $keywords . '%'];
        }

        //分类信息显示
        $cateId = Request::param('cate_id');

        //列表信息分页
        if (isset($cateId)) {
            $map[] = ['cate_id', '=', $cateId];
            $res = ArtCateModel::get($cateId);
            $this->view->assign('cateName', $res->name);
            $artList = Db::table('wb_article')
                ->where($map)
                ->order('create_time', 'desc')->paginate(5);
        } else {
            $artList =  Db::table('wb_article')
                ->where($map)
                ->order('create_time', 'desc')->paginate(5);
        }
        $this->view->assign('empty', '<h3>没有文章</h3>');
        $this->view->assign('artList', $artList);

        return  $this->view->fetch('index', ['title' => '项目首页']);
    }

    //添加文章界面
    public function insert()
    {
        //1.登陆才允许发布文章
        $this->isLogin();
        //2.设置页面标题
        $this->view->assign('title', '新增文章页面');
        //3.获取栏目信息
        $cateList = ArtCateModel::all();
        //halt($cateList);  输出结果查看
        if (count($cateList) > 0) {
            //将查询到的栏目信息赋值给模板
            $this->assign('cateList', $cateList);
        } else {
            $this->error('请先添加栏目', 'index/index');
        }
        //4.渲染发布界面
        return $this->view->fetch('insert');
    }

    //保存文章
    public function save()
    {
        //判断提交类型
        if (Request::isPost()) {
            //1.获取一下用户提交的文章信息
            $data = Request::post();
            $res  = $this->validate($data, 'app\common\validate\Article');
            // halt($data);
            if (true !== $res) {
                //验证失败
                echo '<script>alert("' . $res . '");window.history.back(-1)</script>';
            } else {
                //验证成功
                //获取一下上传的图片信息
                $file =  Request::file('title_img');
                //校验文件 成功后上传到服务器指定目录,以public为起始目录

                $info = $file->validate([
                    'size' => 1000000,
                    'ext' => 'jpeg,jpg,png,gif'
                ])->move('upload/');
                if ($info) {
                    $data['title_img'] = $info->getSaveName();
                } else {
                    $this->error($file->getError());
                }
                //将数据写到数据表中
                if (ArticleModel::create($data)) {
                    $this->success('文章发布成功', 'index/index');
                } else {
                    $this->error('文章发布失败');
                }
            }
        } else {
            $this->error('请求类型错误');
        }
    }
    //详情页
    public function detail()
    {
        $artId = Request::param('id');
        $art = ArticleModel::get(function ($query) use ($artId) { //获取文章id对应的文章数据
            $query->where('id', $artId)->setInc('pv'); //刷新自增阅读量
        });
        if (!is_null($art)) {
            $this->view->assign('art', $art);
        }
        $this->view->assign('title', $art['title'] . '详情页');


        //添加评论信息
        $comlis = Comment::all(function ($query) use ($artId) {
            $query->where('status', 1)
                ->where('article_id', $artId)
                ->order('create_time', 'desc');
        });
       // halt($comlis);
        $this->view->assign('commentList', $comlis);

        return $this->view->fetch('detail');
    }
    //收藏
    public function fav()
    {
        // return ['status' => 1, 'message' => '请求成功'];
        if (!Request::isAjax()) {
            return ['status' => -1, 'message' => '请求类型错误'];
        }
        //获取从前端传递来的数据
        $data = Request::param();
        //halt($data);//打印数据
        //判断用户是否登录
        if (empty($data['session_id'])) {
            return ['status' => -2, 'message' => '请登录后再收藏！'];
        }
        $map[] = ['user_id', '=', $data['user_id']]; //查询条件
        $map[] = ['article_id', '=', $data['article_id']];
        $fav = Db::table('wb_fav')->where($map)->find();
        if (is_null($fav)) {
            Db::table('wb_fav')->data([
                'user_id' => $data['user_id'],
                'article_id' => $data['article_id'],
            ])->insert();
            return ['status' => 1, 'message' => '收藏成功'];
        } else {
            Db::table('wb_fav')->where($map)->delete();
            return ['status' => 0, 'message' => '已取消'];
        }
    }
    //提交评论

    public function insertCom()
    {
        if (Request::isAjax()) {
            //1.获取评论
            $data = Request::param();
            // halt( $data);
            //2.将用户留言存到表中
            if (Comment::create($data, true)) {
                return ['status' => 1, 'msg' => '评论发表成功'];
            } else {
                return ['status' => 0, 'msg' => '评论发表失败'];
            }
        }
    }
}
