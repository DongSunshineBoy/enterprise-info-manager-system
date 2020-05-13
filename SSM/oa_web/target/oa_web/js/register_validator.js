jQuery(function($) {
    $('form').bootstrapValidator({
        message:'输入值不能为空!',
        feedbackIcons:{
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields:{
            emp_id:{
                message: '用户名验证失败',
                validators:{
                    notEmpty:{
                        message:'用户名不为空'
                    },
                    stringLength:{
                        min:6,
                        max:11,
                        message:'用户名字符长度必须在6-11之间'
                    },
                    regexp:{
                        regexp:/^[a-zA-Z0-9_]+$/,
                        message:'用户名只能包含大写,小写，数字和下划线'
                    },
                    threshold: 2,//有2字符以上才发送ajax请求

                    remote: {//ajax验证。server result:{"valid",true or false}
                        url: "/oa_web_war_exploded/check_existUser",
                        message: '用户名已存在,请重新输入',
                        delay: 1000,//ajax刷新的时间是1秒一次
                        type: 'POST',
                        //自定义提交数据，默认值提交当前input value
                        data: function(validator) {
                            return {
                                emp_id : $("input[name=emp_id]").val(),
                                method : "check_existUser"//UserServlet判断调用方法关键字。
                            };
                        }
                    }
                }
            },
            emp_pwd:{
                message:'密码验证失败',
                validators:{
                    notEmpty: {
                        message:'密码不为空'
                    },
                    stringLength:{
                        min:6,
                        max:16,
                        message:'密码字符长度必须在6-11之间'
                    },
                    regexp:{
                        regexp:/^[a-zA-Z0-9_]+$/,
                        message:'用户名只能包含大写,小写，数字和下划线'
                    }
                }
            },
            emp_phone:{
                message:'电话号码校验有误',
                validators:{
                    notEmpty:{
                        message:'电话号码不能为空'
                    },
                    regexp:{
                        regexp:"^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$",
                        message:'请输入正确的电话号码'
                    }
                }
            },
            sn:{
                message: '编号值无效',
                validators:{
                    notEmpty:{
                        message:'输入编号不能为空!'
                    },
                    stringLength:{
                        min:6,
                        max:8,
                        message:'编号字符长度必须在6-11之间'
                    },
                    regexp:{
                        regexp:'^[0-9]*$',
                        message:'输入编号只能是数字'
                    }
                }
            },
            address:{
                message: '描述值无效!',
                validators:{
                    notEmpty:{
                        message:'描述值不能为空'
                    },
                    stringLength:{
                        min:10,
                        max:30,
                        message:'描述值字符长度必须在10-30之间'
                    }
                }
            },
            file:{
                message: '文件无效!',
                validators:{
                    notEmpty:{
                        message:'文件不能为空!'
                    }
                }
            }
        }
    });
});