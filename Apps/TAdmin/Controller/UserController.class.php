<?php
namespace TAdmin\Controller;

class UserController extends CommonController {
   public function index(){

    	 $m=M('user');
    	 $arr=$m->select();
	     $this->assign('data',$arr);
	     $this->display();
    }

    public  function add(){
        $testgp=$_SESSION['testgp'];
        $m=M('user');
        $arr=$m->select();
        $this->assign('data',$arr);
        $this -> assign("usergp", formselect($testgp,"usergp","testgp"));
        $this -> assign("position", formselect("测试工程师","position","position"));

        $this->display();


    }

    public function insert(){
       // var_dump($_POST);
        $m=D('user');
        $_POST['password']=md5("123456");
        $_POST['state']="在职";
        $_POST['email']=$_POST['username']."@yiche.com";
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }

        import('ORG.Net.UploadFile');
        $upload = new UploadFile();// 实例化上传类
        $upload->maxSize  = 3145728 ;// 设置附件上传大小
        $upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->savePath =  './Public/Upload/';// 设置附件上传目录
        $upload->thumb = true;//开启缩略图
        $upload->thumbPrefix = 'tb'; //设置前缀
//         $upload->thumbPath =  './Upload/tb/';// 设置缩略图上传目录

        if(!$upload->upload()) {// 上传错误提示错误信息
            $this->error($upload->getErrorMsg());
        }else{// 上传成功 获取上传文件信息
            $info =  $upload->getUploadFileInfo();
        }
        $m->filename=$info[0]['savename'];


        $lastId=$m->add();
        if($lastId){
           $this->success("添加成功");
        }else{
            $this->error('用户注册失败');
        }


    }

    public function mod(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('user');
        $arr=$m->select();
        $this->assign('data',$arr);

        $user=$m->find($id);
        $this->assign('user',$user);
        $this -> assign("usergp", formselect($user['usergp'],"usergp","testgp"));
        $this -> assign("position", formselect($user['position'],"position","position"));
        $this->display();
    }




    public function update(){
        /* 实例化模型*/
        $db=D('user');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }



    public function photo(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('user');
        $arr=$m->select();
        $this->assign('data',$arr);

        $user=$m->find($id);
        $this->assign('user',$user);

        $this->display();
    }

    public function upload(){
        /* 实例化模型*/
        $db=D('user');
        $_POST['moder']=$_SESSION['realname'];
        import('ORG.Net.UploadFile');
        $upload = new UploadFile();// 实例化上传类
        $upload->savePath =  './Public/Upload/';// 设置附件上传目录
        if(!$upload->upload()) {// 上传错误提示错误信息
            $this->error($upload->getErrorMsg());
        }else{// 上传成功 获取上传文件信息
            $info =  $upload->getUploadFileInfo();
        }
        $_POST['filename']=$info[0]['savename'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }

    public function setpw(){
        /* 实例化模型*/
        $m=D('user');
        $arr=$m->find($_GET['id']);
        $this->assign('user',$arr);
        $this->display();
    }

    public function set(){
        /* 实例化模型*/
        $db=M('user');
        $_POST['password']=md5(123456);
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("密码已重置为：123456！");
        }else{
            $this->error("重置失败！");
        }
    }
    public function setpass(){
        /* 接收参数*/
        $id =  $_SESSION['id'];
        /* 实例化模型*/
        $m=M('user');
    
        $user=$m->find($id);
        $this->assign('user',$user);
    
        $this->display();
    }
    
    public function setp(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $pass1= $_POST['pass1'];
        $pass2= $_POST['pass2'];
        $pass3= $_POST['pass3'];
        /* 实例化模型*/
        $m=M('user');
    
        $user=$m->find($id);
        if (md5($pass1)==$user['password']) {
            if ($pass2==$pass3) {
                $arr['id']=$id;
                $arr['password']=md5($pass2);
                $arr['moder']=$_SESSION['realname'];
                if ($m->save($arr)){
                    $this->success("密码修改成功！",U('TAdmin/Program/index'));
                }else{
                    $this->error("密码修改失败！");
                }
    
            }else{
                $this->error('新密码和确认密码不一致');
            }
        }else{
            $this->error('原密码错误');
        }
    
    
    }
    
    
    
    
    
    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
   	    $m=M('user');

   	    $count =$m->delete($id);
   	    if ($count>0) {
   		    $this->success('删除成功');
   	    }else{
   		    $this->error('删除失败');
     	}
   }

}