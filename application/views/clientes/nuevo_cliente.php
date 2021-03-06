<script type="text/javascript" src="<?=base_url()?>frontend/js/jquery.mask.js"></script>
<script src='https://api.tiles.mapbox.com/mapbox-gl-js/v1.5.0/mapbox-gl.js'></script>
<link href='https://api.tiles.mapbox.com/mapbox-gl-js/v1.6.1/mapbox-gl.css' rel='stylesheet' />
<?php echo form_open_multipart('clientes/save');?>
<div class="row">
    <div class="col-md-8 offset-md-2">
        <div class="row">
            <h5>Datos Personales</h5>
            <hr class="style">
        </div>
        <div class="row">
            <div class="col-md-6">
                <label for="">Nombre:</label>
                <input type="text"  name="nombre" class="form-control" autocomplete="off" placeholder="Max 150 caracteres" maxlength="200" required>
            </div>
            <div class="col-md-3">
                <label for="">Telefono:</label>
                <input type="tel"  name="tel"  class="form-control" pattern="[0-9]{2}-[0-9]{4}-[0-9]{4}" autocomplete="off" placeholder="33-1234-1234" maxlength="14">
            </div>
            <div class="col-md-3">
                <label for="">Celular:</label>
                <input type="tel"  name="cel"  class="form-control" pattern="[0-9]{2}-[0-9]{4}-[0-9]{4}" autocomplete="off" placeholder="33-1234-1234" maxlength="14">
            </div>
        </div>
        <div class="row m-t-20">
            <div class="col-md-4">
                <label for="">Estado:</label>
                <select name="estado_id" class="form-control" autocomplete="off"  maxlength="200">
                    <?=$estados?>
                </select>
            </div>
            <div class="col-md-4">
                <label for="">Municipio:</label>
                <select name="municipio_id" class="form-control" autocomplete="off"  maxlength="200">
                    <?=$municipios?>
                </select>
            </div>
            <div class="col-md-4">
                <label for="">Publicidad:</label>
                <select name="publicidad_id" class="form-control" autocomplete="off"  maxlength="200">
                    <?=$publicidad?>
                </select>
            </div>
        </div>
        <div class="row m-t-20">
            <div class="col-md-6">
                <label for="">Calle:</label>
                <input type="text"  name="calle" class="form-control" autocomplete="off" placeholder="Max 200 caracteres" maxlength="200">
            </div>
            <div class="col-md-3">
                <label for="">Numero Exterior:</label>
                <input type="text"  name="num_ext"  class="form-control" autocomplete="off" placeholder="Max 5" maxlength="5">
            </div>
            <div class="col-md-3">
                <label for="">Numero Interior:</label>
                <input type="text"  name="num_int" class="form-control" autocomplete="off" placeholder="Max 3" maxlength="5">
            </div>
        </div>
        <div class="row m-t-20">
            <div class="col-md-6">
                <label for="">Entre Calles:</label>
                <textarea rows="5"  name="entre_calles"  class="form-control" autocomplete="off"></textarea>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6">
                        <label for="">Colonia:</label>
                        <input type="text"  name="colonia"  class="form-control" autocomplete="off" placeholder="Max 250 caracteres" maxlength="200">
                    </div>
                    <div class="col-md-6">
                        <label for="">Codigo Postal:</label>
                        <input type="number"  name="codigo_postal"  class="form-control" autocomplete="off" placeholder="00000" maxlength="5">
                    </div>
                </div>
                <div class="row m-t-15">
                    <div class="col-md-12">
                        <label for="">Correo Electronico:</label>
                        <input type="email"  name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" class="form-control" autocomplete="off" placeholder="ejemplo@correo.com" maxlength="200">
                    </div>
                </div>
            </div>           
        </div>
        <div class="row m-t-20">
            <div class="col-md-12 text-right">
            <button type="button" id="btx_bus_dir" class="btn btn-primary">Buscar dirección</button>
            </div>
        </div>
        <div class="row m-t-10">
            <div class="col-md-12">
                <label for="">Coincidencias:</label>
                <select name="direccion_api" class="form-control"></select>
            </div>
        </div>
        <div class="row m-t-10">
            <div class="col-md-6">
                <label for="">Latitud:</label>
                <input type="text" name="latitud" readonly class="form-control text-center">
            </div>
            <div class="col-md-6">
                <label for="">Longitud:</label>
                <input type="text" name="longitud" readonly class="form-control text-center">
            </div>
        </div>
    </div>
</div>
<div class="row m-t-20">
    <div class="col-md-8 offset-md-2">
        <div id="map" style="height:400px"></div>
    </div>
</div>          
<div class="row m-t-20">
    <div class="col-md-12 text-right">
        <button type="button" id="btx_cancela_cliente" class="btn btn-danger waves-effect waves-themed"><i class="fa fa-ban m-r-5"></i> Cancelar</button>
        <button type="submit" class="btn btn-primary waves-effect waves-themed"><i class="fa fa-save m-r-5"></i> Crear Cliente</button>
    </div>
</div>

</form>
<script>
    
    $("input[name=tel]").mask('00-0000-0000');
    $("input[name=cel]").mask('00-0000-0000');

    $('body').on('change','select[name=estado_id]',function(){
        let cve_ent = $(this).val();

        if(cve_ent != null){
            api.post('<?=base_url()?>clientes/municipios_get',{cve_ent:cve_ent})
            .done(function(res){
                $('select[name=municipio_id]').html(res);
            })
            .fail(function(res){
                alert('',JSON.parse(res).msg,'error','<?=base_url()?>clientes/');
                console.log(res)
            })
        }
    })

</script>