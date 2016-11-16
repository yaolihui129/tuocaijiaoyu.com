<?php

/**
 * 状态选择控件
 * @param $name 控件name
 * @param $value 选中值
 */
function formselect($value="正常",$name="state",$type="state") {
    $html = '<select name="'.$name.'" class="form-control">';
    $m =M('dict');
    $where=array("type"=>$type,"state"=>"正常");
    //获取所有分类
    $cats = $m->where($where)->order('k')->select();
    foreach($cats as $v) {
        $selected = ($v['v']==$value) ? "selected" : "";
        $html .= '<option '.$selected.' value="'.$v['v'].'">'.$v['v'].'</option>';
    }
    $html .='<select>';
    return $html;
}

function selectgpuer($value="腰立辉",$testgp="Auto",$name="state"){
    $html = '<select name="'.$name.'" class="form-control">';
    $m =M('user');
    $where=array("usergp"=>$testgp,"state"=>"在职");
    //获取所有分类
    $users = $m->where($where)->select();
    foreach($users as $v) {
        $selected = ($v['realname']==$value) ? "selected" : "";
        $html .= '<option '.$selected.' value="'.$v['realname'].'">'.$v['realname'].'</option>';
    }
    $html .='<select>';
    return $html;

}


/**
 * 产品选择
 *
 * @param $value 选中值
 */
function prodselect($value=1) {
    $html = '<select name="prodid" class="form-control">';
    $m =M('product');
    //$where=array("state"=>"正常");
    //获取所有分类
    $cats = $m->select();


    foreach($cats as $v) {
        $selected = ($v['id']==$value) ? "selected" : "";
        $html .= '<option '.$selected.' value="'.$v['id'].'">'.$v['short'].'</option>';
    }

    $html .='<select>';

    return $html;
}


/**
 * 项目选择
 *
 * @param $value 选中值
 */
function proselect($value=1,$name=prono) {
    $html = '<select name="'.$name.'" class="form-control">';
    $m =M('program');
    $where=array("testgp"=>$_SESSION['testgp']);
    //获取所有分类
    $cats = $m->where($where)->order("end desc")->select();


    foreach($cats as $v) {
        $selected = ($v['id']==$value) ? "selected" : "";
        $html .= '<option '.$selected.' value="'.$v['id'].'">'.$v['prono'].'</option>';
    }

    $html .='<select>';

    return $html;
}


/**
 * 系统选择
 *
 * @param $value 选中值
 */
function sysselect($value=1) {
    $html = '<select name="prodid" class="inputselect">';
    $m =M('system');
    //$where=array("state"=>"正常");
    //获取所有分类
    $cats = $m->select();


    foreach($cats as $v) {
        $selected = ($v['id']==$value) ? "selected" : "";
        $html .= '<option '.$selected.' value="'.$v['id'].'">'.$v['sysid'].'</option>';
    }

    $html .='<select>';

    return $html;
}
/**
 * 根据id获取项目编号
 */
function getProNo($id){
    if ($id){
        $m=M('program');
        $data=$m->find($id);
        //dump($data);
        return $data['prono'];
    }else {
        return ;
    }
}

/**
 * 根据id获取项目信息
 */
function getPro($id){
    if ($id){
        $m=M('program');
        $data=$m->find($id);
        //dump($data);
        $str=$data['prono'].$data['manager']."-".$data['program']."【".$data['prost']."】".$data['end'];

        return $str;
    }else {
        return ;
    }
}

/**
 * 根据系统id获取系统信息
 */
function getSystem($id){
    if ($id){
        $m=M('system');
        $data=$m->find($id);
        //dump($data);

        $str=$data['system']."【".$data['state']."】";
        return $str;
    }else {
        return ;
    }
}

/**
 * 根据id获取里程碑信息
 */
function getStage($id){
    if ($id){
        $m=M('stage');
        $data=$m->find($id);
        //dump($data);

        $str=$data['stage']."【".$data['state']."】";
        return $str;
    }else {
        return ;
    }
}

/**
 * 根据id获取场景信息
 */
function getScene($id){
    if ($id){
        $m=M('scene');
        $data=$m->find($id);
        //dump($data);
        $str=$data['sn'].$data['swho']."-".$data['swhen']."-".$data['scene'];
        return $str;
    }else {
        return ;
    }
}

/**
 * 根据产品id获取系统数据
 */
function getSys($id){
    $m=M("system");
    $where['prodid']=$id;
    $arr=$m->where($where)->select();
    foreach ($arr as $ar){
        $str.='<li class="list-group-item">'
                  . $ar['sysno'].":".$ar['system']
                  .'<span class="pull-right">【'
                      .$ar['state']
                  .'】</span>'
              .'</li>';
    };

    return $str;


}

/**
 * 根据id获取路径信息
 */
function getPath($id){
    if ($id){
        $m=M('path');
        $data=$m->find($id);
        $str= $data['sn'].".".$data['path'];
        return $str;
    }else {
        return ;
    }
}

/**
 * 根据id获取功能名
 */
function getFunc($id){
    if ($id){
        $m=M('func');
        $data=$m->find($id);
        //dump($data);
        return $data['func'];
    }else {
        return ;
    }
}

/**
 * 根据id获取功能失败数
 */
