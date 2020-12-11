<?php
//测试专用控制器

namespace app\index\controller;

use app\common\controller\Base;
use app\common\model\User as UserModel;

class Test extends Base{
    //测试用户的验证器
    public function test1(){
        $data = [
            'name'=>'wubao',
            'email'=>'asd@qq.com',
            'mobile'=>'18912463587',
           'password'=>'123abcd',
           'password_confirm'=>'123abcd',
        ];

        $rule = 'app\common\validate\User';
       return  $this->validate($data,$rule);
    }
    public function test2(){
        dump(UserModel::get(10));
    }
    public function test3(){
        echo session('user_name');
    }
}
