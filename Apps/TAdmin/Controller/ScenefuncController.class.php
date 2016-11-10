<?php
namespace TAdmin\Controller;

class ScenefuncController extends CommonController {
    public function index(){
         /* 接收参数*/
        $proid=$_GET['proid'];
        $sceneid=$_GET['sceneid'];
       /* 实例化模型*/
        $m = D("scene");
        $where=array("proid"=>"$proid");
        $data=$m->where($where)->select();
        $this->assign("data",$data);

        $m=D('system');
        $where=array("tp_scenefunc.sceneid"=>$sceneid);
        $sfunc=$m
        ->join("inner JOIN tp_path ON tp_system.id = tp_path.sysid")
        ->join("inner JOIN tp_func ON tp_path.id = tp_func.pathid")
        ->join("inner JOIN tp_scenefunc ON tp_func.id = tp_scenefunc.funcid")
        ->where($where)->order('tp_scenefunc.sn')->select();
        $this->assign("sfunc",$sfunc);
//        dump($sfunc);
        $where=array("proid"=>"$proid","sceneid"=>$sceneid);
        $this->assign("w",$where);

	     $this->display();
    }


/*
 * 功能库加入场景
 */
    public function addscene(){
        /* 接收参数*/
        $sceneid=$_GET['sceneid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=D('system');
        $where=array("tp_func.id"=>$funcid);
        $arr=$m->join("tp_path ON tp_system.id = tp_path.sysid ")
        ->join('tp_func ON tp_path.id =tp_func.pathid')
        ->field("sysno,system,path,func")
        ->where($where)
        ->find();
        $arr['path']=$arr['system']."-".$arr['path'];
        $arr['funcid']=$funcid;
        $arr['adder']=$_SESSION['realname'];
        $arr['sceneid']=$sceneid;
        $m=D('scenefunc');
        $where=array("sceneid"=>$sceneid);
        $arr['sn']=$m->where($where)->count()+1;
//         dump($arr);
        if(!$m->create($arr)){
            $this->error($m->getError());
        }
        $lastId=$m->add($arr);
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }


    }

    public function addAllhc(){
        /* 接收参数*/
        $sceneid=$_GET['sceneid'];
        $m=D('scenefunc');
        $where=array("sceneid"=>$sceneid);
        $arr=$m->where($where)->field("funcid,sn,sysno,path,func,remarks,casestate,casemain,caseexpected,
            num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20")->select();
        $m=D('hcfunc');
        foreach ($arr as $a){
            $a['adder']= $_SESSION['realname'];
            $a['createTime']=date("Y-m-d H:i:s",time());
            if(!$m->create($a)){
                  $this->error($m->getError());
            }
           $lastId=$m->add($a);

        }

        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }


    }


    public function addhc(){
        /* 接收参数*/
        $id=$_GET['id'];
        /* 实例化模型*/
        $m=D('scenefunc');
        $arr=$m
        ->field("funcid,sysno,path,func,remarks,casestate,casemain,caseexpected,
            num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20")
        ->find($id);
        $arr['adder']=$_SESSION['realname'];
        $m=D('hcfunc');
        $where=array("adder"=>$_SESSION['realname']);
        $arr['sn']=$m->where($where)->count()+1;

        if(!$m->create($arr)){
            $this->error($m->getError());
        }
        $lastId=$m->add($arr);
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }


    }

    public function insert(){
        $m=D('scenefunc');
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



    public function update(){
        $db=D('scenefunc');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function order(){

        $db = D('scenefunc');
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
        $m=M('scenefunc');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }
}