<?php

use Illuminate\Support\Facades\Route;

Route::get('/latihan-php', function () {
    $nama = 'Muhammad Rahman Afrialdi (2401020058)'; // Ganti dengan nama & NIM Anda
    $nilai = [80, 75, 90, 85, 70]; // 5 nilai integer sesuai tugas

    $hitungRataRata = function (array $data): float {
        $total = 0;
        foreach ($data as $angka) {
            $total += $angka;
        }
        return $total / count($data);
    };

    $ratarata = $hitungRataRata($nilai);
    $status = ($ratarata >= 75) ? 'Lulus' : 'Perlu Perbaikan';

    return view('latihan-php', compact('nama', 'nilai', 'ratarata', 'status'));
});