<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){

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
            $_SESSION['himg']=$data['hpath'].'thumb_'.$data['himg'];
            $_SESSION['aimg']=$data['apath'].'thumb_'.$data['aimg'];
            
            $m=D('ad');
            $pic=$m->order('updateTime desc')->select();
            $this->assign('pic',$pic);
            
            
            $m=M('course');
            $where['coursetype']="学前少儿";
            $where['state']='发布';
            $data=$m->where($where)->order('updateTime desc')->limit(4)->select();
            $this->assign('datase',$data);
            
            $where['coursetype']="小学课程";
            $where['state']='发布';
            $data=$m->where($where)->order('updateTime desc')->limit(4)->select();
            $this->assign('dataxx',$data);
            
            $where['coursetype']="中学课程";
            $where['state']='发布';
            $data=$m->where($where)->order('updateTime desc')->limit(4)->select();
            $this->assign('datazx',$data);                     
            
            $where['coursetype']="兴趣拓展";
            $where['state']='发布';
            $data=$m->where($where)->order('updateTime desc')->limit(4)->select();
            $this->assign('dataxq',$data);
            
            $map['isteacher'] = !empty($_GET['isteacher']) ? $_GET['isteacher'] : 1;
            $map['state']="发布";
            $m=M('customer');
            $data=$m->where($map)->order('updateTime desc')->select();
            $this->assign('datasz',$data);
            
                     
          $this->display();
    }


   
}