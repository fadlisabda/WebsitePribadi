<?php

namespace App\Controllers;

class Contact extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Contact',
            'mycontact' => [
                [
                    'github' => 'https://github.com/fadlisabda',
                    'instagram' => 'https://www.instagram.com/fadlisabda01/'
                ]
            ]
        ];
        return view('contact/index', $data);
    }
}
