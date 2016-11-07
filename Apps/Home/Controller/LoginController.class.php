<?php
namespace Home\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function index(){
        layout(false); // 临时关闭当前模板的布局功能
        $this->display();
    }

    public function login(){
        $customer = D('customer')
        ->where(array('phone'=>$_POST['phone'],'password'=>md5($_POST['password'])))
        ->field('phone,realname,path,isteacher',false)
        ->find();
        if ($customer){
            session('[start]');
            $_SESSION=$customer;
            $_SESSION['isCLogin']=2;
            $this->redirect('/Home/Index/index');
        }else{

            $this->error('用户或密码错误，请重新登陆！', U('Home/Index/index'));
        }

    }

    public function logout(){
        $username =$_SESSION['realname'];
        $_SESSION = array();

        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }
        // 销毁sesstion
        session_destroy();

        $this->success("再见 {$realname}, 退出成功!", U('Home/Index/index'));

    }
}