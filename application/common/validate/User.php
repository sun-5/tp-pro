<?php
// wb_user表的验证器
namespace app\common\validate;

use think\Validate;

class User extends Validate
{
    protected $rule = [
        'name|姓名' => 'require|length:5,20|chsAlphaNum', //只允许汉字、字母和数字,
        'email|邮箱' => 'require|email|unique:wb_user', //这个字段必须在user表中唯一
        'mobile|手机号' => 'require|mobile|number|unique:wb_user', //这个字段必须在user表中唯一
        'password|密码' => 'require|length:6,20|alphaNum|confirm', //只允许 字母和数字'confirm' => 'confirm', //自动与password_confirm字段进行自动相等验证
    ];
}
