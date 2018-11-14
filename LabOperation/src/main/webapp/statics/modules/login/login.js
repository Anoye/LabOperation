var login={
    URL:{
        getFirstPageURL:function(){
            return "/seckill/login";
        }
    }
};

$("#login").on("click",function(){
    var username=$("#username").val();
    var password=$("#password").val();
    var identify=$("#identify").val();
    if (username == "") {
        $("#usernameMessage").hide().html('<label class="label label-danger">账号不能为空</span>').show(200);
        return;
    } else {
        $("#usernameMessage").hide();
    }
    if (password == "") {
        $("#pwdMessage").hide().html('<label class="label label-danger">密码不能为空</span>').show(200);
        return;
    } else {
        $("#pwdMessage").hide();
    }
    if(identify==""){
        $("#identifyMessage").hide().html('<label class="label label-danger">输入验证码</span>').show(200);
        return ;
    }else{
        $("#identifyMessage").hide();
        $.ajax({
            url:"doLogin",
            data:{
                username:$("#username").val(),
                password:$("#password").val(),
                identify:$("#identify").val()
            },
            dataType:'json'
        }).done(function(data){
            if(data.result==true){
                window.location.href="toIndex";
            }else{
                $("#loginMessage").text(data.message).show();
            }
        }).fail(function(){

        })
    }


})

$("#signsurepassword").on("change",function(){
    var signpassword=$("#signpassword").val();
    var signsurepassword=$("#signsurepassword").val();
    if(signpassword!=signsurepassword){
        $("#signSurepasswordMessage").hide().html('<label class="label label-danger">两次密码不一致</label>').show(300);
    }else{
        $("#signSurepasswordMessage").hide();
    }
})

$("#signsubmit").on("click",function(){
    var signusername=$("#signusername").val();
    var signpassword=$("#signpassword").val();
    var signsurepassword=$("#signsurepassword").val();
    if(signusername==""){
        $("#signUsernameMessage").hide().html('<label class="label label-danger">请输入账号</label>').show(300);
        return;
    }else{
        $("#signUsernameMessage").hide();
    }
    if(signpassword==""){
        $("#signPasswordMessage").hide().html('<label class="label label-danger">请输入密码</label>').show(300);
        return;
    }else{
        $("#signPasswordMessage").hide();
        if(signsurepassword==""){
            $("#signSurepasswordMessage").hide().html('<label class="label label-danger">请确认密码</label>').show(300);
            return ;
        }else{
            $("#signSurepasswordMessage").hide();
            $("#signsurepassword").change();
            if($("#signpassword").val()==$("#signsurepassword").val()){
                //todo
            }
        }
    }
})

// $("#loginForm").on("click",function(){
//     var URL=login.URL.getFirstPageURL();
//     var data=$("#loginForm").serialize();
//     $.ajax({
//         type:'post',
//         url:URL,
//         cache: false,
//         data:data,
//         dataType:'json',
//         success:function(data){
//             alert('success');
//         }
//     })
// })