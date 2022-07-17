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
                                        <?php foreach ($kerusakan as $kr) : ?>
                                            <input type="hidden" name="kerusakan[]" id="kerusakan[]" value=<?= $kr['id_kerusakan'] ?>>
                                        <?php endforeach; ?>
                                        <input type="hidden" name="jumlah" id="jumlah" value="<?= $countK ?>">
                                        <?php foreach ($gejala as $gj) : ?>
                                            <input type="checkbox" name="pilihan[]" id="pilihan[]" value="<?= $gj['id_gejala'] ?>"><?= form_error('pilihan[]', '<small class="text-danger pl-3">', '</small>') ?> <?= $gj['gejala'] ?><br>
                                        <?php endforeach; ?>
                                    </div>
                                    <div class="card-footer">
                                        <div class="text-right">
                                            <button class="btn btn-primary" type="submit">Submit</button>
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