<?php

namespace app\admin\controller;

use app\admin\common\controller\Base;
use app\admin\common\model\Cate as CateModel;
use think\facade\Request;
use think\facade\Session;

class Cate extends Base
{
    //分类管理的首页
    public function index()
    {
        //检查用户是否登录
        $this->isLogin(); //在公共文件base中
        //登录成功后跳转到分类管理界面
        return $this->redirect('cateList');
    }
    //分类列表
    public function cateList()
    {
        //检查用户是否登录
        $this->isLogin();
        //获取所有分类
        $cateList = CateModel::paginate(5);
        //设置模板变量
        $this->view->assign('title', '分类管理');
        $this->view->assign('empty', '<span style="color:red">没有分类</span>');
        $this->view->assign('cateList', $cateList);
        //渲染分类模板
        return $this->view->fetch('catelist');
    }

    //渲染编辑分类的界面
    public function cateEdit()
    {
        //获取分类id
        $cateId = Request::param('id');
        //根据主键查询需要更新的分类信息
        $cateInfo = CateModel::where('id', $cateId)->find();
        $this->view->assign('title', '分类编辑');
        $this->view->assign('cateInfo', $cateInfo);
        //渲染分类编辑模板
        return $this->view->fetch('cateEdit');
    }
    //执行更新操作
    public function doEdit()
    {

        $data = Request::param();

        $id = $data['id'];

        unset($data['id']); //data中的id没用 需要删除后 更新数据
        //执行更新操作
        if (CateModel::where('id', $id)->data($data)->update()) {
            return $this->success('更新成功！', 'cateList');
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
        if (CateModel::where('id', $id)->delete()) {
            return $this->success('删除成功！', 'cateList');
        } else {
            $this->error('删除失败！');
        }
    }
    //添加界面渲染
    public function cateAdd()
    {
      return $this->fetch('cateadd', ['title'=>'添加分类']);    
    }
    //添加操作
    public function doAdd(){
        $data=Request::param();
        if(CateModel::create($data)){
            return $this->success('添加成功！', 'cateList');
        }else{
            $this->error('添加失败！');
        }
    }
}
