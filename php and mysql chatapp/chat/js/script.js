


$(document).ready(function () {

    $(".chat--form").submit(function(){
        
        let msg = $(".chat--form input[type='text']").val();

        $.ajax({
            type: "POST",
            url: "chat.php",
            data: {
                putMsg: "set",
                message: msg
            },
            success: function (res) {
                $(".chat--input").val('');
            }
        });

        
        return false;
    });


    setInterval(() => {
        $.ajax({
            url: "chat.php",
            type: "POST",
            data: {
                msgUpdate: "set"
            },
            success: function(res){
                $(".chat--view").html(res);
            }
        })
    }, 500);

});