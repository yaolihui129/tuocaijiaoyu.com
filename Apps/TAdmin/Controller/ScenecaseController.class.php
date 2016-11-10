<?php
namespace TAdmin\Controller;

class ScenecaseController extends CommonController {
public function index(){
        /* 接收参数*/
        $funcid=$_GET['funcid'];
        $sfuncid=$_GET['sfuncid'];
        $proid=$_GET['proid'];
        $sceneid=$_GET['sceneid'];
        /* 实例化模型*/
        $m=D('system');
        $where=array("tp_scenefunc.sceneid"=>$sceneid);
        $data=$m
        ->join("inner JOIN tp_path ON tp_system.id = tp_path.sysid")
        ->join("inner JOIN tp_func ON tp_path.id = tp_func.pathid")
        ->join("inner JOIN tp_scenefunc ON tp_func.id = tp_scenefunc.funcid")
        ->where($where)->order('tp_scenefunc.sn')->select();
        $this->assign("data",$data);
        $m=D('case');
        $where=array("funcid"=>$funcid);
        $arr=$m->where($where)->select();
        $this->assign("arr",$arr);
// dump($arr);
         $where=array("proid"=>$proid,"funcid"=>$funcid,"sceneid"=>$sceneid,"sfuncid"=>$sfuncid);
        $this->assign('w',$where);

        $this->display();
    }


    public function add(){
        /* 接收参数*/

        $proid=$_GET['proid'];
        $sceneid=$_GET['sceneid'];
        $sfuncid=$_GET['sfuncid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('case');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
//         dump($data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $where=array("proid"=>$proid,"funcid"=>$funcid,"sceneid"=>$sceneid,"sfuncid"=>$sfuncid);
        $this->assign('w',$where);

        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));
        $this->assign("caozuo",PublicController::editor("steps"));

        $this->display();
    }


    public function insert(){
        /* 实例化模型*/
        $m=D('case');
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
        $proid=$_GET['proid'];
        $sceneid=$_GET['sceneid'];
        $sfuncid=$_GET['sfuncid'];
        $funcid=$_GET['funcid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('case');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("proid"=>$proid,"funcid"=>$funcid,"sceneid"=>$sceneid,"sfuncid"=>$sfuncid);
        $this->assign('w',$where);
        $case=$m->find($id);
        $this->assign("case",$case);
        $this -> assign("state", formselect($case['state']));
        $this -> assign("fproid", proselect($case['fproid'],"fproid"));
        $this->assign("caozuo",PublicController::editor("steps",$case['steps']));

        $this->display();
    }


    public function update(){
        /* 实例化模型*/
        $db=D('case');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){

        $db = D('case');
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



    public function bind(){
        /* 接收参数*/
        $sfuncid=$_GET['sfuncid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=D('case');
        $data=$m->find($id);
        $arr['id']=$sfuncid;
        $arr['caseid']=$id;
        $arr['casestate']='已绑定';
        $arr['casemain']=$data['main'];
        $arr['caseexpected']=$data['expected'];
        $arr['num1']=$data['num1'];
        $arr['num2']=$data['num2'];
        $arr['num3']=$data['num3'];
        $arr['num4']=$data['num4'];
        $arr['num5']=$data['num5'];
        $arr['num6']=$data['num6'];
        $arr['num7']=$data['num7'];
        $arr['num8']=$data['num8'];
        $arr['num9']=$data['num9'];
        $arr['num10']=$data['num10'];
        $arr['num11']=$data['num11'];
        $arr['num12']=$data['num12'];
        $arr['num13']=$data['num13'];
        $arr['num14']=$data['num14'];
        $arr['num15']=$data['num15'];
        $arr['num16']=$data['num16'];
        $arr['num17']=$data['num17'];
        $arr['num18']=$data['num18'];
        $arr['num19']=$data['num19'];
        $arr['num20']=$data['num20'];
        $arr['moder']=$_SESSION['realname'];
        $arr['updateTime']=date("Y-m-d H:i:s",time());
//         dump($arr);
        $m=D('scenefunc');
        if ($m->save($arr)){
            $this->success("绑定成功！");
        }else{
            $this->error("绑定失败！");
        }
    }
}