<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--favicon-->
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo BASE_URL; ?>assets/images/favicon.ico">
    <link href="<?php echo BASE_URL; ?>assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
    <link href="<?php echo BASE_URL; ?>assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" />
    <link href="<?php echo BASE_URL; ?>assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />
    <!-- loader-->
    <link href="<?php echo BASE_URL; ?>assets/css/pace.min.css" rel="stylesheet" />
    <script src="<?php echo BASE_URL; ?>assets/js/pace.min.js"></script>  

    <!-- Bootstrap CSS -->
    <link href="<?php echo BASE_URL; ?>assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo BASE_URL; ?>assets/css/bootstrap-extended.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    
    <link href="<?php echo BASE_URL; ?>assets/plugins/select2/css/select2.min.css" rel="stylesheet" />
	<link href="<?php echo BASE_URL; ?>assets/plugins/select2/css/select2-bootstrap-5-theme.min.css" rel="stylesheet" />
    
    <link href="<?php echo BASE_URL; ?>assets/css/app.css" rel="stylesheet">
    <link href="<?php echo BASE_URL; ?>assets/css/icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/dropzone@5/dist/min/dropzone.min.css" type="text/css" />
    <!-- Theme Style CSS -->
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/dark-theme.css" />
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/semi-dark.css" />
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/header-colors.css" />
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/jquery-ui.min.css" />
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/DataTables/datatables.min.css" />

    <title><?php echo TITLE . ' - ' . $data['title']; ?></title>
</head>

<body>
    <!--wrapper-->
    <div class="wrapper bg">
        <!--sidebar wrapper -->
        <div class="sidebar-wrapper bg-info" data-simplebar="true">
            <div class="sidebar-header bg-info">
                <!-- <div>
                    <img src="<?php echo BASE_URL; ?>assets/images/logo.png" class="logo-icon" alt="logo icon">
                </div> -->
                <div>
                    <h4 class="logo-text text-white"><?php echo TITLE; ?></h4>
                </div>
                <div class="toggle-icon ms-auto text-info"><i class='bx bx-arrow-to-left'></i>
                </div>
            </div>
            <!--navigation-->
            <ul class="metismenu" id="menu">
                <li>
                    <a class="text-white" href="<?php echo BASE_URL . 'admin'; ?>">
                        <div class="parent-icon"><i class="fas fa-hdd"></i>
                        </div>
                        <div class="menu-title">Mi unidad</div>
                    </a>
                </li>
                <li>
                    <a class="text-white" href="<?php echo BASE_URL . 'shared' ?>">
                        <div class="parent-icon"><i class="fas fa-envelope-open-text"></i>
                        </div>
                        <div class="menu-title">Compartidos</div>
                    </a>
                </li>
                <li>
                    <a class="text-white" href="<?php echo BASE_URL . 'alls/pagePublic' ?>">
                        <div class="parent-icon"><i class="fas fa-cloud"></i>
                        </div>
                        <div class="menu-title">Carpetas Publicas</div>
                    </a>
                </li>
                <?php if ($_SESSION['rol'] == 1) { ?>
                <li>
                    <a  class="text-white" href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class="fa-solid fa-screwdriver-wrench"></i>
                        </div>
                        <div class="menu-title">Administración</div>
                    </a>
                    <ul>
                        <li> <a href="<?php echo BASE_URL . 'usuarios'; ?>"><i class="bx bx-right-arrow-alt"></i>Usuarios</a>
                        </li>
                        <!-- <li> <a href="<?php echo BASE_URL . 'admin/datos'; ?>"><i class="bx bx-right-arrow-alt"></i>Configuracion</a>
                        </li> -->
                        <!-- <li> <a href="<?php echo BASE_URL . 'admin/logs'; ?>"><i class="bx bx-right-arrow-alt"></i>Log de Acceso</a> -->
                        <li> <a href="#"><i class="bx bx-right-arrow-alt"></i>Log de Acceso</a>                            
                    </li>
                    </ul>
                </li>
                <?php } ?> 
                
            </ul>
            <!--end navigation-->
        </div>
        <!--end sidebar wrapper -->
        <!--start header -->
        <header>
            <div class="topbar d-flex align-items-center bg-info">
                <nav class="navbar navbar-expand">
                    <div class="mobile-toggle-menu"><i class='bx bx-menu'></i>
                    </div>
                    <div class="search-bar flex-grow-1">
                        <div class="position-relative">
                           <!-- <-- <h6 ><?php echo TITLE; ?></h6> -->
                        </div>
                    </div>
                    <div class="user-box dropdown">
                        <a class="d-flex align-items-center nav-link dropdown-toggle dropdown-toggle-nocaret" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <?php if ($_SESSION['perfil_usuario'] == null) {
                                $perfil = BASE_URL . 'assets/images/logo.png';
                            } else {
                                $perfil = BASE_URL . 'assets/images/avatars/' . $_SESSION['perfil_usuario'];
                            } ?>
                            <img src="<?php echo $perfil; ?>" class="user-img" alt="user avatar">
                            <div class="user-info ps-3">
                                <p class="user-name mb-0 text-white"><?php echo $_SESSION['nombre_usuario']; ?></p>
                                <p class="designattion mb-0 text-white"><?php echo $_SESSION['correo_usuario']; ?></p>
                            </div>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item text- " href="<?php echo BASE_URL . 'usuarios/profile'; ?>"><i class="bx bx-user"></i><span>Perfil</span></a>
                            </li>
                            <li>
                                <div class="dropdown-divider mb-0"></div>
                            </li>
                            <li><a class="dropdown-item text-info" href="<?php echo BASE_URL . 'usuarios/salir'; ?>"><i class='bx bx-log-out-circle'></i><span>Salir</span></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
        <!--end header -->
        <!--start page wrapper -->
        <div class="page-wrapper">
            <div class="page-content">