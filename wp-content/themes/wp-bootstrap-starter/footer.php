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
						<form id="contact-form" method="POST">
							<div class="row">
								<div class="col-12 col-md-6">
									<p>
										<input class="form-control" id="form-name" type="text" placeholder="Имя">
									</p>
								</div>
								<div class="col-12 col-md-6">
									<p>
										<input class="form-control" id="form-phone" type="tel" placeholder="Номер">
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<p>
										<textarea class="form-control" id="form-message" placeholder="Ваше сообщение..."></textarea>
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-6">
									<p>
										<button type="submit" onclick="message()" class="pelum-btn">Отправить сообщение <span></span></button>
									</p>
								</div>
								<div class="col-lg-6">
									<p>
									<div class="g-recaptcha" data-sitekey="6LfgAx0oAAAAAFmUaHdL8Bqdp0g5_FwxOf3QBjqJ" id="CAptcha"></div>
									<p class="form-message-result" id="result_succes" style="color:#4777f4;font-weight:800;"></p>
									</p>
								</div>
							</div>
						</form>
					<?php } else { ?>
						<form id="contact-form" method="POST">
							<div class="row">
								<div class="col-12 col-md-6">
									<p>
										<input class="form-control" id="form-name" type="text" placeholder="Ismingiz">
									</p>
								</div>
								<div class="col-12 col-md-6">
									<p>
										<input class="form-control" id="form-phone" type="tel" placeholder="Telefon raqamingiz">
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<p>
										<textarea class="form-control" id="form-message" placeholder="Sizning murojatingiz..."></textarea>
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-6">
									<p>
										<button type="submit" onclick="message()" class="pelum-btn">Habarni jonatish <span></span></button>
									</p>
								</div>

								<div class="col-lg-6">
									<p>
									<div class="g-recaptcha" data-sitekey="6LfgAx0oAAAAAFmUaHdL8Bqdp0g5_FwxOf3QBjqJ" id="CAptcha"></div>
									<p class="form-message-result" id="result_succes" style="color:#4777f4;font-weight:800;"></p>
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
								<h3>Адрес</h3>
								<p><?= get_field('address-ru', 49); ?></p>
							</div>
						</div>
						<div class="single-contact-info wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.5s">
							<div class="contact-info-icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="contact-info-text">
								<h3>Сервисный центр</h3>
								<p><?= get_field('primary-phone-number', 49); ?></p>
							</div>
						</div>
						<div class="single-contact-info wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.7s">
							<div class="contact-info-icon">
								<i class="fa fa-envelope"></i>
							</div>
							<div class="contact-info-text">
								<h3>Почта</h3>
								<p><?= get_field('email', 49); ?></p>
							</div>
						</div>
					<?php } else { ?>
						<div class="single-contact-info wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.3s">
							<div class="contact-info-icon">
								<i class="fa fa-location-arrow"></i>
							</div>
							<div class="contact-info-text">
								<h3>Manzil</h3>
								<p><?= get_field('address-uz', 49); ?></p>
							</div>
						</div>
						<div class="single-contact-info wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.5s">
							<div class="contact-info-icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="contact-info-text">
								<h3>Xizmat markazi</h3>
								<p><?= get_field('primary-phone-number', 49); ?></p>
							</div>
						</div>
						<div class="single-contact-info wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.7s">
							<div class="contact-info-icon">
								<i class="fa fa-envelope"></i>
							</div>
							<div class="contact-info-text">
								<h3>Pochta</h3>
								<p><?= get_field('email', 49); ?></p>
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
						<a href="index.html"><img src="<?= get_field('logo', 57); ?>" alt="footer logo"></a>
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

<?php wp_footer(); ?>

<!-- //// SCRIPTS //// -->
<script src="<?= get_template_directory_uri() ?>/assets/js/jquery.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/ajax-contact.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/popper.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/bootstrap.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/scrollIt.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/owl.carousel.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/jquery.magnific-popup.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/init.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/wow.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/main.js"></script>

<script>
	function message() {
		var isCaptchaValidated = false;
		var response = grecaptcha.getResponse();
		if (response.length == 0) {
			isCaptchaValidated = false;
			console.log('Please verify that you are a Human.');
		} else {
			isCaptchaValidated = true;
		}


		if (isCaptchaValidated) {
			//you can now submit your form
			const userLanguage = document.documentElement.lang
			let name = document.getElementById("form-name").value;
			let phone = document.getElementById("form-phone").value;
			let message = document.getElementById("form-message").value;
			var url = window.location.href;
			var re = /^[0-9-+\s()]*$/;
			var answers = [];
			if (phone != '' && re.exec(phone)) {
				if (name != '') {
					answers.push('Имя - ' + name);
					answers.push('Номер телефона - ' + phone);
					answers.push('Сообщение - ' + message);
					answers = answers.join('\n');
					$.ajax({
						url: 'https://api.telegram.org/bot6539688285:AAHmoERxHuNiZ7TS-lLpMc_HC5sop0NZasA/sendMessage',
						method: 'POST',
						data: {
							chat_id: -1001977697422,
							text: answers,
							message: phone

						},
						success: function() {
							if (userLanguage == 'ru-RU') {
								document.getElementById("result_succes").innerHTML = "Ваша Заявка принята";
							} else {
								document.getElementById("result_succes").innerHTML = "Murojatingiz qabul qilindi";
							}
							grecaptcha.reset();
							answers = [];
						},
						failure: function() {
							console.log(answers + "not sent");
						}
					});
				} else {
					document.getElementById("result_succes").innerHTML ="Sizning ismingiz (majburiy)";
					grecaptcha.reset();

				}
			} else {
				if (userLanguage == 'ru-RU') {
					document.getElementById("result_succes").innerHTML = "Введен неверный номер";
				} else {
					document.getElementById("result_succes").innerHTML = "Sizning raqamingiz noto'g'ri";
				}
				grecaptcha.reset();

			}
		}
	}

	var onReturnCallback = function(response) {
		var url = 'proxy.php?url=' + 'https://www.google.com/recaptcha/api/siteverify';
		$.ajax({
			'url': url,
			dataType: 'json',
			data: {
				response: response
			},
			success: function(result) {
				var res = result.success.toString();
				if (res == 'true') {
					document.getElementById('g-recaptcha').innerHTML = 'Вы прошли идентификацию';
				}
			}
		});
	};
</script>
</body>

</html>