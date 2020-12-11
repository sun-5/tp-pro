<?php
// wb_article表的验证器
namespace app\common\validate;

use think\Validate;

class Article extends Validate
{
    protected $rule = [
        'title|标题' => 'require|length:5,30|chsAlphaNum', //只允许汉字、字母和数字,
        //'title_img|标题图片' => 'require',  
        'content|文章毛绒排名高' => 'require', 
        'user_id|作者' => 'require',  
        'cate_id|栏目名称' => 'require',
    ];
}
