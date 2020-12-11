<?php

namespace app\index\controller;

use app\common\controller\Base; //导入公共控制器
use app\common\model\User as UserModel;
use think\facade\Request;
use think\facade\Session;

class User extends Base
{
    //注册页面
    public function register()
    {
        $this->assign('title', '用户注册');
        return $this->fetch();
    }
    //处理用户提交的注册信息
    public function insert()
    {
        if (Request::isAjax()) {
            // 验证数据
            $data = Request::post(); //得到要验证的数据
            $rule = 'app\common\validate\User'; //自定义验证规则
            //开始验证
            $res = $this->validate($data, $rule);
            if (true !== $res) { //失败情况
                return ['status' => -1, 'message' =>  $res];
            } else { //true
                //获取用户通过表单提交的数据
                $data = Request::except('password_confirm', 'post'); //过滤数据
                //使用模型创建数据  传到数据库
                if ($user=UserModel::create($data)) {
                    //注册成功后 实现自动登录
                    $res = UserModel::get($user->id);
                    Session::set('user_id',$res->id);
                    Session::set('user_name',$res->name);
                    return ['status' => 1, 'message' => '恭喜，注册成功'];
                } else {
                    return ['status' => 0, 'message' => '注册失败，请检查'];
                }
            }
        } else {
            $this->error('请求类型错误', 'register');
        }
    }
    public function insert2()
    {
        //数据status没有加上默认值
        $data = [
            'name' => 'chen',
            'password' => 'abc1234',
            'email' => 'chen@qq.com',
            'mobile' => '18285859696'
        ];
        return UserModel::create($data);
    }

    //用户登录
    public function login()
    {
        $this->logined();
        return $this->view->fetch('login', ['title' => '用户登录']);
    }
    //用户登录验证与查询
    public function loginCheck()
    {
        if (Request::isAjax()) {
            // 验证数据
            $data = Request::post(); //得到要验证的数据
            $rule = [
                'email|邮箱'=>'require|email',
                'password|密码'=>'require|alphaNum'
            ]; //自定义验证规则
            //开始验证
            $res = $this->validate($data, $rule);
            if (true !== $res) { //失败情况
                return ['status' => -1, 'message' =>  $res];
            } else { //true
                //执行数据库查询
                $result = UserModel::get(function ($query) use ($data){
                    $query->where('email',$data['email'])
                        ->where('password',sha1($data['password']));
                });

                if (null == $result) {
                    return ['status' => 0, 'message' => '邮箱或密码不正确'];
                    
                } else {
                    Session::set('user_id',$result->id);
                    Session::set('user_name',$result->name);
                    return ['status' => 1, 'message' => '登录成功'];
                }
            }
        } else {
            $this->error('请求类型错误', 'register');
        }
    }

    //用户退出登陆
    public function logout(){
       // Session::delete('user_id');
        //Session::delete('user_name');
        Session::clear();//清空所有session值
       // Session::destroy();//删除session文件 不能用在这
        $this->success('退出成功！','index/index');
    }
}
