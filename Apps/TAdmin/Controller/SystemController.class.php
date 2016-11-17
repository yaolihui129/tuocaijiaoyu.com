<?php
namespace TAdmin\Controller;

class SystemController extends CommonController {

    public function index(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $_SESSION['proid']=null;
        /* 实例化模型*/
        $p=M('product');
        /*查询数据 */
        $arr=$p->select();
        /*输出数据 */
        $this->assign('data',$arr);


        /* 实例化模型*/
    	 $m=M('system');
    	 /*查询数据 */
    	 $where=array(prodid=>$prodid);
    	 $syses=$m->where($where)->order('sysno')->select();
    	 /*输出数据 */
	     $this->assign('syses',$syses);
	     $this->assign('w',$where);

	     $this->display();
    }



    public function insert(){
        /* 实例化模型*/
        $m=D('system');
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
            $this->error("添加失败");
        }

    }

    public function mod(){

        /* 实例化模型*/
        $m=M('system');
        $sys=$m->find($_GET['id']);
        $this->assign('sys',$sys);
        
        $where['prodid']=$sys['prodid'];
        $syses=$m->where($where)->select();        
        $this->assign('data',$syses);
        
        $where['proid']=$_GET['proid'];
        $this->assign('w',$where);
      
        $this -> assign("state", formselect($sys['state']));
        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('system');

        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功",U("Prosys/index?proid={$_POST['proid']}"));
        }else{
            $this->error("修改失败！");
        }

    }

    public function test(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $where=array("prodid"=>$prodid,"proid"=>$proid);
        $this->assign('w',$where);

        /* 实例化模型*/
        $m=M('system');
        /*查询数据 */
        if(empty($_GET['prodid'])){
            $s=M('program')->find($proid);
            $prodid=$s['prodid'];
            $where=array("prodid"=>$prodid);
        }
        $syses=$m->where($where)->select();
        $sys=$m->find($id);
        /*输出数据 */
        $this->assign('data',$syses);


        $this->assign('sys',$sys);
//dump($where);

        $this->display();
    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $where['sysid']=$id;
        $m=M('path');
        $arr=$m->where($where)->select();
        if($arr){
            $this->error('系统下有路径，不能删除');
        }else{
            $m=M('system');
            $count =$m->delete($id);
            if ($count>0) {
                $this->success('删除成功');
            }else{
                $this->error('删除失败');
            }
        }  
    }

}