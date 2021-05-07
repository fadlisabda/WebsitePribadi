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
            'title' => 'Form Tambah Data Buku',
            'validation' => \Config\Services::validation()
        ];
        return view('buku/create', $data);
    }

    public function save()
    {
        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[buku.judul]',
                'errors' => [
                    'required' => '{field} buku harus diisi.',
                    'is_unique' => '{field} buku sudah terdaftar'
                ]
            ],
            'penulis' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} buku harus diisi.'
                ]
            ],
            'penerbit' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} buku harus diisi.'
                ]
            ],
            'sampul' => [
                'rules' => 'required|is_unique[buku.judul]',
                'errors' => [
                    'required' => '{field} buku harus diisi.',
                    'is_unique' => '{field} buku sudah terdaftar'
                ]
            ]
        ])) {
            $validation = \Config\Services::validation();
            return redirect()->to('/buku/create')->withInput()->with('validation', $validation);
        }
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
