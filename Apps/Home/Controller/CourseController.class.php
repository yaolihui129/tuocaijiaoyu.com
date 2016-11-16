<?php
namespace Home\Controller;
use Think\Controller;
class CourseController extends Controller {

	public function index(){

        $where =  array("type"=>"coursetype","state"=>"正常");
		$m=M('dict');
        $arr=$m->where($where)->field('id,k,v',false)->order('k')->select();
        $this->assign('arr',$arr);

        $where['coursetype'] = !empty($_GET['coursetype']) ? $_GET['coursetype'] : "学前少儿";
        $where['state']="发布";
		$m=M('course');
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $this->assign('w',$where);

        
	     $this->display();
    }

    public function mycourse(){
        
        if ($_SESSION['isteacher']==1){
            $where['tuoc_techclass.teacherid']=$_SESSION['id'];
            //查询老师的课程表
            $m=D('techclass');
            $arr=$m->where($where)
            ->join('tuoc_plan ON tuoc_plan.techclassid=tuoc_techclass.id ')
            ->order('tuoc_plan.skdate,tuoc_plan.sktime')
            ->select();
            
            $this->assign('arr',$arr);
        }else {
            //查询学生的课程表
            $m=D('studentcla');
            $where['tuoc_studentcla.studentid']=$_SESSION['id'];
            $start=date("Y-m-d",time()-7*24*3600);
            $end=date("Y-m-d",time()+7*24*3600);
            $where['tuoc_plan.skdate']  = array('between','$start,$end');
            $arr=$m->where($where)
            ->join('tuoc_techclass ON tuoc_techclass.id=tuoc_studentcla.techclassid')
            ->join('tuoc_plan ON tuoc_plan.techclassid=tuoc_techclass.id')
            ->order('tuoc_plan.skdate,tuoc_plan.sktime')
            ->select();
            
            $this->assign('arr',$arr);
        }
        
        
        

        $this->display();

    }

  
  



}