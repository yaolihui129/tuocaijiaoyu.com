<?php
namespace TAdmin\Controller;

class ProsysController extends CommonController {
    public function index(){
         /* 接收参数*/
        $proid=$_GET['proid'];
        $_SESSION['proid']=$proid;
        $gp=$_SESSION['testgp'];
        /* 实例化模型*/
        $m= D("program");
        $where=array("testgp"=>"$gp");
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);
        
        $m = D("system");
        $where=array("tp_prosys.proid"=>"$proid");
        $data=$m->where($where)
        ->join('tp_prosys ON tp_prosys.sysid =tp_system.id')
        ->select();
        $this->assign("data",$data);


        $where=array("prodid"=>$arr['prodid']);
        $syses=$m->where($where)->select();
        $this->assign('syses',$syses);

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