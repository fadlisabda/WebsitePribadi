<?php

namespace App\Controllers;

use App\Models\BukuModel;

class Buku extends BaseController
{
    /**
     * Instance of the main Request object.
     *
     * @var HTTP\IncomingRequest
     */
    protected $request;
    protected $bukuModel;
    public function __construct()
    {
        $this->bukuModel = new bukuModel();
    }
    public function index()
    {
        $buku = $this->bukuModel->findAll();
        $data = [
            'title' => 'My Book',
            'buku' => $buku
        ];
        return view('buku/index', $data);
    }

    public function detail($slug)
    {
        $data = [
            'title' => 'Detail Buku',
            'buku' => $this->bukuModel->getBuku($slug)
        ];
        if (empty($data['buku'])) {
            throw \CodeIgniter\Exceptions\PageNotFoundException::forPageNotFound('Judul Buku ' . $slug . ' tidak ditemukan.');
        }
        return view('buku/detail', $data);
    }

    public function create()
    {
        $data = [
            'title' => 'Form Tambah Data Buku'
        ];
        return view('buku/create', $data);
    }

    public function save()
    {
        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->bukuModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $this->request->getVar('sampul')
        ]);
        session()->setFlashData('pesan', 'Data berhasil ditambahkan');
        return redirect()->to('/buku');
    }
}
