<?php
namespace app\admin\controller;
use app\admin\common\controller\Base;

class Index extends Base{
    public function index(){
        //用户是否登录
    $this->isLogin();
      //  return $this->view->fetch(); 
        return $this->redirect('user/userlist');//默认首页跳转到用户列表
    }
 
}
