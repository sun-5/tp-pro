<?php

namespace app\common\controller;

use think\Controller;
use think\facade\Session;
use app\common\model\ArtCate;
use app\admin\common\model\Site;
use think\facade\Request;

class Base extends Controller
{
    /*初始化方法
    创建常量，公众方法
    在所有的方法之前被调用
    */
    protected function initialize()
    {
        //显示分类导航，在初始化中调用，可以确保所有页面都可以使用分类信息变量
        $this->showNav();

        //检测网站是否关闭
        $this->is_open();
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
    //检测站点是否关闭
    public function is_open(){
        //1.获取当前站点状态
        $is_open=Site::where('status',1)->value('is_open');

        //2.如果站点已经关闭，只允许关闭前台，后台不能关闭
        if($is_open==0&&Request::module()=='index'){//关闭 并且 请求模块是index
            $info=<<<INFO
<body style='background:#333'>
<h1 style='color:#eee;text-align:center;margin:200px'>站点维护中...</h1>
</body>
INFO;
        exit($info);
        }

    }
    
}
