<?php
session_start();

if (!isset($_SESSION['usuario'])) {
    header("Location: login.php");
    exit;
}

require_once 'config/conexao.php';
require_once 'idioma.php';

require_once 'includes/header.php'; ?>

<section>

    <div>

        <h1>
            <?= $traducao['bem_vindo'] ?>,
            <?= htmlspecialchars($_SESSION['usuario']) ?>!
        </h1>

        <p><?= $traducao['logado'] ?></p>

        <div>

            <a href="admin/usuarios/listar.php">
                <?= $traducao['usuario'] ?>
            </a>

            <a href="sobre.php">
                <?= $traducao['sobre'] ?>
            </a>

            <a href="logout.php">
                <?= $traducao['sair'] ?>
            </a>

        </div>

    </div>

</section>

<?php require_once 'includes/footer.php'; ?>
