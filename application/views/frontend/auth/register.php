<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?= $title ?></title>

    <!-- Custom fonts for this template-->
    <link href="<?= base_url('assets/') ?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?= base_url('assets/') ?>css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-lg-6">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                                    </div>
                                    <?php echo $this->session->flashdata('message'); ?>
                                    <form class="user" action="<?= base_url('register') ?>" method="POST">
                                        <div class="form-group row">
                                            <div class="col-sm">
                                                <input type="text" class="form-control form-control-user" name="nama" id="nama" placeholder="Masukkan Nama Lengkap" onkeypress="return harusHuruf(event)"><?= form_error('nama', '<small class="text-danger pl-3">', '</small>') ?>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user" name="email" id="email" placeholder="Masukkan Alamat Email"><?= form_error('email', '<small class="text-danger pl-3">', '</small>') ?>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-6 mb-3 mb-sm-0">
                                                <input type="password" class="form-control form-control-user" name="password" id="password" placeholder="Masukkan Password"><?= form_error('password', '<small class="text-danger pl-3">', '</small>') ?>
                                            </div>
                                            <div class="col-sm-6">
                                                <input type="password" class="form-control form-control-user" name="konfpass" id="konfpass" placeholder="Masukkan Ulang Password"><?= form_error('konfpass', '<small class="text-danger pl-3">', '</small>') ?>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck" onclick="showPass()">
                                                <label class="custom-control-label" for="customCheck">Tampilkan Password</label>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                            Registrasi
                                        </button>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        Sudah memiliki akun? <a href="login.html">Login!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="<?= base_url('assets/') ?>vendor/jquery/jquery.min.js"></script>
        <script src="<?= base_url('assets/') ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="<?= base_url('assets/') ?>vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="<?= base_url('assets/') ?>js/sb-admin-2.min.js"></script>
        <script>
            function harusHuruf(evt) {
                var charCode = (evt.which) ? evt.which : event.keyCode
                if ((charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122) && charCode > 32)
                    return false;
                return true;
            }

            function showPass() {
                var x = document.getElementById("password");
                if (x.type === "password") {
                    x.type = "text";
                } else {
                    x.type = "password";
                }
            }
        </script>

</body>

</html>