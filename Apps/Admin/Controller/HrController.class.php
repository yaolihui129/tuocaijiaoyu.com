<?php
namespace Admin\Controller;
class HrController extends CommonController {
 public function index(){
        $m=D('hr');
        $arr=$m->select();
        $this->assign('data',$arr);

        $this->display();
    }

    public  function add(){

        $m=M('hr');
        $arr=$m->select();
        $this->assign('data',$arr);
        $this->assign("desc",PublicController::editor("desc",$arr['desc']));

        $this->display();
    }

    public function insert(){

        $m=D('hr');
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['date']=date("Y-m-d",time());
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
        $m=M('hr');
        $arr=$m->select();
        $this->assign('arr',$arr);

        $data=$m->find($id);
        $this->assign('data',$data);
        $this->assign("state",PublicController::stateSelect($data['state'],'state','state'));
        $this->assign("desc",PublicController::editor("desc",$data['desc']));
        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('hr');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    
    public function search(){
        /* 接收参数*/
        $search=$_POST['search'];
        $map['title|salary|state']=array('like','%'.$search.'%');
        /* 实例化模型*/
        $m=M('hr');
        $arr=$m->where($map)->order("updateTime desc")->select();
        $this->assign('data',$arr);
        $where=array("search"=>$search);
        $this->assign('w',$where);
         
        $this->display('index');
         
    }
    
    

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('hr');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
}