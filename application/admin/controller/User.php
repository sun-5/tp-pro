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
       //$map[] = ['is_admin','=',1];
        $res=UserModel::where($map)->find();
      // halt($res);
        if($res){
            Session::set('admin_id',$res['id']);
            Session::set('admin_name',$res['name']);
            Session::set('admin_level',$res['is_admin']);
            $this->success('登陆成功','admin/user/userList');
        }
        $this->error('登陆失败');
    }
    public function logout(){
        Session::clear();//清除session
        $this->success('退出成功','admin/user/login');
    }
    //用户列表
    public function userList(){
        $this->isLogin();
        //1.获取当前用户id 和 当前用户级别
        $data['admin_id']=Session::get('admin_id');
        $data['admin_level']=Session::get('admin_level');
        //2.如果是普通用户，只获取用户个人信息
       $userList = UserModel::where('id',$data['admin_id'])->paginate(5);
        //3.如果是超级管理员，获取到全部用户信息
        if($data['admin_level']==1){
            $userList =  UserModel::paginate(5);
        }
        //4.模板赋值
        $this->view->assign('title','用户管理');
        $this->view->assign('empty','<span>没有任何数据</span>');
        $this->view->assign('userList',$userList);//传用户信息到模板
        //5.渲染出用户列表的模板
        return $this->view->fetch('userList');
    }
    //渲染编辑用户的界面
    public function userEdit(){
        $this->isLogin();
        //1.获取当前要编辑的用户的id主键
        $userId=Request::param('id');
        //2.根据主键查询用户
        $userInfo=UserModel::where('id',$userId)->find();
        //3.设置编辑界面的模板变量
        $this->view->assign('title','编辑用户');
        $this->view->assign('userInfo',$userInfo);
        //4.渲染出编辑界面
        return $this->view->fetch('useredit');

    }

    //执行用户信息的保存
    public function doEdit(){
        //1.获取到用户提交的信息
        $data = Request::param();
        //2.取出主键
        $id = $data['id'];
        //3.将用户密码加密后保存回去
        $data['password'] = sha1($data['password']);
        //4.删除主键id
        unset($data['id']);//data中的id没用 需要删除后 更新数据
        //5.执行更新操作
        if(UserModel::where('id',$id)->data($data)->update()){
            return $this->success('更新成功！','userList');
        }else{
            $this->error('没用更新或更新失败！');
        }
    }
    //执行用户信息删除
    public function doDelete(){
        //1.获取要删除的主键id
        $id=Request::param('id');
        //2.执行删除操作
       if(UserModel::where('id',$id)->delete()) {
        return $this->success('删除成功！','userList');
       }else{
        $this->error('删除失败！');
    }
    }
}