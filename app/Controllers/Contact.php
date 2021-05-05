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
                    'instagram' => 'https://www.instagram.com/fadlisabda01/',
                    'kota' => 'https://www.google.com/maps/place/Pekanbaru,+Kota+Pekanbaru,+Riau/@0.5137908,101.3711354,12z/data=!3m1!4b1!4m5!3m4!1s0x31d5ab80690ee7b1:0x94dde92c3823dbe4!8m2!3d0.5070677!4d101.4477793'
                ]
            ]
        ];
        return view('contact/index', $data);
    }
}
