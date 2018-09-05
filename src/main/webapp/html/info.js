'use strict'

$('#btnadd').click(() => {
        $.post(`${serverApiAddr}/json/member/info`,{
            'id' : $('#sId').val(),
            'email' : $('#sEmail').val(),
            'password':$('#sPassword').val(),
           'mphoto':$('#sphoto').val()           
            },(result) => {
             if(result.status === 'success'){
                 alert('회원가입 완료!')
             location.href = 'login.html'            
             }else{
                alert('회원가입실패')
                console.log(result.message)                  
             }    
            },'json')
            .fail(() => {
                alert('회원 가입 중 오류 발생!')
            });
    }); 
    