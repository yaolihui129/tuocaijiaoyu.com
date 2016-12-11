<?php
namespace Home\Controller;
use Think\Controller;
class AboutController extends Controller {
   public function index(){

            $m=D('setting');
            $data=$m->find(1);
            $_SESSION['web']=$data['web'];
            $_SESSION['adress']=$data['adress'];
            $_SESSION['desc']=$data['desc'];
            $_SESSION['phone']=$data['phone'];
            $_SESSION['qq']=$data['qq'];
            $_SESSION['weburl']=$data['url'];
            $_SESSION['ip']=get_client_ip();
            $_SESSION['browser']=GetBrowser();
            $_SESSION['os']=GetOs();
            $_SESSION['himg']=$data['hpath'].$data['himg'];
            $_SESSION['aimg']=$data['apath'].$data['aimg'];
  

    
       $this->display();
    }
           
    public function hr(){

            $m=D('setting');
            $data=$m->find(1);
            $_SESSION['web']=$data['web'];
            $_SESSION['desc']=$data['desc'];
            $_SESSION['phone']=$data['phone'];
            $_SESSION['qq']=$data['qq'];
            $_SESSION['weburl']=$data['url'];
            $_SESSION['ip']=get_client_ip();
            $_SESSION['browser']=GetBrowser();
            $_SESSION['os']=GetOs();
            $_SESSION['himg']=$data['hpath'].$data['himg'];
            $_SESSION['aimg']=$data['apath'].$data['aimg'];
            $_SESSION['init']=1;

       
        $m=M('hr');
        $where=array("state"=>"发布");
        $arr=$m->where($where)->select();
        $this->assign('data',$arr);
       
        $this->display();
    }
  
    
}