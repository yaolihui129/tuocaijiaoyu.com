<?php
namespace Admin\Controller;
use Org\Util\Date;

class PlanController extends CommonController {
    public function index(){
        $arr['riqi']=date("Y-m-d",time());
        $this->assign("p",$arr);
        
        $this->display();
    }
    
    public function search(){
        /* 接收参数*/
       
        $map['riqi']=$_POST['riqi'];

        /* 实例化模型*/
        $m=M('date');
        $arr=$m->where($map)->select();
        if(!$arr){
            //执行插入操作
            $_POST['xingqi']=wk($_POST['riqi']);
            dump($_POST);
            if(!$m->create()){
                $this->error($m->getError());
            }
            $m->add();
            
        }
      
        $this->assign('data',$arr);
        $where=array("riqi"=>$_POST['riqi']);
        $this->assign('p',$where);
         
        $this->display('index');
        
        
    }
    
    public function add(){
        
        
        $this->display();
    }
    
    
    public function insert(){
               
//         $date1=$_POST['date'];
//         echo  wk($date1);

        
    }
}