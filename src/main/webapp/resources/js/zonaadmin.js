$(document).ready(function () {
    console.log('Sección administración iniciada');
    
    var filaAfectadaG;
    var indiceFilaModiG;
    var nombreG;
    var passG;
    var descripG;

    ocultarBotonModi();

    $(".confirmdel").on("click", function () {  //  Eliminar
        return confirm("Eliminar elemento ?");
    });

    $(".btnactuali").on("click", function () {    // Click Actualizar This: <a>
        var indiceFila = $(this).parents('.tabusers tbody tr').index();
        var renglon = $('.tabusers tbody tr').eq(indiceFila);
        var renglonModifi;
        filaAfectadaG = renglon;
        indiceFilaModiG = indiceFila;
        mostrarBotonesMod();
        renglonModifi = modificables(renglon);
    });
    function modificables(refRenglon) {     //  Modifica los campos para actualizar valores
        var mNombre = $(refRenglon).find('td').eq(1).html();
        var mPass = $(refRenglon).find('td').eq(2).html();
        var mDescri = $(refRenglon).find('td').eq(3).html();
        nombreG = mNombre;
        passG = mPass;
        descripG = mDescri;

        var filaModificada = $(refRenglon).html();

        $(refRenglon).find('td').eq(1).replaceWith('<td><input type="text" size="10" value="' + mNombre + '" /></td>');
        $(refRenglon).find('td').eq(2).replaceWith('<td><input type="text" size="10" value="' + mPass + '" /></td>');
        $(refRenglon).find('td').eq(3).replaceWith('<td><input type="text" size="20" value="' + mDescri + '" /></td>');

        $(refRenglon).find('td input').eq(0).select();

        return filaModificada;
    }
    ;
    $(".btnmodifi").on("click", function () {   //  Aceptar modificación
        console.log('Modificar');
        // zonaadmin.htm
        var path = $('#path').val();
        var mIndice = $('.tabusers tbody tr').eq(indiceFilaModiG).find('td').eq(0).html();
        var mNombre = $('.tabusers tbody tr').eq(indiceFilaModiG).find('td').eq(1).find('input').val();
        var mPassw = $('.tabusers tbody tr').eq(indiceFilaModiG).find('td').eq(2).find('input').val();
        var mDescrip = $('.tabusers tbody tr').eq(indiceFilaModiG).find('td').eq(3).find('input').val();
        var usuario = {};
        usuario["idUsuarios"] = mIndice;
        usuario["nombre"] = mNombre;
        usuario["passw"] = mPassw;
        usuario["descripcion"] = mDescrip;
        $('.tabusers tbody tr').eq(indiceFilaModiG).find('td:last').hide();
        $('.tabusers tbody tr').eq(indiceFilaModiG).find('td').eq(6).replaceWith('<td>Actualizando registro...</td>');

        $.ajax({    //  Llamada Ajax
            type: "POST",
            contentType: "application/json",
            url: path + "/zonaadmin/update.htm",
            data: JSON.stringify(usuario),
            dataType: 'json',
            timeout: 100000,
            success: function (data) {
                console.log('Exito actualizando '+data.toString());
                $(location).attr('href',path+'/zonaadmin.htm');
            },
            error: function (e) {
                console.log('Error actualizando: '+e);
                $('.tabusers tbody tr').eq(indiceFilaModiG).find('td').eq(6).replaceWith('<td>Error en la comunicación</td>');
            }
        });
        
    });
    $(".btncancel").on("click", function () {   //  Cancelar Modificación
        ocultarBotonModi();
        $('.tabusers tbody tr').each(function () {
            $(this).find('td').eq(4).show();
            $(this).find('td').eq(5).show();
        });
        var cNombre = nombreG;
        var cPass = passG;
        var cDescrip = descripG;
        $('.tabusers tbody tr').eq(indiceFilaModiG).find('td').eq(1).replaceWith('<td>' + cNombre + '</td>');
        $('.tabusers tbody tr').eq(indiceFilaModiG).find('td').eq(2).replaceWith('<td>' + cPass + '</td>');
        $('.tabusers tbody tr').eq(indiceFilaModiG).find('td').eq(3).replaceWith('<td>' + cDescrip + '</td>');
    });
    function mostrarBotonesMod() {
        $('.tabusers tbody tr').each(function () {
            $(this).find('td').eq(4).hide();
            $(this).find('td').eq(5).hide();
        });
        $('.tabusers tbody tr').eq(indiceFilaModiG).find('td').eq(6).show();
        $('.tabusers tbody tr').eq(indiceFilaModiG).find('td').eq(7).show();
    }
    ;
    function ocultarBotonModi() {
        $('.tabusers tbody tr').each(function () {
            $(this).find('td').eq(6).hide();
            $(this).find('td').eq(7).hide();
        });
    }
    ;

});