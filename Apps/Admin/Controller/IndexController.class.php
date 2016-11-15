<?php
namespace Admin\Controller;

class IndexController extends CommonController {
    public function index(){

        $m=M('setting');
        $arr=$m->find(1);
        $this->assign('arr',$arr);
//         $m=M('dict');
//         $where = array("type"=>"menu_admin");
//         $menu=$m->field('v',false)->where($where)->order('k')->select();
//         $this->assign('menu',$menu);
//         dump($menu);
        $p=date("Y-m-d",time());
        $this->assign("p",$p);
        $m=D('date');
        $where['riqi']=array('egt',date("Y-m-d",time()));
        $arr=$m->where($where)->order('riqi,sn')->select();
        $this->assign('arr',$arr);
// dump($arr);
        
//         $where['tuoc_date.riqi']=$where['riqi'];
//         $data=$m->join('LEFT JOIN tuoc_plan ON tuoc_plan.dateid =tuoc_date.id')
//         ->where($where)
//         ->select();
//         $this->assign('data',$data);
//         //dump($data);


	     $this->display();
    }
    
    
    
    public function search(){
        /* 接收参数*/
         
        $map['riqi']=$_POST['riqi'];
    
        /* 实例化模型*/
        $m=D('dict');
        $where['type']="sktime";
        $where['state']="正常";
        $data=$m->field('k,v')->where($where)->select();
        $m=M('date');
        $arr=$m->where($map)->order('sn')->select();
        if(!$arr){
            foreach ($data as $d){
                $_POST['xingqi']=wk($_POST['riqi']);
                $_POST['sn']=$d['k'];
                $_POST['sktime']=$d['v'];
                if(!$m->create()){
                    $this->error($m->getError());
                }
                $m->add();
            }
            
        }
        $map['riqi']=array('egt',$_POST['riqi']);
        $arr=$m->where($map)->order('riqi,sn')->select();
        $this->assign('arr',$arr);
        $where=$_POST['riqi'];
        $this->assign('p',$where);
    
         
        $this->display('index');
    
    
    }

    public  function test(){

        // $_SESSION['ip']= get_client_ip();
        // $_SESSION['browser']=GetBrowser();
        // $_SESSION['os']=GetOs();
        // $_SESSION['realip']=Getip();
        // $_SESSION['localip']=get_onlineip();
//         $_SESSION['caddress']=Getaddress();
        
        $this->display();
    }
}