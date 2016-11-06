<?php
namespace Admin\Controller;
class CourseController extends CommonController {

	public function index(){

        $where =  array("type"=>"coursetype","state"=>"正常");
		$m=M('dict');
        $arr=$m->where($where)->field('id,k,v',false)->order('k')->select();
        $this->assign('arr',$arr);

        $where = !empty($_GET['coursetype']) ? array("coursetype"=>$_GET['coursetype']) : array("coursetype"=>"学前少儿");
		$m=M('course');
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $this->assign('w',$where);

        
	     $this->display();
    }

    public function add(){

    	$where = !empty($_GET['coursetype']) ? array("coursetype"=>$_GET['coursetype']) : array("coursetype"=>"少儿");
		$m=M('course');
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $this->assign('w',$where);
        $this->assign("state", PublicController::stateSelect("正常","state","state"));


       
        $this->display();
    }

    public function insert(){
        /* 实例化模型*/
        $m=D('course');      
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=time();
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }

    }

    public function mod(){

    	$where = !empty($_GET['coursetype']) ? array("coursetype"=>$_GET['coursetype']) : array("coursetype"=>"少儿");
		$m=M('course');
        $data=$m->where($where)->select();
        $this->assign('data',$data);

        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);
        $this->assign('w',$where);
        $this->assign("state", PublicController::stateSelect($arr['state'],"state","state"));
       

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('course');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('course');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }




}