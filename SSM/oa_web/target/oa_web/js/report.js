jQuery(function ($) {
    $('#projectReason').blur(function () {
        if ($('#projectReason').val() == '') {
            $('.notice2').css('color', '#FF0000').html('项目缘由不能为空');
            $('#handout').attr('disabled', true);
        } else {
            $('.notice2').html('');
            $('#handout').removeAttr('disabled');
        }
    });
    $('#projectSponsor').blur(function () {
        if ($('#projectSponsor').val() == '') {
            $('.notice3').css('color', '#FF0000').html('项目发起人不能为空');
            $('#handout').attr('disabled', true);
        } else {
            $('.notice3').html('');
            $('#handout').removeAttr('disabled');
        }
    });
    $('#projectMember').blur(function () {
        if ($('#projectMember').val() == '') {
            $('.notice4').css('color', '#FF0000').html('项目成员不能为空');
            $('#handout').attr('disabled', true);
        } else {
            $('.notice4').html('');
            $('#handout').removeAttr('disabled');
        }
    });
    $('#projectName').blur(function () {
        if($('#projectName').val()==''){
            $('.notice1').css('color','#FF0000').html('项目名称不能为空');
            $('#handout').attr('disabled',true);
        }else{
            $('.notice1').html('');
            $('#handout').removeAttr('disabled');
        }
    });
    $('#handout').click(function () {
        if($('#projectName').val()==''){
            $('.notice1').css('color','#FF0000').html('项目名称不能为空');
            $('#handout').attr('disabled',true);
        }else{
            $('.notice1').html('');
            $('#handout').removeAttr('disabled');
        }
        if($('#projectReason').val()==''){
            $('.notice2').css('color','#FF0000').html('项目缘由不能为空');
            $('#handout').attr('disabled',true);
        }else{
            $('.notice2').html('');
            $('#handout').removeAttr('disabled');
        }
        if($('#projectSponsor').val()==''){
            $('.notice3').css('color','#FF0000').html('项目缘由不能为空');
            $('#handout').attr('disabled',true);
        }else{
            $('.notice3').html('');
            $('#handout').removeAttr('disabled');
        }
        if($('#projectMember').val()==''){
            $('.notice4').css('color','#FF0000').html('项目缘由不能为空');
            $('#handout').attr('disabled',true);
        }else{
            $('.notice4').html('');
            $('#handout').removeAttr('disabled');
        }
    })
})