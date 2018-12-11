$(document).ready(function(){

    $("#alert").click(function(){
        var alert = $(this).html()
        M.toast({html: alert, classes: 'red rounded' })
        $("#alert").fadeOut(5000)
    });

    $("#notice").show(function(){
        var alert = $(this).html()
        M.toast({html: alert, classes: 'green rounded' })
        $("#notice").fadeOut(5000)
    });

    $('.modal').modal();
    $("#dropzone").dropzone({ url: "/users" });

});
