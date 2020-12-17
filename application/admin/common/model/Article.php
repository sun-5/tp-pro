<?php
//数据表模型
namespace app\admin\common\model;

use think\Model;

class Article extends Model
{
    protected $pk = 'id';
    protected $table = 'wb_article';
    protected $autoWriteTimestamp = true; //开启自动时间戳
    // 创建时间字段自定义
    protected $createTime = 'create_time'; // 默认create_time
    // 更新时间字段自定义
    protected $updateTime = 'update_time'; // 默认update_time

   //开启自动设置
   protected $auto = [];//无论是新增或者更新豆芽设置的字段
   //仅新增的有效
   protected $insert = ['create_time','status'=>1,'is_top'=>0,'is_hot'=>0];
    //仅更新时设置
    protected $update = ['update_time'];
}
