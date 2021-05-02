<?php

namespace App\Controllers\about;

use App\Controllers\BaseController;

class About extends BaseController
{
	public function about()
	{
		$data = [
			'title' => 'About Me',
			'identitas' => [
				[
					'nama' => 'fhadly sabda dinov',
					'pekerjaan' => 'mahasiswa',
					'umur' => 20
				]
			]
		];
		return view('about/about', $data);
	}
}
