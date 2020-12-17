<?php

namespace app\admin\controller;
use app\admin\common\controller\Base;
use app\admin\common\model\Site as SiteModel;
use think\facade\Request;
use think\facade\Session;

class Site extends Base{
    //站点的管理首页
    public function index(){
        //1.获取站点信息
        $siteInfo = SiteModel::get(['status'=>1]);
        //2.模板赋值
        $this->assign('siteInfo',$siteInfo);

        //3.渲染模板
        return $this->fetch('index');


    }
}