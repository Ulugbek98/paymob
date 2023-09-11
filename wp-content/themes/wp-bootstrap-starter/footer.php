<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WP_Bootstrap_Starter
 */

?>
<!-- Contact Area Start -->
<section class="pelum-contact-area" data-scroll-index="9">
   <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <div class="site-heading wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.3s">
               <?php if (pll_current_language() == 'ru') { ?>
                  <h4>Обратная связь</h4>
                  <h2>Оставьте заявку</h2>
               <?php } else { ?>
                  <h4>Qayta aloqa</h4>
                  <h2>Habar qoldiring</h2>
               <?php } ?>
               <span class="heading_overlay"></span>
            </div>
         </div>
      </div>
      <div class="row">
         <div class="col-lg-7">
            <div class="contact-form wow fadeInLeft" data-wow-duration="2s" data-wow-delay="0.5s">

               <?php if (pll_current_language() == 'ru') { ?>
                  <form>
                     <div class="row">
                        <div class="col-12 col-md-6">
                           <p>
                              <input class="form-control" type="text" placeholder="Имя">
                           </p>
                        </div>
                        <div class="col-12 col-md-6">
                           <p>
                              <input class="form-control" type="text" placeholder="Тема">
                           </p>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-lg-6">
                           <p>
                              <input class="form-control" type="email" placeholder="E-mail">
                           </p>
                        </div>
                        <div class="col-lg-6">
                           <p>
                              <input class="form-control" type="tel" placeholder="Номер">
                           </p>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-lg-12">
                           <p>
                              <textarea class="form-control" placeholder="Ваше сообщение..."></textarea>
                           </p>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-lg-12">
                           <p>
                              <button type="submit" class="pelum-btn">Отправить сообщение <span></span></button>
                           </p>
                        </div>
                     </div>
                  </form>
               <?php } else { ?>
                  <form>
                     <div class="row">
                        <div class="col-12 col-md-6">
                           <p>
                              <input class="form-control" type="text" placeholder="Ismingiz">
                           </p>
                        </div>
                        <div class="col-12 col-md-6">
                           <p>
                              <input class="form-control" type="text" placeholder="Mavzu">
                           </p>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-lg-6">
                           <p>
                              <input class="form-control" type="email" placeholder="E-mail">
                           </p>
                        </div>
                        <div class="col-lg-6">
                           <p>
                              <input class="form-control" type="tel" placeholder="Telefon raqamingiz">
                           </p>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-lg-12">
                           <p>
                              <textarea class="form-control" placeholder="Sizning murojatingiz..."></textarea>
                           </p>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-lg-12">
                           <p>
                              <button type="submit" class="pelum-btn">Habarni jonatish <span></span></button>
                           </p>
                        </div>
                     </div>
                  </form>
               <?php } ?>
            </div>
         </div>
         <div class="col-lg-5">
            <div class="contact-info">
            <?php if (pll_current_language() == 'ru') { ?>
                        <div class="single-contact-info wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.3s">
                            <div class="contact-info-icon">
                                <i class="fa fa-location-arrow"></i>
                            </div>
                            <div class="contact-info-text">
                                <h3>Головной офис</h3>
                                <p>ул. Богсарой, 43д</p>
                            </div>
                        </div>
                        <div class="single-contact-info wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.5s">
                            <div class="contact-info-icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="contact-info-text">
                                <h3>Сервисный центр</h3>
                                <p>555-121-555</p>
                            </div>
                        </div>
                        <div class="single-contact-info wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.7s">
                            <div class="contact-info-icon">
                                <i class="fa fa-envelope"></i>
                            </div>
                            <div class="contact-info-text">
                                <h3>Почта</h3>
                                <p>info@paymob.com</p>
                            </div>
                        </div>
                    <?php } else { ?>
                        <div class="single-contact-info wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.3s">
                            <div class="contact-info-icon">
                                <i class="fa fa-location-arrow"></i>
                            </div>
                            <div class="contact-info-text">
                                <h3>Bosh ofis</h3>
                                <p>st. Bogsaroy, 43d</p>
                            </div>
                        </div>
                        <div class="single-contact-info wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.5s">
                            <div class="contact-info-icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="contact-info-text">
                                <h3>Xizmat markazi</h3>
                                <p>555-121-555</p>
                            </div>
                        </div>
                        <div class="single-contact-info wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.7s">
                            <div class="contact-info-icon">
                                <i class="fa fa-envelope"></i>
                            </div>
                            <div class="contact-info-text">
                                <h3>Pochta</h3>
                                <p>info@paymob.com</p>
                            </div>
                        </div>
                    <?php } ?>

            </div>
         </div>
      </div>
   </div>
</section>
<!-- Contact Area End -->

<!-- Map Area Start -->
<section class="map" data-scroll-index="9">
   <div class="mapouter">
      <div class="gmap_canvas">
         <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d749.4134766927043!2d69.26397320662767!3d41.29464700298451!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1z0YPQu9C40YbQsCDQsdC-0LPRgdCw0YDQvtC5!5e0!3m2!1sru!2s!4v1694094938587!5m2!1sru!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>
   </div>
</section>
<!-- Map Area End -->

<!-- Footer Area Start -->
<footer class="pelum-footer-area">
	<div class="ocean">
		<div class="wave"></div>
		<div class="wave"></div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="footer-box">
					<div class="footer-logo wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.3s">
						<a href="index.html"><img src="<?= get_field('logo',57); ?>" alt="footer logo"></a>
					</div>
					<div class="footer-copyright wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.5s">
					
					</div>
					<div class="footer-social">
						<ul>
							<li class="wow fadeInLeft" data-wow-duration="2s" data-wow-delay="0.3s"><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li class="wow fadeInLeft" data-wow-duration="2s" data-wow-delay="0.5s"><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li class="wow fadeInLeft" data-wow-duration="2s" data-wow-delay="0.7s"><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li class="wow fadeInLeft" data-wow-duration="2s" data-wow-delay="0.9s"><a href="#"><i class="fa fa-youtube"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- Footer Area End -->



<!-- //// SCRIPTS //// -->
<script src="<?= get_template_directory_uri() ?>/assets/js/jquery.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/popper.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/bootstrap.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/scrollIt.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/owl.carousel.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/jquery.magnific-popup.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/init.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/wow.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/main.js"></script>

<?php wp_footer(); ?>
</body>

</html>