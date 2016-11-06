<?php
namespace Admin\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function index(){
        layout(false); // 临时关闭当前模板的布局功能
        $this->display();
    }

    public function login(){
        $user = D('admin')
        ->where(array('username'=>$_POST['username'],'state'=>'在职','password'=>md5($_POST['password'])))
        ->field('username,realname,path,photo',false)
        ->find();
        if ($user){
            session('[start]');
            $_SESSION=$user;
            $_SESSION['isLogin']=1;
            $this->redirect('/Admin/Index/index');
        }else{

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

        $this->success("再见 {$username}, 退出成功!", "index");

    }
}