function countFResult($id){
    if ($id){
        $where=array("proid"=>$_SESSION['proid'],"tp_exefunc.funcid"=>$id,"tp_exefunc.result"=>'失败');
        $m=M('stage');
        $data=$m ->where($where)
        ->join('tp_stagetester ON tp_stage.id =tp_stagetester.stageid')
        ->join('tp_exescene ON tp_stagetester.id=tp_exescene.stagetesterid')
        ->join('tp_exefunc ON tp_exescene.id=tp_exefunc.exesceneid')
        ->count();
        return $data;
    }else {
        return ;
    }
}

/**
 * 根据id获取功能被测试数
 */
function countFQResult($id){
    if ($id){
        $where=array("proid"=>$_SESSION['proid'],"tp_exefunc.funcid"=>$id);
        $m=M('stage');
        $data=$m ->where($where)
        ->join('tp_stagetester ON tp_stage.id =tp_stagetester.stageid')
        ->join('tp_exescene ON tp_stagetester.id=tp_exescene.stagetesterid')
        ->join('tp_exefunc ON tp_exescene.id=tp_exefunc.exesceneid')
        ->count();
        return $data;
    }else {
        return ;
    }
}
/**
 * 根据id获取产品简称
 */
function getProd($id){
    if ($id){
        $m=M('product');
        $data=$m->find($id);
        //dump($data);
        return $data['short'];
    }else {
        return ;
    }
}

/**
 * 根据id获取功能结果
 */
function getFResult($id){
    if ($id){
        $m=M('func');
        $data=$m->find($id);
        //dump($data);
        return $data['result'];
    }else {
        return ;
    }
}

/**
 * 根据功能id获取功能信息
 */
function getSPFunc($id){
    if ($id){
        $s = D("system");
        $where=array("tp_func.id"=>$id);
        $data=$s->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->join(' inner JOIN tp_func ON tp_path.id = tp_func.pathid')
        ->where($where)
        ->select();

        $str=$data[0]['system'].">".$data[0]['path'].">".$data[0]['func'];
        return $str;
    }else {
        return ;
    }
}


/**
 * 根据路径id获取功能信息
 */
function getSPath($id){
    if ($id){
        $s = D("system");
        $where=array("tp_path.id"=>$id);
        $data=$s->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->where($where)
        ->select();

        $str=$data[0]['system']."-".$data[0]['path'];
        return $str;
    }else {
        return ;
    }
}

/**
 * 根据场景功能id获取场景功能信息
 */
function getSceneFunc($id){
    if ($id){
        $m=D('system');
        $where=array("tp_scenefunc.id"=>$id);
        $data=$m
        ->join("inner JOIN tp_path ON tp_system.id = tp_path.sysid")
        ->join("inner JOIN tp_func ON tp_path.id = tp_func.pathid")
        ->join("inner JOIN tp_scenefunc ON tp_func.id = tp_scenefunc.funcid")
        ->where($where)->order('tp_scenefunc.sn')->select();

        $str=$data[0]['system'].">".$data[0]['path'].">".$data[0]['func']."【".$data[0]['remarks']."】";
        return $str;
    }else {
        return ;
    }

}


/**
 * 根据列队获取执行功能数
 */
function countExeFunc($id){
    $m=M("exefunc");
    $where=array("exesceneid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}


/**
 * 根据项目获取里程碑数
 */
function countStage($id){
    $m=M("stage");
    $where=array("proid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}
/**
 * 根据项目获取风险数
 */
function countRisk($id){
    $m=M("risk");
    $where=array("proid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据项目获取系统数
 */
function countProsys($id){
    $m=M("prosys");
    $where=array("proid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据项目获取范围功能数
 */
function countRange($id){
    $m=M("func");
    $where=array("fproid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据id获取场景数
 */
function countScene($id){
    $m=M("scene");
    $where=array("proid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据id获取场景功能数
 */
function countSFunc($id){
    $m=M("scenefunc");
    $where=array("sceneid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据项目获取用例数
 */
function countCase($id){
    $m=M("case");
    $where=array("fproid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据阶段id获取测试人员
 */
function countATester($id){
    $m=M("stagetester");
    $where=array("stageid"=>$id,"type"=>"A");
    $count=$m->where($where)->count();
    return $count;
}

function countCTester($id){
    $m=M("stagetester");
    $where=array("stageid"=>$id,"type"=>"C");
    $count=$m->where($where)->count();
    return $count;
}


function countMTester($id){
    $m=M("stagetester");
    $where=array("stageid"=>$id,"type"=>"M");
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据分组获取项目数
 */
function countPro($testgp){
    $m=M("program");
    $where=array("testgp"=>$testgp);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据系统编号获取路径数
 */
function countPath($id){
    $m=M("path");
    $where=array("sysid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}
/**
 * 根据路径获取功能数
 */
function countFunc($id){
    $m=M("func");
    $where=array("pathid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据产品获取系统数
 */
function countSys($id){
    $m=M("system");
    $where=array("prodid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据功能获取路径数
 */
function countFCase($id){
    $m=M("case");
    $where=array("funcid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}


/**
 * 根据功能获取规则数
 */
function countFRules($id){
    $m=M("rules");
    $where=array("funcid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}


/**
 * 执行场景数
 */
function countExescene($id){
    $m=M("exescene");
    $where=array("stagetesterid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}
