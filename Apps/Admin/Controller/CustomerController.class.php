<?php
namespace Admin\Controller;
class CustomerController extends CommonController {

	public function index(){

        $where =  array("type"=>"custype","state"=>"正常");
		$m=M('dict');
        $arr=$m->where($where)->field('id,k,v',false)->order('k')->select();
        $this->assign('arr',$arr);

        $where = !empty($_GET['custype']) ? array("custype"=>$_GET['custype']) : array("custype"=>"老师");
		$m=M('customer');
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $this->assign('w',$where);

        
	     $this->display();
    }

    public function add(){

    	$where = !empty($_GET['custype']) ? array("custype"=>$_GET['custype']) : array("custype"=>"老师");
		$m=M('customer');
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $this->assign('w',$where);
        $this->assign("state", PublicController::stateSelect("正常","state","state"));


       
        $this->display();
    }

    public function insert(){

        /* 实例化模型*/
        $m=D('customer');
        if ($_POST['custype']=="学生") {
            $_POST['isteacher']=0;
        }
        $_POST['password']=md5("666666");
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=time();
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

    	$where = !empty($_GET['custype']) ? array("custype"=>$_GET['custype']) : array("custype"=>"老师");
		$m=M('customer');
        $data=$m->where($where)->select();
        $this->assign('data',$data);

        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);
        $this->assign('w',$where);
        $this->assign("state", PublicController::stateSelect($arr['state'],"state","state"));
       

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('customer');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('customer');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

    public function himg(){
        $custype=$_GET['custype'];
        $this->assign('custype',$custype);
        $id=$_GET['id'];
        
        $m=M('customer');
        $arr=$m->find($id);
        $this->assign('user',$arr);
         
        $this->display();
    
    }
    
    public function imgh(){
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Public/Upload/';// 设置附件上传目录
        $upload->savePath  = '/Customer/'; // 设置附件上传目录
    
        $info  =   $upload->upload();
        dump($info);
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            $_POST['hpath']=$info['himg']['savepath'];
            $_POST['himg']=$info['himg']['savename'];
            /* 实例化模型*/
            $db=D('customer');
            if ($db->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Public/Upload/'.$info['himg']['savepath'].$info['himg']['savename']);
                $image->thumb(800, 400,\Think\Image::IMAGE_THUMB_CENTER)->save('./Public/Upload/'.$info['himg']['savepath'].'/thumb_'.$info['himg']['savename']);
                $this->success("上传成功！");
            }else{
                $this->error("上传失败！");
            }
        }
    }
    



}