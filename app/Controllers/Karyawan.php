<?php

namespace App\Controllers;

use App\Models\KaryawanModel;
use CodeIgniter\HTTP\Request;

class Karyawan extends BaseController
{
    /**
     * Instance of the main Request object.
     *
     * @var HTTP\IncomingRequest
     */
    protected $request;
    protected $karyawanModel;
    public function __construct()
    {
        $this->karyawanModel = new KaryawanModel();
    }
    public function index()
    {
        $currentPage = $this->request->getVar('page_data') ? $this->request->getVar('page_data') : 1;

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $karyawan = $this->karyawanModel->search($keyword);
        } else {
            $karyawan = $this->karyawanModel;
        }

        $data = [
            'title' => 'Daftar Karyawan',
            'karyawan' => $karyawan->paginate(6, 'data'),
            'pager' => $this->karyawanModel->pager,
            'currentPage' => $currentPage
        ];
        return view('karyawan/index', $data);
    }
}
