<?php
namespace Admin\Controller;
use Think\Controller;
class CommonController extends Controller{
    Public function _initialize(){
        // 初始化的时候检查用户权限
        if(!isset($_SESSION['isLogin']) || $_SESSION['username']==''){
            $this->redirect('Admin/Login/index');

        }
    }







}
