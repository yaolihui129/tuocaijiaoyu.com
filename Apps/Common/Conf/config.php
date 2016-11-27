<?php
return array(
	//'配置项'=>'配置值'
	'SHOW_PAGE_TRACE'=>false,//显示页面Trace信息
    'URL_MODEL' => '1',//URL模式
    'MODULE_ALLOW_LIST' => array('Home','Admin','TAdmin',"Test"),//设置允许模块
    'DEFAULT_MODULE' => 'Home',//设置默认模块设置
    'MODULE_DENY_LIST' => array('Common','Runtime'), // 禁止访问的模块列表
    //修改定界符
    'TMPL_L_DELIM'=>'<{',
    'TMPL_R_DELIM'=>'}>',
    'SESSION_AUTO_START' => true,//开启SESSION
    'DB_TYPE'   => 'mysql', // 数据库类型
    'DB_HOST'   => 'hkmysql15.zzidc.ha.cn', // 服务器地址
    'DB_NAME'   => 'tuocai', // 数据库名
    'DB_USER'   => 'tuocai_f', // 用户名
    'DB_PWD'    => 'yaolihui129', // 密码
    'DB_PORT'   => 3306, // 端口
    'DB_PREFIX' => 'tuoc_', // 数据库表前缀
    'DB_CHARSET'=> 'utf8', // 字符集

//     'DB_DEPLOY_TYPE'        =>  0, // 数据库部署方式:0 集中式(单一服务器),1 分布式(主从服务器)
//     'DB_RW_SEPARATE'        =>  false,       // 数据库读写是否分离 主从式有效
//     'DB_MASTER_NUM'         =>  1, // 读写分离后 主服务器数量
//     'DB_SLAVE_NO'           =>  '', // 指定从服务器序号
//     'DB_SQL_BUILD_CACHE'    =>  false, // 数据库查询的SQL创建缓存
//     'DB_SQL_BUILD_QUEUE'    =>  'file',   // SQL缓存队列的缓存方式 支持 file xcache和apc
//     'DB_SQL_BUILD_LENGTH'   =>  20, // SQL缓存的队列长度
//     'DB_SQL_LOG'            =>  false, // SQL执行日志记录
//     'DB_BIND_PARAM'         =>  false, // 数据库写入数据自动参数绑定

    //错误设置
    'ERROR_MESSAGE'         =>  '页面错误！请稍后再试～',//错误显示信息,非调试模式有效
    'ERROR_PAGE'            =>  '', // 错误定向页面
    'SHOW_ERROR_MSG'        =>  false,    // 显示错误信息
    'TRACE_MAX_RECORD'      =>  100,    // 每个级别的错误信息 最大记录数
);