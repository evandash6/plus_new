<script type="text/javascript" src="<?=base_url()?>frontend/js/jquery.mask.js"></script>
<div class="row">
    <div class="col-md-4" style="border-right:1px solid #BBBBBB;vertical-align:middle; padding-right:30px">
        <div class="row m-t-20">
            <div class="col-md-12">
            <label class="form-label m-t-20">Foto:</label>
                <img name="foto_emp" src="<?=base_url()?>frontend/images/user.png" class="img img-fluid img-thumbnail" alt="">
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="custom-file">
                    <input type="file"  class="custom-file-input" id="archivo">
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-8" style="padding-left:30px">
        <div class="row m-t-20">
            <h5>Datos Personales</h5>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label for="">Nombre:</label>
                <input type="text"  name="nombre" class="form-control" autocomplete="off" maxlength="200">
            </div>
            <div class="col-md-6">
                <label for="">Dirección:</label>
                <input type="text" class="form-control"  name="direccion" autocomplete="off" maxlength="200">
            </div>
        </div>
        <div class="row m-t-20">
             <div class="col-md-3">
                <label for="">Correo Electronico:</label>
                <input type="email" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name="correo" maxlength="200">
            </div>
            <div class="col-md-3">
                <label for="">Telefono/Cel::</label>
                <input type="tel" pattern="[0-9]{2}-[0-9]{4}-[0-9]{4}" name="tel" class="form-control" autocomplete="off" placeholder="33-1234-1234" maxlength="14">
            </div>
            <div class="col-md-4">
                <label for="">Fecha de nacimiento:</label>   
                <input type="date" name="fecha_nacimiento"  class="form-control" maxlength="50">
            </div>
        </div>
        <div class="row m-t-20">
            <div class="col-md-3">
                 <label for="">Tipo de puesto:</label>
                    <input name="perfil" class="form-control" autocomplete="off"  maxlength="200">
                    
            </div>
            <div class="col-md-3">
                    <label for="">Tipo de Sueldo:</label>
                    <input name="tipo_sueldo" class="form-control" autocomplete="off"  maxlength="200">
                        
            </div>
        <div id="v_sueldo" style="display:none;">
            <div class="col-md-12">
            <label for="">Sueldo:</label>
            <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">$</span>
            </div>
            <input type="text"  name="monto_sueldo"  class="form-control"  placeholder="0.00" autocomplete="off"  maxlength="7">
            </div>
            </div>
        </div>
        <div id="v_comision" style="display:none;">
        <div class="col-md-12">
            <label for="">Comisión:</label>
            <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">%</span>
            </div>
            <input type="text"  name="comision"  class="form-control"  placeholder="0" autocomplete="off"  maxlength="7">
            </div>
            </div>
        </div>
        </div>
        <div class="row m-t-10">
            <div class="col-md-5">
                    <label for="">Estado:</label>
                    <input name="estado" class="form-control" autocomplete="off"  maxlength="200">
                       
            </div>
        </div>
        <div id="v_tecnico" style="display:none;">
            <div class="row m-t-20">
                <h5>Datos del técnico</h5>
            </div>
            <div class="row m-t-20">
                <div class="col-md-4">
                <label for="">Limite Credito</label>
                <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">$</span>
                </div>
                <input type="text"  name="limite_credito"  class="form-control"  placeholder="0.00" autocomplete="off"  maxlength="7">
                </div>
                </div>
                <div class="col-md-4">
                <label for="">Maximo de servicios activos</label>
                <input type="number"  name="max_servicios"  class="form-control"   autocomplete="off"  maxlength="2">
                </div>
            </div>
        </div>
    </div>
</div>  


<div class="row m-t-20">
    <div class="col-md-12 text-right">
        <button id="btx_cancela_empleado" class="btn btn-danger waves-effect waves-themed"><i class="fa fa-reply m-r-5"></i> Regresar</button>
    </div>
</div>

<script>

    $("input[name=tel]").mask('00-0000-0000');
    $("input[name=monto_sueldo]").mask('000,000.00',{reverse:true});
    $("input[name=limite_credito]").mask('000,000.00',{reverse:true});

    $(document).ready(function(){
        let valores = <?=json_encode($empleado)?>;
        $('input').each(function(){
            $(this).val(valores[$(this).attr('name')])
            $(this).attr('disabled',true)
        })
        $('select').each(function(){
            $(this).val(valores[$(this).attr('name')])
            $(this).attr('disabled',true)
        })
        $('textarea').each(function(){
            $(this).val(valores[$(this).attr('name')])
            $(this).attr('disabled',true)
        })
        if(valores['foto_emp'] != ''){
            $('img[name=foto_emp]').attr('src','<?=base_url()?>frontend/emps/'+valores['foto_emp'])
        }

        if($('input[name=perfil]').val() == 'Técnico'){
            $("#v_tecnico").show();
        }
            
        if($('input[name=tipo_sueldo]').val() == 'Sueldo Fijo'){
            $("#v_sueldo").show();
        }

        if($('input[name=tipo_sueldo]').val() == 'Comisión')
            $("#v_comision").show();
    })
</script>