<?php

namespace app\common\controller;

use think\Controller;
use think\facade\Session;
use app\common\model\ArtCate;

class Base extends Controller
{
    /*初始化方法
    创建常量，公众方法
    在所有的方法之前被调用
    */
    protected function initialize()
    {
        $this->showNav();
    }
    //检查是否已登录 防止重复登录
    public function logined()
    {
        if (Session::has('user_id')) {
            $this->error('客官，您已经登陆了', 'index/index');
        }
    }
    //检测是否未登录
    public function isLogin()
    {
        if (!Session::has('user_id')) {
            $this->error('客官，您是否忘记登陆', 'user/login');
        }
    }
    //显示导航
    protected function showNav()
    {
        //1.查询分类表获取到所有分类信息
        $cateList = ArtCate::all(function ($query) {
            $query->where('status', 1)
                ->order('sort', 'asc');
        });
        //2.将分类信息赋值给模板nav.hrml
        $this->view->assign('cateList', $cateList);
    }
    
}
