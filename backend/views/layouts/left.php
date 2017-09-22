<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="left-pull">
                <img src="http://localhost/hhis/backend/web/dist/img/logo.png" alt="User Image" width="200px" height="80px"/>
            </div>
        </div>


        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu'],
                'items' => [
                    ['label' => 'Cari Data SIP', 'icon' => ' fa-search', 'url' => ['no-izin-dokter/index']],
                    ['label' => 'Tambah Data SIP', 'icon' => ' fa-plus-circle', 'url' => ['no-izin-dokter/create']],
                    [
                        'label' => 'Kelola Artikel',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Tambah Artikel', 'icon' => 'file-code-o', 'url' => ['artikel/create'],],
                            ['label' => 'Daftar Artikel', 'icon' => 'dashboard', 'url' => ['artikel/index'],],

                        ],
                    ],
                ],
            ]
        ) ?>

    </section>

</aside>
