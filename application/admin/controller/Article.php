<?php

namespace app\admin\controller;

use app\admin\common\controller\Base;
use app\admin\common\model\Article as ArtModel;
use app\admin\common\model\Cate as Cate;
use think\facade\Request;
use think\facade\Session;

class Article extends Base
{
    //文章管理的首页
    public function index()
    {
        //检查用户是否登录
        $this->isLogin(); //在公共文件base中
        //登录成功后跳转到文章管理界面
        return $this->redirect('articleList');
    }
    //文章列表
    public function articleList()
    {
        //检查用户是否登录
        $this->isLogin();

        //获取用户id和用户级别
        $userId = Session::get('admin_id');
        $isAdmin = Session::get('admin_level');

        //如果是超级管理，获取所有文章
        if ($isAdmin == 1) {
            $articleList = ArtModel::paginate(10);
        } else {
            //获取当前用户发布的文章
            $articleList = ArtModel::where('user_id', $userId)->paginate(10);
        }
        //设置模板变量
        $this->view->assign('title', '文章管理');
        $this->view->assign('empty', '<span style="color:red">没有文章</span>');
        $this->view->assign('articleList', $articleList);
        //渲染文章模板
        return $this->view->fetch('articleList');
    }

    //渲染编辑文章的界面
    public function articleEdit()
    {
        //获取文章id
        $articleId = Request::param('id');
        //根据主键查询需要更新的文章信息
        $articleInfo = ArtModel::where('id', $articleId)->find();

        //获取栏目信息
        $cateList = Cate::all();
        $this->view->assign('cateList', $cateList);
        $this->view->assign('title', '文章编辑');
        $this->view->assign('artInfo', $articleInfo);
        //渲染文章编辑模板
        return $this->view->fetch('articleEdit');
    }
    //执行更新操作
    public function doEdit()
    {

        $data = Request::param();
        //获取上传的标题图片信息
        $file = Request::file('title_img');
        //文件信息验证与上传到服务器指定目录
      $info = $file->validate([
            'size'=>50000000000,//文件大小
            'ext'=>'jpeg,jpg,png,gif'//文件扩展名
        ])->move('upload/');//移动到public/upload目录下
        if($info){
            $data['title_img']=$info->getSaveName();
        }else{
            $this->error($file->getError());
        }
        $id = $data['id'];

        unset($data['id']); //data中的id没用 需要删除后 更新数据
        //执行更新操作
        if (ArtModel::where('id', $id)->data($data)->update()) {
            return $this->success('更新成功！', 'articleList');
        } else {
            $this->error('没用更新或更新失败！');
        }
    }
    //删除操作
    public function doDelete()
    {
        //1.获取要删除的主键id
        $id = Request::param('id');
        //2.执行删除操作
        if (ArtModel::where('id', $id)->delete()) {
            return $this->success('删除成功！', 'articleList');
        } else {
            $this->error('删除失败！');
        }
    }
    //添加界面渲染
    public function articleAdd()
    {
        return $this->fetch('articleadd', ['title' => '添加文章']);
    }
    //添加操作
    public function doAdd()
    {
        $data = Request::param();
        if (ArtModel::create($data)) {
            return $this->success('添加成功！', 'articleList');
        } else {
            $this->error('添加失败！');
        }
    }
}
