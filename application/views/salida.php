<div>
    <h2 class="text-center">Tabla Admin</h2>
    <div class="table-responsive">
        <table class="table table-striped mt-3">
            <thead>
                <tr>
                <th scope="col">idUsuario</th>
                <th scope="col">USER</th>
                <th scope="col">email</th>
                <th scope="col">password</th>
                <th scope="col">estado</th>
                <th scope="col">perfil</th>
                <th scope="col">idIdioma</th>
                <th scope="col">fechaAlta</th>
                <th scope="col">fechaBaja</th>
                <th scope="col">idEmpresa</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($usuarios as $usuario): ?>
                    <tr>
                        <td><?= $usuario['idUsuario'] ?></td>
                        <td><?= $usuario['usuario'] ?></td>
                        <td><?= $usuario['email'] ?></td>
                        <td><?= $usuario['password'] ?></td>
                        <td><?= $usuario['estado'] ?></td>
                        <td><?= $usuario['perfil'] ?></td>
                        <td><?= $usuario['idIdioma'] ?></td>
                        <td><?= $usuario['fechaAlta'] ?></td>
                        <td><?= $usuario['fechaBaja'] ?></td>
                        <td><?= $usuario['idEmpresa'] ?></td>
                    </tr>
                <?php endforeach ?>
            </tbody>    
        </table>
    </div>
    <div class="text-center mt-3">
        <a href="<?= base_url('excel_import') ?>" class="btn btn-secondary">Volver</a>
        <button id="submit-salida-1-btn" class="btn btn-secondary">Guardar</button>        
    </div>
    <hr>
    <h2 class="text-center mt-5">Tabla Usuarios</h2>                    
    <div class="table-responsive">
        <table class="table table-striped mt-3">
            <thead>
                <tr>
                <th scope="col">idUsuario</th>
                <th scope="col">USER</th>
                <th scope="col">apellido</th>
                <th scope="col">nombre</th>
                <th scope="col">dni</th>
                <th scope="col">email</th>
                <th scope="col" style="min-width: 120px;">celular</th>
                <th scope="col">idSucursal</th>
                <th scope="col">password</th>
                <th scope="col">estado</th>
                <th scope="col">tipo</th>
                <th scope="col" style="min-width: 140px;">fechaAlta</th>
                <th scope="col" style="min-width: 140px;">fechaBaja</th>
                <th scope="col">idIdioma</th>
                <th scope="col">idEmpresa</th>
                <th scope="col">idUsuarioAdmin</th>
                </tr>
            </thead>
            <tbody>
                <?php $count = 1; ?>
                <?php foreach($usuarios as $usuario): ?>
                    <tr>
                        <td><?= $count ?></td>
                        <td><?= $usuario['usuario'] ?></td>
                        <td><?= $usuario['apellido'] ?></td>
                        <td><?= $usuario['nombre'] ?></td>
                        <td><?= $usuario['dni'] ?></td>
                        <td><?= $usuario['email'] ?></td>
                        <td><?= $usuario['celular'] ?></td>
                        <td><?= $usuario['idSucursal'] ?></td>
                        <td><?= $usuario['password'] ?></td>
                        <td><?= $usuario['estado'] ?></td>
                        <td><?= $usuario['tipo'] ?></td>
                        <td><?= $usuario['fechaAlta'] ?></td>
                        <td><?= $usuario['fechaBaja'] ?></td>
                        <td><?= $usuario['idIdioma'] ?></td>
                        <td><?= $usuario['idEmpresa'] ?></td>
                        <td><?= $usuario['idUsuarioAdmin'] ?></td>
                    </tr>
                    <?php $count++; ?>
                <?php endforeach ?>
            </tbody>    
        </table>
    </div>
    <div class="text-center mt-3">
        <a href="<?= base_url('excel_import') ?>" class="btn btn-secondary">Volver</a>
        <button id="submit-salida-2-btn" class="btn btn-secondary">Guardar</button>        
    </div>
</div>    

<script>
    const usuarios = <?= json_encode($usuarios) ?>;
    const btnSalida1 = document.querySelector('#submit-salida-1-btn');   
    const btnSalida2 = document.querySelector('#submit-salida-2-btn');   
    addEventListener('DOMContentLoaded', (e) => {
        btnSalida1.addEventListener('click', submitSalida1);
        btnSalida2.addEventListener('click', submitSalida2);
    })

    function submitSalida1(e)
    {
        e.preventDefault();
        btnSalida1.disabled = true;
        let endpoint = '<?= base_url('excel/store_admin_users') ?>';
        $.ajax({
            url:endpoint,
            method: 'post',
            data: {usuarios: usuarios},
            dataType: 'json',
            success: function(res){
                console.log(res);                  
                alert('Datos almacenados con éxito');
            },
            error: function(err) {
                alert('Algo salio mal');
            }
        });  
    }

    function submitSalida2(e)
    {
        e.preventDefault();
        btnSalida2.disabled = true;
        let endpoint = '<?= base_url('excel/store_users') ?>';
        $.ajax({
            url:endpoint,
            method: 'post',
            data: {usuarios: usuarios},
            dataType: 'json',
            success: function(res){
                console.log(res);                  
                alert('Datos almacenados con éxito');
            },
            error: function(err) {
                alert('Algo salio mal');
            }
        });  
    }
    
</script>