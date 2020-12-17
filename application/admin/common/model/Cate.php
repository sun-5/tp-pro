<?php
//分类数据表模型
namespace app\admin\common\model;

use think\Model;

class Cate extends Model
{
    protected $pk = 'id';
    protected $table = 'wb_cate';
    protected $autoWriteTimestamp = true;//开启自动时间戳
    // 创建时间字段自定义
    protected $createTime = 'create_time'; // 默认create_time
    // 更新时间字段自定义
    protected $updateTime = 'update_time'; // 默认update_time

    //仅更新时设置
    protected $update = ['update_time'];
}
