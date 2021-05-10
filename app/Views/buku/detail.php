<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="mt-2">Detail Buku</h2>
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img src="/img/<?= $buku['sampul']; ?>" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $buku['judul']; ?></h5>
                            <p class="card-text"><b><?= $buku['penulis']; ?></b></p>
                            <p class="card-text"><small class="text-muted"><b>Penerbit : </b><?= $buku['penerbit']; ?></small></p>
                            <a href="/buku/edit/<?= $buku['slug']; ?>" class="btn btn-warning">Edit</a>
                            <form action="/buku/<?= $buku['id']; ?>" method="post" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger" onclick="return confirm('Apakah Anda Yakin?');">Delete</button>
                            </form>
                            <br><br>
                            <a href="/buku">Kembali ke my book</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>