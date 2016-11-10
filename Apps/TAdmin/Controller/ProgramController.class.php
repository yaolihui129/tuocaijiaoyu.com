<?php
namespace TAdmin\Controller;

class ProgramController extends CommonController {
    public function index(){
        /* 接收参数*/
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :"OP";
        $m=M('dict');
        $where=array("type"=>"testgp","state"=>"正常");
        $data=$m->where($where)->select();
        $this->assign('data',$data);

        /* 实例化模型*/
        $m=M('program');
        $where=array("testgp"=>$testgp);
        $arr=$m->where($where)->order("end desc")->select();
        $this->assign('arr',$arr);
 
        $this->assign('w',$where);
	    
	     $this->display();
    }

    



    public function add(){
        /* 接收参数*/
       $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
        /* 实例化模型*/
        $pros= D("program")
        ->where(array("testgp"=>"$testgp"))
        ->order("end desc")
        ->select();

        $this->assign("pros",$pros);
        //dump($pros);
        //初始化添加字段
        $tol=D("program")->where(array("testgp"=>"$testgp"))->count();
        $d=date("ym",time());
        $manager= $_SESSION['realname'];
        $start=date("Y-m-d",time());
        $end=date("Y-m-d",time()+7*24*3600);
        $arr=array("prono"=>"$testgp$d".".".($tol+1),"manager"=>"$manager","prodId"=>"1","state"=>"进行中","type"=>"简要","testgp"=>"$testgp");
        $this->assign("p",$arr);
        $this -> assign("prod", prodselect());
        $this -> assign("selectptype", formselect("简要","ptype","ptype"));
        $this -> assign("selectgp", formselect($testgp,"testgp","testgp"));
        $this -> assign("select", formselect("进行中","prost","prost"));
        $this -> assign("selectgpuer", selectgpuer($_SESSION['realname'],$_SESSION['testgp'],"manager"));
        $this->assign("startDate",PublicController::date("start",$start));
        $this->assign("endDate",PublicController::date("end",$end));
        $this -> assign("reType", formselect($arr['reType'],"reType","reType"));
        $this -> assign("reLevel", formselect($arr['reLevel'],"reLevel","reLevel"));
        $this->assign("jianjie",PublicController::editor("profile",$arr['profile']));

        $this->display();
    }

    public function insert(){
        /* 实例化模型*/
        $m=D('program');
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['expOnline']=$_POST['end'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
        if ($m->create()){
            $count=$m->add($_POST);
            if ($count){
                $this->success("添加成功");
            }else{
                $this->error("添加失败");
            }
        }else{
            $this->error($m->getError());
        }
    }

    public function mod(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
       /* 实例化模型*/
        $m=M(program);
        $pros= $m
        ->where(array("testgp"=>"$testgp"))
        ->order("end desc")
        ->select();
        $this->assign("pros",$pros);

        $arr=$m->find($id);
        $this->assign('p',$arr);
        $this -> assign("prod", prodselect($arr['prodid']));
        $this -> assign("selectptype", formselect($arr['ptype'],"ptype","ptype"));
        $this -> assign("selectgp", formselect($arr['testgp'],"testgp","testgp"));
        $this -> assign("select", formselect($arr['prost'],"prost","prost"));
        $this -> assign("selectgpuer", selectgpuer($arr['manager'],$_SESSION['testgp'],"manager"));
        $this->assign("startDate",PublicController::date("start",$arr['start']));
        $this->assign("endDate",PublicController::date("end",$arr['end']));

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('program');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
   }

   public function search(){
   
       /* 接收参数*/
       $testgp=$_POST['testgp'];
       $search=$_POST['search'];
       $m=M('dict');
       $where=array("type"=>"testgp","state"=>"正常");
       $data=$m->where($where)->select();
       $this->assign('data',$data);
   
       /* 实例化模型*/
       $m=M('program');
        
       $map['manager|prost|program|prono']=array('like','%'.$search.'%');
        
       $arr=$m->where($map)->order("end desc")->select();
       $this->assign('arr',$arr);
   
       $where=array("search"=>$search);
       $this->assign('w',$where);
   
   
       $this->display('index');
   
   
   
   
   }
    

    public function modprost(){
        /* 实例化模型*/
        $db=D('program');
        $prost=$_GET['prost'];

        if ($prost=="未开始"){
            $_GET['prost']="进行中";
            if ($db->save($_GET)){
                $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }
        }elseif ($prost=="进行中"){
            $_GET['prost']="已完成";
            if ($db->save($_GET)){
                $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }
        }elseif ($prost=="已完成"){
            $_GET['prost']="已上线";
            if ($db->save($_GET)){
                $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }

        }else{
            //$this->redirect('');
           $this->success(' ');
        }

    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('program');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

}