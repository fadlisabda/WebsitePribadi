<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Codeigniter4</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" aria-current="page" href="/">Home</a>
                <a class="nav-link active" href="/about">About Me</a>
                <a class="nav-link active" href="/contact">My Contact</a>
                <a class="nav-link active" href="/buku">My Book</a>
                <a class="nav-link active" href="/karyawan">My Data</a>
                <?php if (logged_in()) : ?>
                    <a class="nav-link active" href="/logout">Logout</a>
                <?php else : ?>
                    <a class="nav-link active" href="/login">Login</a>
                <?php endif; ?>
            </div>
        </div>
    </div>
</nav>