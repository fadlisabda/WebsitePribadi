<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<h1>About Me</h1>
<?php foreach ($identitas as $i) : ?>
    <p>Perkenalkan Nama Saya <?= $i['nama']; ?> pekerjaan saya sekarang <?= $i['pekerjaan']; ?> umur saya <?= $i['umur']; ?></p>
<?php endforeach; ?>
<?= $this->endSection(); ?>