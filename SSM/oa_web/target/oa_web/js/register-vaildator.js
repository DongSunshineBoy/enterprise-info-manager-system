$(function() {
    $('form').bootstrapValidator({
        message:'输入值不能为空!',
        feedbackIcons:{
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields:{
            username:{
                message: '用户名验证失败',
                validators:{
                    notEmpty:{
                        message:'用户名不为空'
                    },
                    stringLength:{
                        min:6,
                        max:11,
                        message:'字符长度必须在6-11之间'
                    },
                    regexp:{
                        regexp:/^[a-zA-Z0-9_]+$/,
                        message:'用户名只能包含大写,小写，数字和下划线'
                    }
                }
            },
            password:{
                message:'密码验证失败',
                validators:{
                    notEmpty: {
                        message:'密码不为空',
                    },
                    stringLength: {
                        min:6,
                        maxLength:11,
                        message:'密码长度必须在6-11个字符之间'
                    },
                    regexp:{
                        regexp:/^[a-zA-Z0-9_]+$/,
                        message:'用户名只能包含大写,小写，数字和下划线'
                    }
                }
            },
            phone:{
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
            }
        }
    });
});