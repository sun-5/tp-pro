<?
namespace app\common\model;
use think\Model;


class User extends Model{
   protected $pk = 'id';//确定主键名 
     // 设置当前模型对应的完整数据表名称
   protected $table = 'wb_user';//已在配置中加了前缀 wb_

   protected $autoWriteTimestamp = true;//开启自动时间戳
   protected $createTime = "create_time";
   protected $updateTime = "update_time";
   protected $dateFormat = 'Y年m月d日';

  //获取器   get字段Attr  从数据库中获取值时自动转换想要的值
  public function getStatusAttr($value){
    $status = ['1'=>'启用','0'=>'禁用'];
    return $status[$value];
  }
  public function getIsAdminAttr($value){
    $is_admin = ['1'=>'管理员','0'=>'普通用户'];
    return $is_admin[$value];
  }
  //修改器 写入数据表时候自动修改
  public function  setPasswordAttr($value){
    return sha1($value);
  }

}



?>