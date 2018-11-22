$(document).ready(function(){

    $("#alert").show(function(){
        var alert = $(this).html()
        M.toast({html: alert, classes: 'red rounded' })
        $("#alert").fadeOut(5000)
    });

    $("#notice").show(function(){
        var alert = $(this).html()
        M.toast({html: alert, classes: 'green rounded' })
        $("#notice").fadeOut(5000)
    });
});
