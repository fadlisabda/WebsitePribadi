<?php

namespace App\Models;

use CodeIgniter\Model;

class KaryawanModel extends Model
{
    protected $table = 'data';
    protected $useTimestamps = true;
    protected $allowedFields = ['nama', 'email'];
    public function search($keyword)
    {
        return $this->table('data')->like('nama', $keyword)->orLike('email', $keyword);
    }
}
