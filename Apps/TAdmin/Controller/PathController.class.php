<?php
namespace TAdmin\Controller;

class PathController extends CommonController {
    public function index(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];

//         echo $sysid;
        /* 实例化模型*/
        $m=D('system');
        $where=array("prodid"=>"$prodid","state"=>"正常");
        $syses=$m->where($where)->order("sysno")->select();
        $this->assign("data",$syses);
         /* 实例化模型*/
        $m=D('path');
        $where=array("sysid"=>"$sysid");
        $pathes= $m->where($where)->order("sn,id")->select();
        $this->assign("pathes",$pathes);
        $where=array("prodid"=>"$prodid","proid"=>"$proid","sysid"=>"$sysid");
        $this->assign("w",$where);

	     $this->display();
    }

    public function indexp(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
//       echo $prodid;
        /* 实例化模型*/
        $m=D('prosys');
        $where=array("tp_prosys.proid"=>"$proid");
        $syses=$m
        ->join(" tp_system ON tp_system.id = tp_prosys.sysid")
        ->where($where)->order("tp_system.sysno")->select();
        $this->assign("data",$syses);
        /* 实例化模型*/
        $m=D('path');
        $where=array("sysid"=>"$sysid");
        $pathes= $m->where($where)->order("sn,id")->select();
        $this->assign("pathes",$pathes);
        $where=array("prodid"=>"$prodid","proid"=>"$proid","sysid"=>"$sysid");
        $this->assign("w",$where);

        $this->display();
    }

    public function add(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $sysid=$_GET['sysid'];
        /* 实例化模型*/
        $m=D('path');
        /* 查询传递数据*/
        $where=array("sysid"=>"$sysid");
        $data= $m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("pstate", formselect("","pstate"));
        $where=array("prodid"=>"$prodid","sysid"=>"$sysid");
        $this->assign("w",$where);

        $this->display();
    }

    public function addf(){
        /* 接收参数*/

        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
//         echo $proid;
        /* 实例化模型*/
        $m=D('path');
        /* 查询传递数据*/
        $where=array("sysid"=>"$sysid");
        $data= $m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("pstate", formselect("","pstate"));
        $where=array("proid"=>"$proid","sysid"=>"$sysid");
        $this->assign("w",$where);

        $this->display();
    }

    public function addp(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        /* 实例化模型*/
        $m=D('path');
        /* 查询传递数据*/
        $where=array("sysid"=>"$sysid");
        $data= $m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("pstate", formselect("","pstate"));
        $where=array("prodid"=>"$prodid","proid"=>"$proid","sysid"=>"$sysid");
        $this->assign("w",$where);

        $this->display();
    }

    public function insert(){
        $m=D('path');
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
        $sysid=$_GET['sysid'];
        $id=$_GET['id'];
        /* 实例化模型*/
        $m=D('path');
        $where=array("sysid"=>"$sysid");
        $data= $m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        //编辑内容
        $path=$m->find($id);
        $this->assign("path",$path);
        $this -> assign("pstate", formselect($path['pstate'],"pstate"));
        $where=array("prodid"=>"$prodid","sysid"=>"$sysid");
        $this->assign("w",$where);

        $this->display();
    }

    public function modf(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $id=$_GET['id'];
//         echo $proid;
        /* 实例化模型*/
        $m=D('path');
        $where=array("sysid"=>"$sysid");
        $data= $m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        //编辑内容
        $path=$m->find($id);
        $this->assign("path",$path);
        $this -> assign("pstate", formselect($path['pstate'],"pstate"));
        $where=array("proid"=>"$proid","sysid"=>"$sysid");
        $this->assign("w",$where);

        $this->display();
    }


    public function modp(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $id=$_GET['id'];
        /* 实例化模型*/
        $m=D('path');
        $where=array("sysid"=>"$sysid");
        $data= $m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        //编辑内容
        $path=$m->find($id);
        $this->assign("path",$path);
        $this -> assign("pstate", formselect($path['pstate'],"pstate"));
        $where=array("prodid"=>"$prodid","proid"=>"$proid","sysid"=>"$sysid");
        $this->assign("w",$where);

        $this->display();
    }


    public function update(){
        $db=M('path');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function order(){

        $db = D('path');
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

    public function library(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $stageid=$_GET['stageid'];
        $stagetesterid=$_GET['stagetesterid'];
        $type=$_GET['type'];
        $tester=$_GET['tester'];
        /* 实例化模型*/

        $m=D('exescene');
        $where=array("stagetesterid"=>$stagetesterid);
        $exe=$m->where($where)->order("sn")->select();
        $this->assign('exe',$exe);


        $m= D("prosys");
        $where=array("tp_prosys.proid"=>"$proid");
        $data=$m->join('inner JOIN tp_system ON tp_system.id = tp_prosys.sysid')
        ->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->where($where)
        ->order("tp_system.sysno,tp_path.sn,tp_path.id")
        ->select();
        $this->assign("data",$data);
// dump($data);

        $where=array("proid"=>$proid,"stageid"=>$stageid,"stagetesterid"=>$stagetesterid,"tester"=>$tester,"type"=>$type);
        $this->assign('w',$where);

        $this->display();

    }
    public function jion(){

        /* 接收参数*/
        $proid=$_GET['proid'];
        $stageid=$_GET['stageid'];
        $stagetesterid=$_GET['stagetesterid'];
        $pathid=$_GET['pathid'];
        $type=$_GET['type'];
        $tester=$_GET['tester'];
        /* 实例化模型*/

        $m=D('path');
        $data=$m->find($pathid);
        $arr['pathid']=$data['id'];
        $arr['sceneid']=0;
        $arr['level']=2;
        $arr['stagetesterid']=$stagetesterid;
        $arr['type']='M';
        $arr['swho']='【功能】';
        $arr['swhen']='默认';
        $arr['scene']=getSPath($data['id']);
        $arr['flow']='“'.$arr['scene'].'“下所有功能点';
        $arr['results']='未测试';
        $arr['adder']=$_SESSION['realname'];
        $arr['moder']=$_SESSION['realname'];
        $arr['createTime']=date("Y-m-d H:i:s",time());
        $m=D('exescene');
        $where=array("stagetesterid"=>$_GET['stagetesterid'],"type"=>$_GET['type']);
        $arr['sn']=$m->where($where)->count()+1;

        /*插入执行场景数据 */
        if(!$m->create($arr)){
            $this->error($m->getError());
        }
        $lastId=$m->add($arr);
        $m= D("func");
        $where=array("pathid"=>$data['id']);
        $funcs=$m->where($where)->field("sn,id as funcid,func")->order("sn")->select();

        /*插入执行场景功能数据 */
        foreach ($funcs as $a){
            $a['path']=$arr['scene'];
            $a['exesceneid']=$lastId;
            $a['adder']=$_SESSION['realname'];
            $a['moder']=$_SESSION['realname'];
            $a['createTime']=date("Y-m-d H:i:s",time());
            $m=D('exefunc');
            if(!$m->create($a)){
                $this->error($m->getError());
            }
            $lastfId=$m->add($a);
        }

        if($lastfId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }

    }



    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=D('path');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }
}