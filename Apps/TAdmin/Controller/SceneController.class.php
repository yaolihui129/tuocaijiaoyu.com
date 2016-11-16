<?php
namespace TAdmin\Controller;

class SceneController extends CommonController {
    public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $_SESSION['proid']=$proid;
    	$gp=$_SESSION['testgp'];
    	$copy=$_GET['copy'];
         /* 实例化模型*/
        $m= D("program");
        $where=array("testgp"=>"$gp");
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);

        if (!empty($_GET['copy'])) {
            $_SESSION['copy']=$_GET['copy'];
        }

        /* 实例化模型*/
        $m = D("scene");
        $where=array("proid"=>"$proid");
        $scene=$m->where($where)->order('sn')->select();
        $this->assign("scene",$scene);
        $where=array("proid"=>"$proid","copy"=>$_SESSION['copy']);
//         $this->assign('w',$where);
        
        $count=$m->where($where)->count()+1;
        $this->assign('c',$count);
        $this -> assign("state", formselect());
        $this -> assign("type", formselect("Manual","type","sceneType"));
        
	    $this->display();
    }


    public function insert(){
        $m=D('scene');
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
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m= D("scene");
        $where=array("proid"=>$proid);
        $pros=$m->where($where)->select();

        $this->assign("data",$pros);
        $scene=$m->find($id);
        $this->assign('w',$where);
        $this -> assign("state", formselect($scene['state']));
        $this -> assign("type", formselect($scene['type'],"type","sceneType"));
        $this->assign("scene",$scene);



        $this->display();
    }

    public function update(){
        $db=D('scene');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }

    public function order(){

        $db = D('scene');
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


 


    public function copy(){
        /* 接收参数*/
        $sceneid=$_GET['sceneid'];
        $proid=$_GET['proid'];
        /* 实例化模型*/
        $m=M('scene');
        $data=$m->field("type,level,swho,swhen,testip,scene,state,flow")->find($sceneid);
        $where=array("proid"=>$proid);
        $data['sourceid']=$sceneid;
        $data['sn']=$m->where($where)->count()+1;
        $data['proid']=$proid;
        $data['state']='待确认';
        $data['adder']=$_SESSION['realname'];
        $data['moder']=$_SESSION['realname'];
        $data['createTime']=date("Y-m-d H:i:s",time());
        if(!$m->create($data)){
            $this->error($m->getError());
        }
        $lastId=$m->add($data);

        $m=D('scenefunc');
        $where=array("sceneid"=>$sceneid);
        $arr=$m->where($where)
             ->field("sn,funcid,sysno,path,func,remarks,caseid,casestate,casemain,caseexpected,num1,num2,num3,
                 num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20")
             ->order('sn')->select();
        foreach ($arr as $a){
            $a['sceneid']=$lastId;
            $a['adder']=$_SESSION['realname'];
            $a['moder']=$_SESSION['realname'];
            $a['createTime']=date("Y-m-d H:i:s",time());
            if(!$m->create($a)){
                $this->error($m->getError());
            }
            $lastfId=$m->add($a);
        }

        if($lastfId){
            $this->success("复制成功");
        }else{
            $this->error("复制失败");
        }

    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('scene');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}