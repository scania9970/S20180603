<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>WEB Developer 현상훈</title>

    <!-- Bootstrap Core CSS -->
    <link href="/cota/port/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="/cota/port/css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/cota/port/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">
<div id="skipnav"><a href="#maincontent">Skip to main content</a></div>

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">${port.email }</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">Portfolio</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">About</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Contact</a>
                    </li>
                    <li class="page-scroll">
                        <a href="">
                        	<c:if test="${port.is_search == 1}">
                        		<span class="glyphicon glyphicon-ok"></span>
                        		구직중
                        	</c:if>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container" id="maincontent" tabindex="-1" style="background-color: ${port.color_back}; color: ${port.color_font}">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" style="width:230px; height:230px;" src="/cota/images/python.png" alt="">
                    <div class="intro-text">
                        <h1 class="name">${port.name }</h1>
                        <span class="skills">${port.job}</span>
                        <h5> ${port.birth }</h5>
                        <!-- <h5> 010-4391-0826</h5> -->
                        <h5> ${port.email }</h5>
                        
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Portfolio Grid Section -->
   
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Portfolio</h2>
                    <br>
                </div>
            </div>
            <div class="row">
                 <c:forEach var="project" items="${projects }">
					<div class="col-sm-4 portfolio-item">
			              <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
			                  <div class="caption">
			                      <div class="caption-content">
			                          <i class="fa fa-search-plus fa-3x"></i>
			                      </div>
			                  </div>
			                  <img src="${project.project_url}" class="img-responsive" alt="Cabin" style="width:360px; height:360px;">
			              </a>
			          </div>
   			 </c:forEach>
            </div>
        </div>
    </section>
    
    
      <!-- About Section -->
    <section class="success" id="about" style="background-color: ${port.color_back}; color: ${port.color_font}">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>About</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3">
                   <br>
                    <p>
                         ${port.introduction }
                    </p>
                </div>
            </div>
        </div>
    </section>
    
    <section id="Careers">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Careers</h2>
                    <br>
                </div>
            </div>
	            <div class="row">
					<div class="row">
						<table class="table table-striped">
							<tr>
								<th>회사명</th><th>입사일</th><th>퇴사일</th><th>직급</th><th>담당업무</th>
							</tr>								
			                 <c:forEach var="career" items="${careers}">
			                 	<tr>
			                 		<td>${career.company}</td>
			                 		<td>${career.date_start}</td>
			                 		<td>${career.date_end}</td>
			                 		<td>${career.rank}</td>
			                 		<td>${career.detail}</td>
			                 	</tr>
				   			 </c:forEach>
						</table>
	     			</div>
			    </div>
            </div>
    </section>

  
    <!-- Contact Section -->
    <section id="contact" style="background-color: ${port.color_back}; color: ${port.color_font};">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact Me</h2>
                    <br>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="sentMessage" id="contactForm" novalidate>
                        <input type="hidden" id="sendEmail" value="${port.email }">
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label for="name">Name</label>
                                <input style="color:${port.color_font};" type="text" class="form-control" placeholder="Name" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label for="email">Email Address</label>
                                <input style="color:${port.color_font};" type="email" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label for="phone">Phone Number</label>
                                <input style="color:${port.color_font};" type="tel" class="form-control" placeholder="Phone Number" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label for="message">Message</label>
                                <textarea style="color:${port.color_font};" rows="5" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-success btn-lg" style="background-color:${port.color_font}; color:${port.color_back };">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
<!-- 
    Footer
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p> 중앙정보처리인재개발원
                            <br>서울특별시 강남구 테헤란로 7길 7</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>GITHUB</h3>
                        <ul class = "list-inline">
                            <li><a href = "https://github.com/scania9970" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                    
                    <div class="footer-col col-md-4">
                        <h3>현상훈</h3>
                        <p>끊임없는 노력하는 개발자가 되겠습니다.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; shdev 2016
                    </div>
                </div>
            </div>
        </div>
    </footer> -->

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Portfolio Modals -->
    <c:forEach var="projectDesc" items="${projects }">
    	<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>${projectDesc.title }</h2>
                            <br>
                            <img src="${projectDesc.project_url }" class="img-responsive img-centered" alt="">
                            <p>
                               ${projectDesc.content }
                            </p>
                            <ul class="list-inline item-details">
                                
                                <li>Date:
                                    <strong><a href="#">July 2017</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="#">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </c:forEach>

    
    <!-- jQuery -->
    <script src="/cota/port/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/cota/port/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="/cota/port/js/jqBootstrapValidation.js"></script>
    <script src="/cota/port/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="/cota/port/js/freelancer.min.js"></script>

</body>

</html>
