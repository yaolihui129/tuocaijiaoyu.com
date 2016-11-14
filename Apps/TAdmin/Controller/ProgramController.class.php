<?php
namespace TAdmin\Controller;

class ProgramController extends CommonController {
    public function index(){
        /* 接收参数*/
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
        //dump($_SESSION);
        $_SESSION['testgp']=$testgp;
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
        $data= D("program")
        ->where(array("testgp"=>"$testgp"))
        ->order("end desc")
        ->select();

        $this->assign("data",$data);
        //dump($pros);
        //初始化添加字段
        $tol=D("program")->where(array("testgp"=>"$testgp"))->count();
        $d=date("ym",time());

        $arr['start']=date("Y-m-d",time());
        $arr['end']=date("Y-m-d",time()+7*24*3600);
        $arr['prono']="$testgp$d".".".($tol+1);
        $this->assign("p",$arr);
        $this -> assign("prod", prodselect());
        $this -> assign("selectptype", formselect("简要","ptype","ptype"));
        $this -> assign("selectgp", formselect($testgp,"testgp","testgp"));
        $this -> assign("select", formselect("进行中","prost","prost"));
        $this -> assign("selectgpuer", selectgpuer($_SESSION['realname'],$_SESSION['testgp'],"manager"));
        $this -> assign("reType", formselect($arr['reType'],"reType","reType"));
        $this -> assign("reLevel", formselect("一般需求","reLevel","reLevel"));

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
        $data= $m
        ->where(array("testgp"=>"$testgp"))
        ->order("end desc")
        ->select();
        $this->assign("data",$data);

        $arr=$m->find($id);
        $this->assign('p',$arr);
        
        $this -> assign("selectptype", formselect($arr['ptype'],"ptype","ptype"));
        $this -> assign("selectgp", formselect($arr['testgp'],"testgp","testgp"));
        $this -> assign("select", formselect($arr['prost'],"prost","prost"));
        $this -> assign("selectgpuer", selectgpuer($arr['manager'],$_SESSION['testgp'],"manager"));
        $this -> assign("relevel", formselect($arr['relevel'],"relevel","relevel"));
        $this -> assign("retype", formselect($arr['retype'],"retype","retype"));


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
        $where['proid']=$id;
        $m=M('stage');
        $arr=$m->where($where)->select();
        if($arr){
            $this->error('项目下有里程碑，不能删除');
        }else{
            $m=M('prosys');
            $data=$m->where($where)->select();
            if ($data){
                $this->error('项目下有系统，不能删除');
            }else{
                $m=M('program');
                
                $count =$m->delete($id);
                if ($count>0) {
                    $this->success('成功');
                }else{
                    $this->error('失败');
                }
            }
        }
        
        
        
    }

}