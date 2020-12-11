<?php

namespace app\admin\controller;
use app\admin\common\controller\Base;
use app\admin\common\model\User as UserModel;
use think\facade\Request;
use think\facade\Session;

class User extends Base{
    //渲染登录界面

    public function login(){
        $this->view->assign('title','管理员登陆');
        return $this->view->fetch('login');
    }
    public function checklogin(){
        $data = Request::param();
        $map[] = ['email','=',$data['email']];
        $map[] = ['password','=',sha1($data['password'])];
        $map[] = ['is_admin','=',1];
        $res=UserModel::where($map)->find();
        //halt($res);
        if($res){
            Session::set('admin_id',$res['id']);
            Session::set('admin_name',$res['name']);
            Session::set('admin_level',$res['is_admin']);
            $this->success('登陆成功','admin/index/index');
        }
        $this->error('登陆失败');
    }
    public function logout(){
        Session::clear();
        $this->success('退出成功','admin/user/login');
    }
}