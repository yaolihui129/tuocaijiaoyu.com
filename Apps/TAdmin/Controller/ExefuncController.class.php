<?php
namespace TAdmin\Controller;

class ExefuncController extends CommonController{


public function index(){
    /* 接收参数*/
    $stagetesterid=$_GET['stagetesterid'];
    $proid=$_GET['proid'];
    $type=$_GET['type'];
    $id=$_GET['id'];
    /* 实例化模型*/
    $m=D('exescene');
    $where=array("stagetesterid"=>$stagetesterid,"type"=>$type);
    $data=$m->where($where)->order("sn")->select();
    $this->assign('data',$data);
    //         echo $id;
    $arr=$m->find($id);

    $this->assign('arr',$arr);
    /* 实例化模型*/
    $m=M('exefunc');
    $where=array("exesceneid"=>$id);
    $exe=$m->where($where)->order('sn')->select();
    $this->assign('exe',$exe);
    $where=array("stagetesterid"=>$stagetesterid,"exesceneid"=>$id,"proid"=>$proid,"type"=>$type);
    $this->assign('w',$where);

    $this->display();
}


public function test(){
    /* 接收参数*/
    $stagetesterid=$_GET['stagetesterid'];
    $proid=$_GET['proid'];
    $type=$_GET['type'];
    $id=$_GET['id'];
    /* 实例化模型*/
    $m=D('exescene');
    $where=array("stagetesterid"=>$stagetesterid,"type"=>$type);
    $data=$m->where($where)->order("sn")->select();
    $this->assign('data',$data);
    /* 实例化模型*/
    $m=M('exefunc');
    $where=array("exesceneid"=>$id);
    $exe=$m->where($where)->select();
    $this->assign('exe',$exe);
    $where=array("stagetesterid"=>$stagetesterid,"exesceneid"=>$id,"proid"=>$proid,"type"=>$type);
    $this->assign('w',$where);

    $this->display();
}



public function pass(){

    $_GET['result']="通过";
    $_GET['moder']=$_SESSION['realname'];
    $db=D('exefunc');
    if ($db->save($_GET)){
        $this->success("修改成功！");
    }else{
        $this->error("修改失败！");
    }
}

public function update(){
    /* 实例化模型*/
    $db=D('exefunc');
    $data=$db->find($_POST['id']);
    $funcid=$data['funcid'];
    $_POST['moder']=$_SESSION['realname'];
    if ($db->save($_POST)){
        $arr['id']=$funcid;
        $arr['result']='失败';
        $arr['moder']=$_SESSION['realname'];
        $arr['updateTime']=date("Y-m-d H:i:s",time());
        $db=M('func');
        if ($db->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    }else{
        $this->error("失败！");
    }
}


public function order(){

    $db = D('exescene');
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



public function supdate(){
    /* 实例化模型*/
    $db=D('exescene');
    $_POST['moder']=$_SESSION['realname'];

    if ($db->save($_POST)){
        $this->success("成功！");
    }else{
        $this->error("失败！");
    }

}

}