<?php

function protegerSenha(string $senha): string
{
    $etapa1_md5  = md5($senha);
    $etapa2_sha1 = sha1($etapa1_md5);
    $etapa3_hash = hash('sha256', $etapa2_sha1);

    return $etapa3_hash;
}
