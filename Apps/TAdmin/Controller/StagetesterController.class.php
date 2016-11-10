<?php
namespace TAdmin\Controller;

class StagetesterController extends CommonController {
   public function index(){
        /* 接收参数*/
        $stageid=$_GET['stageid'];
        $proid=$_GET['proid'];
        $type=$_GET['type'];
        /* 实例化模型*/
        $m=D('stage');
        $where=array("proid"=>$proid);
        $data=$m->where($where)->order("sn")->select();
        $this->assign('data',$data);
        // dump($data);

        $m=D('stagetester');
        $where=array("stageid"=>$stageid,"type"=>$type);
        $testers=$m->where($where)->select();
        $this->assign('testers',$testers);

        $m=D('user');
        $where=array("state"=>"在职");
        $users=$m->where($where)->order("usergp")->select();
        $this->assign('users',$users);
        $where=array("proid"=>$proid,"stageid"=>$stageid,"type"=>$type);
        $this->assign('w',$where);

       // dump($users);

        $this->display();


    }


    public function insert(){

        $m=D('stagetester');
        $where=array("stageid"=>$_GET['stageid'],"type"=>$_GET['type']);
        $_GET['sn']=$m->where($where)->count()+1;
        $_GET['start']=date("Y-m-d",time());
        $_GET['end']=date("Y-m-d",time()+1*24*3600);
        $_GET['plan']=8.0;
        $_GET['adder']=$_SESSION['realname'];
        $_GET['moder']=$_SESSION['realname'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
//         dump($_GET);
        if(!$m->create($_GET)){
            $this->error($m->getError());
        }
        $lastId=$m->add($_GET);
        if($lastId){
          //  $this->redirect('Stagetester/index');
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }
    }


    public function mod(){

        /* 接收参数*/
        $stageid=$_GET['stageid'];
        $proid=$_GET['proid'];
        $id=$_GET['id'];
        $type=$_GET['type'];
        /* 实例化模型*/
        $m=D('stagetester');
        $where=array("proid"=>$proid,"stageid"=>$stageid,"type"=>$type);
        $data=$m->where($where)->order("sn")->select();
        $this->assign('data',$data);

        $tester=$m->find($id);
        $this->assign("tester",$tester);

        $this->assign("startDate",PublicController::date("start",$tester['start']));
        $this->assign("endDate",PublicController::date("end",$tester['end']));
        $this->assign('w',$where);
        $this->display();
    }


    public function update(){
        /* 实例化模型*/
        $db=D('stagetester');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }

    public function order(){

        $db = D('stagetester');
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += $db->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("重新排序成功!");
        }else{
            $this->error("重新排序失败...");
        }
    }




}