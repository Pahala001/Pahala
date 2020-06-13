<!--================Home Banner Area =================-->
<section class="banner_area">
    <div class="banner_inner d-flex align-items-center">
        <div class="kontak bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background="">
        </div>
        <div class="container">
            <div class="banner_content text-center">
                <h2>Kontak</h2>
                <div class="page_link">
                    <a href="<?=base_url('welcome')?>">Beranda</a>
                    <a href="<?=base_url('welcome/kontak')?>">Kontak</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Home Banner Area =================-->


<!--================Contact Area =================-->
<section class="contact_area p_40">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="contact_info">
                    <div class="info_item">
                        <i class="lnr lnr-home"></i>
                        <h6>Toba Samosir Sumatera Utara, Indonesia</h6>
                        <p>Institut Teknologi Del Jl. Sisingamangaraja, Sitoluama Laguboti </p>
                    </div>
                    <div class="info_item">
                        <i class="lnr lnr-phone-handset"></i>
                        <h6><a href="#">
                                087830016267</a></h6>
                        <p>Senin - Jumat | Jam 7 - Jam 5</p>
                    </div>
                    <div class="info_item">
                        <i class="lnr lnr-envelope"></i>
                        <h6><a href="#">pahalapicauly@Gmail.com</a></h6>
                        <p>Email diatas hanya untuk keperluan penting!</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <form class="row contact_form" action="contact_process.php" method="post" id="contactForm"
                    novalidate="novalidate">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" class="form-control" id="name" name="name"
                                placeholder="Masukan nama anda ">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" id="email" name="email"
                                placeholder="Masukan email anda">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="subject" name="subject"
                                placeholder="Masukan subject anda ">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <textarea class="form-control" name="message" id="message" rows="1"
                                placeholder="Masukan pesan anda "></textarea>
                        </div>
                    </div>
                    <div class="col-md-12 text-right">
                        <button type="submit" value="submit" class="btn submit_btn">Kirim Pesan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!--================Contact Area =================-->