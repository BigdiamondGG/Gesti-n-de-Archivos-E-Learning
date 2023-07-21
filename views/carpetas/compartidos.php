<?php include_once 'views/templates/header.php'; ?>
<div class="email-wrapper">
    <div class="email-sidebar">
        <div class="email-sidebar-content">
            <div class="email-navigation">
                <div class="list-group list-group-flush">
                    <a href="#" class="list-group-item active d-flex align-items-center"><i class='bx bxs-inbox me-3 font-20'></i><span>Inbox</span><span class="badge bg-primary rounded-pill ms-auto" id="message"><?php echo number_format($data['message']['total'], 0) ?></span></a>
                </div>
            </div>
        </div>
    </div>
    <div class="email-content">
        <div class="p-3">
            <div class="table-responsive">
                <table class="table table-hover nowrap" style="width: 100%;" id="tblEmail">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Usuario</th>
                            <th>Correo</th>
                            <th>Archivo</th>
                            <th>Fecha</th>
                            <th>Estado</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--end compose mail-->
    <!--start email overlay-->
    <div class="overlay email-toggle-btn-mobile"></div>
    <!--end email overlay-->
</div>
<?php include_once 'views/templates/footer.php'; ?>

<script>
    new PerfectScrollbar('.email-navigation');
</script>