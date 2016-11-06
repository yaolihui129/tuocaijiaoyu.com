<?php
namespace Admin\Controller;

class IndexController extends CommonController {
    public function index(){

        $m=M('setting');
        $arr=$m->find(1);
        $this->assign('arr',$arr);
        $m=M('dict');
        $where = array("type"=>"menu_admin");
        $menu=$m->field('v',false)->where($where)->order('k')->select();
        $this->assign('menu',$menu);
        // dump($arr);


	     $this->display();
    }

    public  function test(){

        // $_SESSION['ip']= get_client_ip();
        // $_SESSION['browser']=GetBrowser();
        // $_SESSION['os']=GetOs();
        // $_SESSION['realip']=Getip();
        // $_SESSION['localip']=get_onlineip();
//         $_SESSION['caddress']=Getaddress();
        
        $this->display();
    }
}