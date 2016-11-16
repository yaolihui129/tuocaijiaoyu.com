<?php
namespace Home\Controller;
use Think\Controller;
class CustomerController extends Controller {

	public function index(){

        $where['isteacher'] = !empty($_GET['isteacher']) ? $_GET['isteacher'] : 1;
        $where['state']="发布";
		$m=M('customer');
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $this->assign('w',$where);       
	    $this->display();
    }

   
 public function setpass(){
        /* 接收参数*/
        $id =  $_SESSION['id'];
        /* 实例化模型*/
        $m=M('customer');
        
        $user=$m->find($id);
        $this->assign('user',$user);
        // echo $id;
        // dump($user);

        $this->display();
    }

 public function set(){
       /* 接收参数*/
       $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
       $pass1= $_POST['pass1'];
       $pass2= $_POST['pass2'];
       $pass3= $_POST['pass3'];
       /* 实例化模型*/
        $m=M('customer');
        
        $user=$m->find($id);
        if (md5($pass1)==$user['password']) {
            if ($pass2==$pass3) {
                $arr['id']=$id;
                $arr['password']=md5($pass2);
                $arr['moder']=$_SESSION['realname'];
                if ($m->save($arr)){
                        $this->success("密码修改成功！",U('Home/Index/index'));
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


public function personal(){
       /* 接收参数*/
        $id =  $_SESSION['id'];
        /* 实例化模型*/
        $m=M('customer');
        
        $user=$m->find($id);
        $this->assign('user',$user);
        // echo $id;
        // dump($user);

        $this->display();
    }


}
 


