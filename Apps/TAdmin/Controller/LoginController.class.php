<?php
namespace TAdmin\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function index(){
        layout(false); // 临时关闭当前模板的布局功能
        $this->display();
    }

    public function login(){
        $user = D('user')
        ->where(array('username'=>$_POST['username'],'state'=>'在职','password'=>md5($_POST['password'])))
        ->field("id,realname,username,usergp,phone,email")
        ->find();
        if ($user){
            session('[start]');
            $_SESSION=$user;
            $_SESSION['isLogin']=1;
            $_SESSION['testgp']=$user['usergp'];
           // $_SESSION['head']=$user['head'];
            $this->redirect('TAdmin/Program/index');
        }else{
            // p($user);
            $this->error('用户或密码错误，请重新登陆！', "index");
        }

    }

    public function logout(){
        $username =$_SESSION['username'];
        $_SESSION = array();

        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }
        // 销毁sesstion
        session_destroy();

        $this->success(" {$username},再见!", "index");

    }




}