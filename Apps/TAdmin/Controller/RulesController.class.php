<?php
namespace TAdmin\Controller;

class RulesController extends CommonController {
    public function index(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('func');
        $where=array("pathid"=>$pathid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $rules=$m->where($where)->select();
        $this->assign('rules',$rules);
        $where=array("prodid"=>$prodid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);


        $this->display();
    }

    public function indexp(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('func');
        $where=array("pathid"=>$pathid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $rules=$m->where($where)->select();
        $this->assign('rules',$rules);
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);


        $this->display();
    }

    public function indexf(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('func');
        $where=array("pathid"=>$pathid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $rules=$m->where($where)->select();
        $this->assign('rules',$rules);
        $where=array("proid"=>$proid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);


        $this->display();
    }


    public function indexr(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('func');
        $where=array("pathid"=>$pathid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $rules=$m->where($where)->select();
        $this->assign('rules',$rules);
        $where=array("proid"=>$proid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);


        $this->display();
    }

    public function indexs(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $sceneid=$_GET['sceneid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('func');
        $where=array("pathid"=>$pathid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $rules=$m->where($where)->select();
        $this->assign('rules',$rules);
        $where=array("proid"=>$proid,"pathid"=>$pathid,"funcid"=>$funcid,"sceneid"=>$sceneid);
        $this->assign('w',$where);


        $this->display();
    }

    public function indexe(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $rules=$m->where($where)->select();
        $this->assign('rules',$rules);
        $where=array("proid"=>$proid,"funcid"=>$funcid);
        $this->assign('w',$where);


        $this->display();
    }

    public function add(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $sysid=$_GET['sysid'];
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));
        $this->assign("beizhu",PublicController::editor("remark"));

        $this->display();
    }

    public function addp(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));
        $this->assign("beizhu",PublicController::editor("remark"));

        $this->display();
    }

    public function addf(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("proid"=>$proid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));
        $this->assign("beizhu",PublicController::editor("remark"));

        $this->display();
    }

    public function addr(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("proid"=>$proid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));
        $this->assign("beizhu",PublicController::editor("remark"));

        $this->display();
    }

    public function adds(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $sceneid=$_GET['sceneid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("proid"=>$proid,"pathid"=>$pathid,"funcid"=>$funcid,"sceneid"=>$sceneid);
        $this->assign('w',$where);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));
        $this->assign("beizhu",PublicController::editor("remark"));

        $this->display();
    }

    public function insert(){
        $m=D('rules');
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
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);
        $rule=$m->find($id);
        $this->assign("rule",$rule);
        $this -> assign("state", formselect($rule['state']));
        $this -> assign("fproid", proselect($rule['fproid'],"fproid"));
        $this->assign("beizhu",PublicController::editor("remark",$rule['remark']));;

        $this->display();
    }

    public function modp(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);
        $rule=$m->find($id);
        $this->assign("rule",$rule);
        $this -> assign("state", formselect($rule['state']));
        $this -> assign("fproid", proselect($rule['fproid'],"fproid"));
        $this->assign("beizhu",PublicController::editor("remark",$rule['remark']));;

        $this->display();
    }

    public function modf(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("proid"=>$proid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);
        $rule=$m->find($id);
        $this->assign("rule",$rule);
        $this -> assign("state", formselect($rule['state']));
        $this -> assign("fproid", proselect($rule['fproid'],"fproid"));
        $this->assign("beizhu",PublicController::editor("remark",$rule['remark']));;

        $this->display();
    }

    public function modr(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("proid"=>$proid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);
        $rule=$m->find($id);
        $this->assign("rule",$rule);
        $this -> assign("state", formselect($rule['state']));
        $this -> assign("fproid", proselect($rule['fproid'],"fproid"));
        $this->assign("beizhu",PublicController::editor("remark",$rule['remark']));;

        $this->display();
    }


    public function mods(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $sceneid=$_GET['sceneid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("proid"=>$proid,"pathid"=>$pathid,"funcid"=>$funcid,"sceneid"=>$sceneid);
        $this->assign('w',$where);
        $rule=$m->find($id);
        $this->assign("rule",$rule);
        $this -> assign("state", formselect($rule['state']));
        $this -> assign("fproid", proselect($rule['fproid'],"fproid"));
        $this->assign("beizhu",PublicController::editor("remark",$rule['remark']));;

        $this->display();
    }
    public function update(){
        $db=D('rules');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){

        $db = D('rules');
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


    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('rules');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

}