<header class="navbar">
        <a href="./home.php"><img src="../public/logo.png" alt="" width="200px"></a>
        <form action="semua_produk.php" method="get">
            <input type="text" name="query" id="" placeholder="Cari Produk">
            <button type="submit"><img src="../public/search.png" width="40%" style="padding: 6px 0px;" alt=""></button>
        </form>

        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="background-color: transparent !important; font-family: 'Pragmatica'">
                Kategori
            </button>
            <ul class="dropdown-menu">
                <li><button class="dropdown-item" type="button"><a href="semua_produk.php">Semua Produk</a></button></li>
                <li><button class="dropdown-item" type="button"><a href="kategori.php?kategori=Obat bebas">Obat Bebas</a></button></li>
                <li><button class="dropdown-item" type="button"><a href="kategori.php?kategori=Obat bebas terbatas">Obat Bebas Terbatas</a></button></li>
                <li><button class="dropdown-item" type="button"><a href="kategori.php?kategori=Obat keras">Obat Keras</a></button></li>
                <li><button class="dropdown-item" type="button"><a href="kategori.php?kategori=Obat herbal (jamu)">Obat Herbal/Jamu</a></button></li>
                <li><button class="dropdown-item" type="button"><a href="kategori.php?kategori=Non obat">Non-Obat</a></button></li>
            </ul>
        </div>

        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="background-color: transparent !important; font-family: 'Pragmatica'">
             <i class="fa fa-user" aria-hidden="true"></i>  <?= $_SESSION['name'] ?>
            </button>
            <ul class="dropdown-menu">
                <li><p class="dropdown-item">
                    <?php
                        echo $_SESSION ['name'];
                    ?>
          </p></li>
                <li><a href="edit_profile.php" class="dropdown-item">Profile</a></li>
                <li><a href="logout.php" class="dropdown-item">Log Out</a></li>
            </ul>
        </div>
        <a href="Keranjang.php">
            <i class="fa">&#xf07a;</i>
            <span class="cart_count" id="cartBadge">0</span>
        </a>
</header>