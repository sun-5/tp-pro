<?php

namespace app\admin\controller;
use app\admin\common\controller\Base;
use app\admin\common\model\Site as SiteModel;
use think\facade\Request;
use think\facade\Session;

class Site extends Base{
    //站点的管理首页
    public function index(){
       $this->isLogin();
        //1.获取站点信息
        $siteInfo = SiteModel::get(['status'=>1]);
        //2.模板赋值
        $this->assign('siteInfo',$siteInfo);

        //3.渲染模板
        return $this->fetch('index');


    }
    //保存修改
    public function save(){
        $data = Request::param();

        if(SiteModel::update($data)){
            $this->success('更新成功','index');

        }
        $this->error('更新失败','index');

    }


}