<?php
namespace app\common\model;
use think\Model;

class Comment extends Model{
    protected $pk = 'id';
    protected $table = 'wb_comment';
     // 创建时间字段自定义
     protected $createTime = 'create_time'; // 默认create_time
     // 更新时间字段自定义
     protected $updateTime = 'update_time'; // 默认update_time
 
     //仅更新时设置
     protected $update = ['update_time'];
} 


?>