$(.delete).bind('ajax:success',function(){
    $(this).closest('tr').FadeOut(2000)
})
