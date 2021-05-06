<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2>My Contact</h2>
            <?php foreach ($mycontact as $m) : ?>
                <div class="list-group">
                    <a href="<?= $m['github'] ?>" class="list-group-item list-group-item-action" target="_blank">Github</a>
                    <a href="<?= $m['instagram'] ?>" class="list-group-item list-group-item-action" target="_blank">Instagram</a>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>