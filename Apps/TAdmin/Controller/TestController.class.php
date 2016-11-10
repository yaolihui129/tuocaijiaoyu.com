<?php
namespace TAdmin\Controller;

class TestController extends CommonController{
   public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('func');
        $where=array("fproid"=>$proid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("tp_stage.proid"=>$proid,"tp_exefunc.funcid"=>$funcid);
        $m=M('stage');
        $arr=$m ->where($where)
        ->join('tp_stagetester ON tp_stage.id =tp_stagetester.stageid')
        ->join('tp_exescene ON tp_stagetester.id=tp_exescene.stagetesterid')
        ->join('tp_exefunc ON tp_exescene.id=tp_exefunc.exesceneid')
        ->order('tp_stage.sn,tp_stage.id')
        ->select();
        $this->assign('arr',$arr);

        $where=array("proid"=>$proid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();
    }


    public function pass(){

        /* 接收参数*/
        $arr['id']=$_GET['funcid'];
        $arr['result']='通过';
        $arr['moder']=$_SESSION['realname'];
        dump($arr);
        $db=D('func');
        if ($db->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }

    }

    public function reset(){

        /* 接收参数*/
        $arr['id']=$_GET['funcid'];
        $arr['result']='未测试';
        $arr['moder']=$_SESSION['realname'];
        dump($arr);
        $db=D('func');
        if ($db->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }

    }
}