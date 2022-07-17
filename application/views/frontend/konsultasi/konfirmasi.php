                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <div class="row justify-content-center">
                        <div class="col-lg">
                            <?php echo $this->session->flashdata('message'); ?>
                            <div class="card shadow mb-4">
                                <form action="<?= base_url('konsultasi') ?>" method="post" enctype="multipart/form-data">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary"><?= $cardHeader ?></h6>
                                    </div>
                                    <div class="card-body">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td><strong>Nama &nbsp;</strong></td>
                                                    <td> : &nbsp;&nbsp;&nbsp;</td>
                                                    <td>&nbsp;<?= $user['nama']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Email &nbsp;</strong></td>
                                                    <td>: &nbsp;&nbsp;&nbsp;</td>
                                                    <td>&nbsp;<?= $user['email']; ?></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <input type="hidden" name="konsul-id" id="konsul-id" value="<?= $user['id_user']; ?>"><?= form_error('konsul-id', '<small class="text-danger pl-3">', '</small>') ?>
                                    <div class="form-group" hidden>
                                        <?php foreach ($gejala as $g) : ?>
                                            <input type="text" class="form-control" id="id_gejala[]" name="id_gejala[]" value="<?= $g['id_gejala'] ?>">
                                        <?php endforeach; ?>
                                    </div>
                                    <div class="card-footer">
                                        <div class="text-right">
                                            <button class="btn btn-primary" type="submit">Mulai Konsultasi</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->