<?php
namespace Home\Controller;
use Think\Controller;
class CommonController extends Controller{
    Public function _initialize(){
        // 初始化的时候检查用户权限
        if(!isset($_SESSION['isCLogin']) || $_SESSION['custid']==''){
            $this->redirect('Home/Login/index');

        }
    }
}
