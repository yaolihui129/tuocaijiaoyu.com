<?php
namespace Admin\Controller;
use Think\Controller;
class SettingController extends Controller {
    public function index(){
        $m=M('setting');
        $arr=$m->find(1);
        $this->assign('arr',$arr);
         
        $this->display();
    }
    
    public function himg(){
        $m=M('setting');
        $arr=$m->find(1);
        $this->assign('arr',$arr);
         
        $this->display();
        
    }
    
    public function imgh(){
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Public/Upload/';// 设置附件上传目录
        $upload->savePath  = '/Setting/home/'; // 设置附件上传目录
        
        $info  =   $upload->upload();
       // dump($info);
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            $_POST['hpath']=$info['himg']['savepath'];
            $_POST['himg']=$info['himg']['savename'];
            /* 实例化模型*/
            $db=D('setting');
            if ($db->save($_POST)){
                $this->success("上传成功！");
            }else{
                $this->error("上传失败！");
            }
        }               
    }
    
    public function aimg(){
        $m=M('setting');
        $arr=$m->find(1);
        $this->assign('arr',$arr);
         
        $this->display();
        
    }
    
    public function imga(){

        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Public/Upload/';// 设置附件上传目录
        $upload->savePath  = '/Setting/adress/'; // 设置附件上传目录
        
        $info  =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            $_POST['apath']=$info['aimg']['savepath'];
            $_POST['aimg']=$info['aimg']['savename'];
            /* 实例化模型*/
            $db=D('setting');
            if ($db->save($_POST)){
                $this->success("上传成功！");
            }else{
                $this->error("上传失败！");
            }
        }
        
    }
    
    public function update(){
        $db=D('setting');        
        $_POST['moder']=$_SESSION['realname'];              
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
}