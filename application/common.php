<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
use think\Db;
//过滤文章摘要
function getArtContent($content)
{
    return   mb_substr(strip_tags($content), 0, 10) . '···';
}

// 根据user_id查询user表,获取用户的姓名
if(!function_exists('getUserName'))
{
    function getUserName($id)
    {
        return Db::table('wb_user')->where('id',$id)->value('name');
    }
}

// 根据cate_id查询zh_article_cate表,获取栏目名称
if(!function_exists('getCateName'))
{
    function getCateName($cateId)
    {
        return Db::table('wb_cate')->where(['id'=>$cateId])->value('name');
    }
}
