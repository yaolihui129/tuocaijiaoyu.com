<?php
namespace Admin\Controller;
class UserController extends CommonController {
    public function index(){

        $m=M('admin');

        $arr=$m->select();
        $this->assign('data',$arr);
        $this->display();
    }

    public  function add(){

        $m=M('admin');
        $where=array("state"=>"在职");
        $arr=$m->where($where)->select();
        $this->assign('data',$arr);
        $this->assign("state", PublicController::stateSelect($user['state'],"state","adminst"));

        $this->display();
    }

    public function insert(){

        $m=D('admin');
        $_POST['password']=md5("123456");
        $_POST['state']="在职";
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("成功");
        }else{
            $this->error('失败');
        }
    }

    public function mod(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('admin');
         $where=array("state"=>"在职");
        $arr=$m->where($where)->select();
        $this->assign('data',$arr);

        $user=$m->find($id);
        $this->assign('user',$user);
        $this->assign("state", PublicController::stateSelect($user['state'],"state","adminst"));

        $this->display();
    }

    
    public function search(){       
        /* 接收参数*/       
        $search=$_POST['search'];               
        /* 实例化模型*/
        $m=M('admin');    
        $map['phone|username|realname']=array('like','%'.$search.'%');    
        $arr=$m->where($map)->select();
        $this->assign('data',$arr);       
        $where=array("search"=>$search);
        $this->assign('w',$where);        
         
        $this->display('index');
         
    }
   

    public function photo(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('admin');
        $where=array("state"=>"在职");
        $arr=$m->where($where)->select();
        $this->assign('data',$arr);

        $user=$m->find($id);
        $this->assign('user',$user);

        $this->display();
    }


    public function image(){     
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Public/Upload/';// 设置附件上传目录
        $upload->savePath  = '/Admin/user/image/'; // 设置附件上传目录
        // 上传文件
        $info  =   $upload->upload();
        
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
           $_POST['path']=$info['photo']['savepath'];
           $_POST['photo']=$info['photo']['savename'];
           /* 实例化模型*/
           $db=D('admin');
              if ($db->save($_POST)){
                  $this->success("修改成功！");
              }else{
                  $this->error("修改失败！");
              }
        }      
    }

    public function update(){
        /* 实例化模型*/
        $db=D('admin');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }

 public function setpass(){
        /* 接收参数*/
        $id =  $_SESSION['id'];
        /* 实例化模型*/
        $m=M('admin');
        
        $user=$m->find($id);
        $this->assign('user',$user);

        $this->display();
    }

 public function set(){
       /* 接收参数*/
       $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
       $pass1= $_POST['pass1'];
       $pass2= $_POST['pass2'];
       $pass3= $_POST['pass3'];
       /* 实例化模型*/
        $m=M('admin');
        
        $user=$m->find($id);
        if (md5($pass1)==$user['password']) {
            if ($pass2==$pass3) {
                $arr['id']=$id;
                $arr['password']=md5($pass2);
                $arr['moder']=$_SESSION['realname'];
                if ($m->save($arr)){
                        $this->success("密码修改成功！");
                }else{
                        $this->error("密码修改失败！");
                }

            }else{
                $this->error('新密码和确认面不一致');
            }
        }else{
            $this->error('原密码错误');
        }


 }


    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
   	    $m=M('admin');

   	    $count =$m->delete($id);
   	    if ($count>0) {
   	        $this->success('删除成功');
   	    }else{
   	        $this->error('删除失败');
   	    }
    }
}