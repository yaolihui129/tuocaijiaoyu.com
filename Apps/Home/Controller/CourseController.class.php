<?php
namespace Home\Controller;
use Think\Controller;
class CourseController extends Controller {

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

    public function mycourse(){

        $this->display();

    }

  
  



}