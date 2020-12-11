<?
namespace app\common\model;
use think\Model;


class Article extends Model{
   protected $pk = 'id';//确定主键名 
     // 设置当前模型对应的完整数据表名称
   protected $table = 'wb_article';//已在配置中加了前缀 wb_

   protected $autoWriteTimestamp = true;//开启自动时间戳
   protected $createTime = "create_time";
   protected $updateTime = "update_time";
   protected $dateFormat = 'Y年m月d日';

   //开启自动设置
   protected $auto = [];//无论是新增或者更新豆芽设置的字段
   //仅新增的有效
   protected $insert = ['create_time','status'=>1,'is_top'=>0,'is_hot'=>0];
    //仅更新时设置
    protected $update = ['update_time'];


}



?>