<?php
namespace TAdmin\Controller;

class ProsysController extends CommonController {
    public function index(){
         /* 接收参数*/
        $proid=$_GET['proid'];
        $prodid=$_GET['prodid'];
         /* 实例化模型*/
//         $s = D("prosys");
        $s = D("system");
        $where=array("tp_prosys.proid"=>"$proid");
        $data=$s->where($where)
        ->join('tp_prosys ON tp_prosys.sysid =tp_system.id')
        ->select();
        $this->assign("data",$data);
        /* 实例化模型*/
        $m=M('system');
        $where=array("prodid"=>$prodid);
        $syses=$m->where($where)->select();
        /*输出数据 */
        $this->assign('syses',$syses);
        $where=array("prodid"=>$prodid,"proid"=>"$proid");
        $this->assign('w',$where);

	     $this->display();
    }


    public function insert(){
        /* 接收参数*/

        $m=D('prosys');
        $_GET['adder']=$_SESSION['realname'];
        $_GET['moder']=$_SESSION['realname'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
//         dump($_GET);
//         exit();
        if(!$m->create($_GET)){
            $this->error($m->getError());
        }
        $lastId=$m->add($_GET);
        if($lastId){
           $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }

    }


    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['prosysid']) ? $_POST['prosysid'] : $_GET['prosysid'];

        /* 实例化模型*/
        $m=M('prosys');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }
}