<?php
namespace TAdmin\Controller;

class DatacaseController extends CommonController{
    public function mod(){

        /* 接收参数*/
        $id=$_GET['id'];
        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);

        $m=M('case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);

        $arr=$m->find($id);
        $this->assign('arr',$arr);
        $this -> assign("dstate", formselect($arr['dstate'],"dstate","dstate"));

        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();

    }

    public function modr(){

        /* 接收参数*/
        $id=$_GET['id'];
        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);

        $m=M('case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);

        $arr=$m->find($id);
        $this->assign('arr',$arr);
        $this -> assign("dstate", formselect($arr['dstate'],"dstate","dstate"));

        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();

    }


    public function mode(){

        /* 接收参数*/
        $id=$_GET['id'];
        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);

        $m=M('case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);

        $arr=$m->find($id);
        $this->assign('arr',$arr);
        $this -> assign("dstate", formselect($arr['dstate'],"dstate","dstate"));

        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();

    }

    public function modf(){

        /* 接收参数*/
        $id=$_GET['id'];
        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);

        $m=M('case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);

        $arr=$m->find($id);
        $this->assign('arr',$arr);
        $this -> assign("dstate", formselect($arr['dstate'],"dstate","dstate"));

        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();

    }

    public function modp(){

        /* 接收参数*/
        $id=$_GET['id'];
        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);

        $m=M('case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);

        $arr=$m->find($id);
        $this->assign('arr',$arr);
        $this -> assign("dstate", formselect($arr['dstate'],"dstate","dstate"));

        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();

    }

    public function mods(){

        /* 接收参数*/
        $id=$_GET['id'];
        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);

        $m=M('case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);

        $arr=$m->find($id);
        $this->assign('arr',$arr);
        $this -> assign("dstate", formselect($arr['dstate'],"dstate","dstate"));

        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();

    }


    public function update(){
        $db=D('case');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }
}