<?php
namespace TAdmin\Controller;

class ElementController extends CommonController{
    public function index(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $m=M('case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);

        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);

        $this->assign('w',$where);

	     $this->display();
    }

    public function indexr(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
//         dump($data);
        $m=M('case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);
        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();
    }


    public function indexf(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $m=M('case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);
        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();
    }

    public function indexs(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $sceneid=$_GET['sceneid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $m=M('case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);
        $where=array("proid"=>$proid,"funcid"=>$funcid,"sceneid"=>$sceneid);
        $this->assign('w',$where);

        $this->display();
    }

    public function add(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());
       // $this -> assign("typeset", formselect($element['typeset'],"typeset","typeset"));
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);


        $this->display();
    }

    public function addr(){
        /* 接收参数*/

        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());
        //$this -> assign("typeset", formselect($arr['typeset'],"typeset","typeset"));
        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();
    }

    public function addf(){
        /* 接收参数*/

        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());
        // $this -> assign("typeset", formselect($element['typeset'],"typeset","typeset"));
        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();
    }

    public function adds(){
        /* 接收参数*/

        $proid=$_GET['proid'];
        $sceneid=$_GET['sceneid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());
        $where=array("proid"=>$proid,"funcid"=>$funcid,"sceneid"=>$sceneid);
        $this->assign('w',$where);

        $this->display();
    }

    public function insert(){
        $m=D('element');
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
        /* 接收参数*/
        $funcid=$_GET['funcid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $element=$m->find($id);
        $this->assign('element',$element);
        $this -> assign("state", formselect($element['state']));
        $this -> assign("typeset", formselect($element['typeset'],"typeset","typeset"));
        



        $this->display();
    }

    public function modr(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $element=$m->find($id);
        $this->assign('element',$element);
        $this -> assign("state", formselect($element['state']));
        $this -> assign("typeset", formselect($element['typeset'],"typeset","typeset"));
        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();
    }

    public function modf(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $element=$m->find($id);
        $this->assign('element',$element);
        $this -> assign("state", formselect($element['state']));
        $this -> assign("typeset", formselect($element['typeset'],"typeset","typeset"));
        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();
    }


    public function mods(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $sceneid=$_GET['sceneid'];
        $funcid=$_GET['funcid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        $element=$m->find($id);
        $this->assign('element',$element);
        $this -> assign("state", formselect($element['state']));
        $this -> assign("typeset", formselect($element['typeset'],"typeset","typeset"));
        $where=array("proid"=>$proid,"funcid"=>$funcid,"sceneid"=>$sceneid);
        $this->assign('w',$where);

        $this->display();
    }

    public function update(){
        $db=D('element');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){

        $db = D('element');
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += $db->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("重新排序成功!");
        }else{
            $this->error("重新排序失败...");
        }
    }


    public function setdstate(){
        $db=D('case');
        if ($_GET['dstate']=='待维护'){
            $_GET['dstate']='已完成';
            $_GET['moder']=$_SESSION['realname'];
            if ($db->save($_GET)){
                 $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }

        }else{
            $_GET['dstate']='待维护';
            $_GET['moder']=$_SESSION['realname'];
            $_GET['updateTime']=date("Y-m-d H:i:s",time());
            if ($db->save($_GET)){
               $this->success("修改成功！");
            }else{
                  $this->error("修改失败！");
           }
        }




    }

    public function library(){
        /* 接收参数*/
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
        $proid=$_GET['proid'];
        /* 实例化模型*/
        $m=D('program');
        $where=array("testgp"=>$testgp);
        $pros=$m->where($where)->select();
       //$this->assign('data',$data);
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);
        

        $m=D("prosys");
        $where=array("proid"=>$proid);
        $elements=$m
        ->join('inner JOIN tp_system ON tp_system.id = tp_prosys.sysid')
        ->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->join(' inner JOIN tp_func ON tp_path.id = tp_func.pathid')
        ->join(' inner JOIN tp_element ON tp_func.id = tp_element.funcid')
        ->where($where)
        ->order("tp_system.sysno,tp_path.sn,tp_path.id,tp_func.sn,tp_func.id,tp_element.sn,tp_element.id")
        ->select();
        $this->assign('elements',$elements);
        $this->assign('w',$where);

        $this->display();
    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('element');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }


}