<script type="text/javascript" src="<?=base_url()?>frontend/js/jquery.mask.js"></script>
<?php echo form_open_multipart('clientes/save');?>
<div class="row">
    
    <div class="col-md-8" style="padding-left:30px">
        <div class="row m-t-20">
            <h5>Datos Personales</h5>
        </div>
        <div class="row m-t-20">
            <div class="col-md-6">
                <label for="">Nombre:</label>
                <input type="text"  name="nombre" class="form-control mayus" autocomplete="off" placeholder="Max 150 caracteres" maxlength="200">
            </div>
            <div class="col-md-3">
                <label for="">Telefono:</label>
                <input type="tel"  name="telefono"  class="form-control mayus" pattern="[0-9]{2}-[0-9]{4}-[0-9]{4}" autocomplete="off" placeholder="33-1234-1234" maxlength="11">
            </div>
            <div class="col-md-3">
                <label for="">Celular:</label>
                <input type="tel"  name="celular"  class="form-control mayus" pattern="[0-9]{2}-[0-9]{4}-[0-9]{4}" autocomplete="off" placeholder="33-1234-1234" maxlength="11">
            </div>
        </div>
        <div class="row m-t-20">
            <div class="col-md-6">
                <label for="">Calle:</label>
                <input type="text"  name="calle" class="form-control mayus" autocomplete="off" placeholder="Max 200 caracteres" maxlength="200">
            </div>
            <div class="col-md-3">
                <label for="">Numero Exterior:</label>
                <input type="text"  name="num_ext"  class="form-control mayus" autocomplete="off" placeholder="Max 200 caracteres" maxlength="200">
            </div>
            <div class="col-md-3">
                <label for="">Numero Interior:</label>
                <input type="text"  name="num_int" class="form-control mayus" autocomplete="off" placeholder="Max 150 caracteres" maxlength="200">
            </div>
        </div>
        <div class="row m-t-20">
            <div class="col-md-6">
                <label for="">Entre Calles:</label>
                <input type="text"  name="entre_calles"  class="form-control mayus" autocomplete="off" placeholder="Max 250 caracteres" maxlength="200">
            </div>
        </div>
        <div class="row m-t-20">
            <div class="col-md-4">
                <label for="">Colonia:</label>
                <input type="text"  name="colonia"  class="form-control mayus" autocomplete="off" placeholder="Max 250 caracteres" maxlength="200">
            </div>
            <div class="col-md-4">
                <label for="">Estado:</label>
                <select name="estado_id" class="form-control mayus" autocomplete="off"  maxlength="200">
                        <?=$estados?>
                    </select>
            </div>
            <div class="col-md-4">
                <label for="">Municipio:</label>
                <select name="municipio_id" class="form-control mayus" autocomplete="off"  maxlength="200">
                        <?=$municipios?>
                    </select>
            </div>
        </div>
        <div class="row m-t-20">
            <div class="col-md-3">
                <label for="">Codigo Postal:</label>
                <input type="number"  name="codigo_postal"  class="form-control mayus" autocomplete="off" placeholder="Max 150 caracteres" maxlength="200">
            </div>
            <div class="col-md-3">
                <label for="">Correo Electronico:</label>
                <input type="email"  name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" class="form-control mayus" autocomplete="off" placeholder="Max 200 caracteres" maxlength="200">
            </div>
            <div class="col-md-3">
                <label for="">Referencias:</label>
                <select name="publicidad_id" class="form-control mayus" autocomplete="off"  maxlength="200">
                        <?=$publicidad?>
                    </select>
            </div>
        </div>
    </div>
</div>                
<div class="row m-t-20">
    <div class="col-md-12 text-right">
    <button id="btx_cancela_cliente" class="btn btn-danger waves-effect waves-themed"><i class="fa fa-ban m-r-5"></i> Cancelar</button>
        <button type="submit" class="btn btn-primary waves-effect waves-themed"><i class="fa fa-save m-r-5"></i> Crear Cliente</button>
    </div>
</div>
</form>

<script>
    
    $("input[name=telefono]").mask('00-0000-0000');
    $("input[name=celular]").mask('00-0000-0000');

</script>