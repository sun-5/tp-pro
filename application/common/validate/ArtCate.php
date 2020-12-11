<?php
// wb_article表的验证器
namespace app\common\validate;

use think\Validate;

class ArtCate extends Validate
{
    protected $rule = [
        'name|栏目名称' => 'require|length:3,20|chsAlpha' //只允许汉字、字母和数字,

    ];
}
