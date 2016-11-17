<?php
namespace TAdmin\Controller;

class UserController extends CommonController {
   public function index(){
         $testgp=$_SESSION['testgp'];
    	 $m=M('user');
    	 $where['state']="在职";
    	 $arr=$m->where($where)->select();
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
        $_POST['path']="/";
        $_POST['img']="head.png";
        $_POST['email']=$_POST['username']."@yiche.com";
        $_POST['team']="惠买车-产品研发中心-质量管理部";
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
       
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
        $this->assign("state", PublicController::stateSelect($user['state'],"state","adminst"));
        
        $this -> assign("position", formselect($user['position'],"position","position"));
        $this->display();
    }




    public function update(){
        /* 实例化模型*/
        $db=D('user');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功",U('User/index'));
        }else{
            $this->error("修改失败！");
        }
    }



    public function photo(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('user');      
        $user=$m->find($id);
        $this->assign('user',$user);

        $this->display();
    }

    public function upload(){
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Public/Upload/';// 设置附件上传目录
        $upload->savePath  = '/Test/user/'; // 设置附件上传目录
    
        $info  =   $upload->upload();
        dump($info);
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            $_POST['path']=$info['img']['savepath'];
            $_POST['img']=$info['img']['savename'];
            /* 实例化模型*/
            $db=D('user');
            if ($db->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Public/Upload/'.$info['img']['savepath'].$info['img']['savename']);
                $image->thumb(245, 160,\Think\Image::IMAGE_THUMB_CENTER)->save('./Public/Upload/'.$info['img']['savepath'].'/thumb_'.$info['img']['savename']);
                $this->success("上传成功！");
            }else{
                $this->error("上传失败！");
            }
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