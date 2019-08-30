<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" lang="en-US" prefix="og: http://ogp.me/ns#">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" lang="en-US" prefix="og: http://ogp.me/ns#">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en-US" prefix="og: http://ogp.me/ns#">
      <head>
      <meta charset="utf-8">
      <title>Signals and Systems</title>		
      <meta name="Description" content="Signals and Systems - Signals and Systems - Signals and Systems - Signals and Systems Video tutorials GATE, IES and other PSUs exams preparation and to help Electronics & Communication Engineering Students covering Overview, Signal Analysis, Fourier Series, Fourier Transforms, Convolution Correlation, Sampling, Laplace Transforms, Z-Transforms, etc."/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=yes">
      <link rel="profile" href="http://gmpg.org/xfn/11" />
      <link rel="search" type="application/opensearchdescription+xml" title="Stack Overflow" href="https://www.tutorialspoint.com/videotutorials/opensearch.xml">
      <base href="https://www.tutorialspoint.com/" />
      <meta property="og:url" content="https://www.tutorialspoint.com/signals_and_systems/index.asp" />
      <meta property="og:title" content="Signals and Systems" />
      <meta property="og:description" content="Signals and Systems - Signals and Systems - Signals and Systems - Signals and Systems Video tutorials GATE, IES and other PSUs exams preparation and to help Electronics & Communication Engineering Students covering Overview, Signal Analysis, Fourier Series, Fourier Transforms, Convolution Correlation, Sampling, Laplace Transforms, Z-Transforms, etc." />
      <meta property="og:image" content="https://www.tutorialspoint.com/assets/videos/courses/159/images/course_159_image.png" />
      <meta property="og:type" content="Website">
      <meta property="og:locale" content="en_US" />
      <meta property="fb:app_id" content="471319149685276" />
      <meta property="og:site_name" content="TutorialsPoint" />
      <meta name="twitter:card" content="summary">
      <meta name="twitter:site" content="@TutorialsPoint">
      <meta name="twitter:title" content="Signals and Systems">
      <meta name="twitter:description" content="Signals and Systems - Signals and Systems - Signals and Systems - Signals and Systems Video tutorials GATE, IES and other PSUs exams preparation and to help Electronics & Communication Engineering Students covering Overview, Signal Analysis, Fourier Series, Fourier Transforms, Convolution Correlation, Sampling, Laplace Transforms, Z-Transforms, etc.">
      <meta name="twitter:creator" content="TutorialsPoint">
      <meta name="twitter:image:src" content="https://www.tutorialspoint.com/assets/videos/courses/159/images/course_159_image.png">
      <meta name="apple-mobile-web-app-capable" content="yes">
      <meta name="apple-mobile-web-app-status-bar-style" content="black">
      <meta name="author" content="tutorialspoint.com">
      <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
      <link rel="alternate" type="application/rss+xml" title="TutorialsPoint Videos Feed" href="https://www.tutorialspoint.com/videotutorials/feeds/" />
      <link rel="stylesheet" href="https://www.tutorialspoint.com/videotutorials/css/tp-style.min.css?v=1.35">		
      <link rel="stylesheet" href="https://www.tutorialspoint.com/videotutorials/css/vd.css?v=1.15" />
      <script src="https://www.tutorialspoint.com/videotutorials/js/jquery.js"></script> 
      <script src="https://www.tutorialspoint.com/videotutorials/js/tp-custom.min.js?v=2.22"></script> 
<script>
   var emailPattern =  /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
   var phonePattern = /^[0-9]{10}$/;
   var numberPattern = /^\d*$/;
   var baseurl = 'https://www.tutorialspoint.com/';
   var profile_baseurl = 'https://www.tutorialspoint.com/questions';
   var videoapiurl = 'https://www.tutorialspoint.com';
   var videobaseurl = 'https://www.tutorialspoint.com/videotutorials';
   var asset_image_url = 'https://www.tutorialspoint.com/assets/videos';
   var videos_image_url = 'https://www.tutorialspoint.com/assets/videos/courses';
   var var_auth = '';
   var webp = false;
   $(document).ready(function(){    
      var cookie_theme = readCookie("theme");      
      if(cookie_theme == 'D'){
         darkMode();
         $('.liDark').data('mode','L');
         $('.liDark').find('span').html('<i class="fa fa-toggle-off lg"></i>');
         $('.liDark').find('b').html('&nbsp;Light');
      } else {
         lightMode();
         $('.liDark').data('mode','D');
         $('.liDark').find('span').html('<i class="fa fa-toggle-on lg"></i>');
         $('.liDark').find('b').html('&nbsp;Dark');
      }
     /*  if (typeof Modernizr.webp != "undefined") {
         if(Modernizr.webp.valueOf()){
            webp = true;
         }
      } */
   });
</script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="https://www.tutorialspoint.com/videotutorials/js/videos.js"></script>
</head>
	<body onload="prettyPrint()">      
		<header>        
         <div id="right_obs" class="display-none" onclick="close_obs_sidenav()"></div>
         <div id="left_obs" class="display-none" onclick="close_obs_leftnav()"></div> 
			<div class="container">	
            <a href="https://www.tutorialspoint.com/index.htm" class="logo">
               <img src="images/tp-logo.png" class="retina hlogo" alt="Tutorialspoint">
            </a>
				<ul class="tp-inline-block pull-right" id="tp-head-icons">    
               <li><div class="tp-third-nav tp-display-none tp-pointer liDark" data-mode="D"><span class="lg"><i class="fa fa-toggle-on"></i></span></div></li>
               <li><div class="tp-first-nav tp-display-none tp-pointer" onclick="openLeftNav()"><i class="fa fa-th-large lg"></i></div></li>
               <li><div class="tp-second-nav tp-display-none tp-pointer" onclick="openNav()"><i class="fa fa-bars lg"></i></div></li>            
            </ul>		
            <div class="sidenav" id="Menunav">
               <nav>
                  <ul class="nav top-menu">
                     <li><a href="/about/about_careers.htm"><i class="fa fa-briefcase"></i> Jobs</a></li>
                     <li><a target="_blank" href="/programming_examples/"><i class="fa fa-file-code"></i> &nbsp;Examples</a></li>
                     <li><a href="https://www.tutorialspoint.com/whiteboard.htm"><i class="fa fa-square"></i> &nbsp;Whiteboard</a> </li>
                     <li><a href="https://www.tutorialspoint.com/netmeeting.php"><i class="fa fa-microphone"></i> &nbsp;Net Meeting</a> </li>
                     <li><a href="/online_dev_tools.htm"> <i class="fa fa-cogs"></i> Tools </a></li>
                     <li><a href="/articles/index.php"><i class="fa fa-file-alt"></i> &nbsp;Articles</a> </li>            
                     <li class="top-icons">
                        <ul class="social-icons">
                           <li class="facebook"><a href="https://www.facebook.com/tutorialspointindia" target="_blank" data-placement="bottom" title="tutorialspoint @ Facebook">Facebook</a></li>
                           <li class="googleplus"><a href="https://plus.google.com/u/0/116678774017490391259/posts" target="_blank" data-placement="bottom" title="tutorialspoint @ Google+">Google+</a></li>
                           <li class="twitter"><a href="https://www.twitter.com/tutorialspoint" target="_blank" data-placement="bottom" title="tutorialspoint @ Twitter">Twitter</a></li>
                           <li class="linkedin"><a href="https://www.linkedin.com/company/tutorialspoint" target="_blank" data-placement="bottom" title="tutorialspoint @ Linkedin">Linkedin</a></li>
                           <li class="youtube"><a href="https://www.youtube.com/channel/UCVLbzhxVTiTLiVKeGV7WEBg" target="_blank" data-placement="bottom" title="tutorialspoint YouTube">YouTube</a></li>
                        </ul>
                     </li>
                  </ul>
               </nav>
               <nav class="nav-main mega-menu">
                  <ul class="nav nav-pills nav-main" id="mainMenu">
                     <li class="dropdown no-sub-menu"> <a class="dropdown" href="index.htm"><i class="fa fa-home"></i> Home</a> </li>
                     <li class="dropdown no-sub-menu"><a class="dropdown" href="/questions/index.php"><i class="fa fa-send"></i> Q/A </a> </li>
                     <li class="dropdown"><a class="dropdown" href="tutorialslibrary.htm"><i class="fa fa-send"></i> Library </a></li>
                     <li class="dropdown no-sub-menu"><a class="dropdown" href="videotutorials/index.htm"><i class="fa fa-toggle-right fa6"></i> Videos </a></li>                        
                     <li class="dropdown no-sub-menu"><a class="dropdown" href="tutor_connect/index.php"><i class="fa fa-user fa6"> </i> Tutors</a></li>
                     <li class="dropdown no-sub-menu"><a class="dropdown" href="codingground.htm"><i class="fa fa-code fa6"></i> Coding Ground </a> </li>
                     <li class="dropdown no-sub-menu"><a class="dropdown" href="https://store.tutorialspoint.com/"><i class="fa fa-usd fa6"></i> Store </a> </li>                     
                     <li class="dropdown no-sub-menu vMenuP" id="liPMenu">
                     <a href="https://www.tutorialspoint.com/videotutorials/login.php"><i class="fa fa-user"></i> Profile</a></li>                
                  </ul>
               </nav>
            </div>
         </div>    
		</header>
		<div style="clear:both;"></div>
		<div class="alert alert-success" role="alert" style="display:none;">
			<i class="fa-close alert-close" title="close"></i> 
			<span></span>
		</div>
		<div class="alert alert-danger" role="alert" style="display:none;">
			<i class="fa-close alert-close" title="close"></i> 
			<span></span>
		</div>
		<div class="alert alert-warning" role="alert" style="display:none;">
			<i class="fa-close alert-close" title="close"></i>
			<span></span>
		</div>   
		
      <div class="container">
         <div class="">
            <div class="sidenav-b" id="mySidenav-b"></div>	
            <div class="clear"></div>
         </div>
      </div>
	<div class="container">
      <div class="leftside-nav" id="Leftside-nav">
         <aside class="sidebar sidebar-left" id="sidebar-left">  
            <div class="mini-logo">    
               <a href="https://www.tutorialspoint.com/assets/videos/courses/159/images/course_159_image.png">
               <img src="https://www.tutorialspoint.com/assets/videos/courses/159/images/course_159_image.png" alt="Signals and Systems"/>
               <div class="crs-left-title" style="background:#016654">
               <div>Signals and Systems</div>
               </div>
               <div class="crs-left-tagline">Simply Easy Learning</div>
               </a>
            </div>
            <div class="main-scroll">
            <div class="scroller">
               <ul class="nav left-menu">	
                  						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Signals and Systems</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture activebar " id='11'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/index.asp" style="">
                                    <i class="fa fa-home"></i> Signals and Systems - Home  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='12'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_introduction.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Introduction  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='13'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_important_point_about_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Important Point About Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='14'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_types_of_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems -Types of Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='15'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_unit_step_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Unit Step Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='16'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_impulse_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Impulse Function  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='17'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_signum_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Signum Function  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='18'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_exponential_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Exponential Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='19'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_unit_ramp_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Unit Ramp Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='110'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_unit_parabolic_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Unit Parabolic Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='111'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_unit_rectangle_pulse.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Unit Rectangle Pulse  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='112'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/example_on_rectangular_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Example on Rectangular Function  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='113'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_triangular_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Triangular Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='114'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_triangular_signal_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Triangular Signal Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='115'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_sinusoidal_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Sinusoidal Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='116'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_since_and_sampling_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Since & Sampling Function  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Signals & Systems - Classification of Signals</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='21'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_operations_on_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Operations on Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='22'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/operations_on_amplitude_of_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Operations on Amplitude of Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='23'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/operations_on_time_of_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Operations on Time of Signals  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Classification of Signals</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='31'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_classification_of_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Classification of Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='32'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/continuous_time_and_discrete_time_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Continuous time & Discrete time signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='33'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/deterministic_and_non_deterministic_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Deterministic & Non-deterministic Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='34'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_even_and_odd_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Even & Odd Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='35'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_even_and_odd_components.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Even & Odd Components  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='36'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/even_and_odd_components_of_a_signal_example_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Even & Odd Components of a Signal Example 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='37'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/even_and_odd_components_of_a_signal_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Even & Odd Components of a Signal Example 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='38'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_periodic_and_aperiodic_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Periodic & Aperiodic Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='39'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_checking_of_periodicity.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Checking of Periodicity  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='310'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/energy_signals_and_power_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Energy Signals & Power Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='311'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/energy_and_power_of_a_signal_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Energy & Power of a Signal Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='312'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/energy_and_power_of_unit_step_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Energy & Power of Unit Step Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='313'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/energy_and_power_of_exponential_signal_with_negative_power.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Energy & Power of Exponential Signal with Negative Power  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='314'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/energy_of_a_signal_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Energy of a Signal Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='315'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/calculating_energy_of_triangular_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Calculating Energy of Triangular Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='316'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/energy_and_power_of_exponential_signal_with_positive_power.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Energy & Power of Exponential Signal With Positive Power  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='317'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/energy_and_power_of_a_signals_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Energy & Power of a Signals Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='318'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/energy_and_power_of_ramp_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Energy & Power Of Ramp Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='319'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/real_and_imaginary_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Real & Imaginary Signals  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Classification of a Systems</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='41'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_classification_of_a_systems.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Classification of a Systems  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='42'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_linear_and_none_linear_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Linear & None-linear System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='43'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_time_variant_and_time_invariant.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Time Variant & Time Invariant  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='44'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/linear_time_variant_and_invariant_systems.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Linear Time Variant & Invariant Systems  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='45'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_static_and_dynamic_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Static & Dynamic System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='46'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/causal_and_none_causal_systems.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Causal & None Causal Systems  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='47'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_invertible_and_none_invertible.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Invertible & None Invertible  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='48'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_stable_and_unstable_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signals & Systems - Stable & Unstable System  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Impulse Response System</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='51'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/impulse_response_and_transfer_function_of_a_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Impulse Response & Transfer Function of a System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='52'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/ramp_signal_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Ramp Signal Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='53'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/energy_and_power_of_discrete_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Energy & power of Discrete Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='54'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/energy_and_power_signals_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Energy & Power Signals Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='55'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/estimating_energy_and_power_of_discrete_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Estimating Energy & Power of Discrete Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='56'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/checking_of_periodicity_of_a_discrete_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Checking of Periodicity of a Discrete Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='57'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/periodicity_of_discrete_time_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Periodicity of Discrete Time Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='58'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/periodicity_discrete_unit_step_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Periodicity Discrete Unit Step Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='59'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/impulse_function_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Impulse Function Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='510'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/check_for_stability_of_signals.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Check for Stability of Signals  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='511'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/casuality_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Casuality Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='512'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/stability_and_casuality_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Stability & Casuality Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='513'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/impulse_function_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Impulse Function Example  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Convolution</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='61'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/what_is_convolution.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> What is Convolution?  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='62'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/method_to_calculate_continuous_convolution.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Method to Calculate Continuous Convolution  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='63'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/convoluted_signal_limits.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Convoluted Signal Limits  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='64'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/convolution_by_image_method.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Convolution by Image Method  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='65'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/properties_of_convolution.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Properties of Convolution  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='66'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/distributive_property_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Distributive Property Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='67'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/convolution_problem_example_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Convolution Problem Example 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='68'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/properties_of_convolution_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Properties of Convolution Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='69'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/other_properties_of_convolution.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Other Properties of Convolution  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='610'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/area_of_convoluted_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Area of Convoluted Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='611'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/scaling_in_convolution.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Scaling in Convolution  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='612'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/ramp_in_convolution_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Ramp in Convolution Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='613'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/convolution_of_unit_step_with_ramp_using_differentiation_property.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Convolution of Unit Step with Ramp using Differentiation Property  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='614'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/convolution_problem_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Convolution Problem Example 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='615'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/discrete_signal_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Discrete Signal Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='616'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/method_to_find_discrete_convolution.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Method to Find Discrete Convolution  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='617'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/sum_by_column_method_to_calculate_discrete_convolution.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Sum by Column Method to Calculate Discrete Convolution  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='618'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/periodic_or_circular_convolution.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Periodic or Circular Convolution  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='619'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/matrix_method_to_calculate_circular_convolution.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Matrix Method to Calculate Circular Convolution  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='620'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/what_is_deconvolution.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> What is Deconvolution?  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='621'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/division_method_for_deconvolution.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Division Method for Deconvolution  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Fourier Series</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='71'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/fourier_series_representation_of_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Fourier Series Representation of Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='72'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/deriving_fourier_series.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Deriving Fourier Series  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='73'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/properties_of_fourier_series.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Properties of Fourier Series  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='74'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/symmetry_properties.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Symmetry Properties  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='75'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/spectral_properties_of_periodic_power_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Spectral Properties of Periodic Power Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='76'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/dirichletandrsquo_s_conditions.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Dirichlet&rsquo;s Conditions  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='77'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/trigonometric_fourier_series.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Trigonometric Fourier Series  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='78'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/exponential_fourier_series.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Exponential Fourier Series  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='79'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/relation_between_trigonometric_and_exponential_fourier_series.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Relation Between Trigonometric & Exponential Fourier Series  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='710'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/fourier_coefficient_of_impulse_train_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Fourier Coefficient of Impulse Train Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='711'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/gate_shortcut_to_predict_nature_of_fourier_coefficient.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Gate Shortcut to Predict Nature of Fourier Coefficient  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='712'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_fourier_series_coefficient.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Fourier Series Coefficient  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='713'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/polar_form.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Polar Form  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='714'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/fourier_series_representation_using_symmetry_of_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Fourier Series Representation Using Symmetry of Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='715'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_fourier_series_representation_using_symmetry.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Fourier Series Representation Using Symmetry  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='716'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_discrete_time_fourier_series.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Discrete Time Fourier Series  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='717'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/gate_shortcuts_to_calculate_trigonometric_fourier_series_and_power.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Gate Shortcuts to Calculate Trigonometric Fourier Series & Power  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='718'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/dc_component.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> DC Component  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='719'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/amplitude_of_fundamental_components.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Amplitude of Fundamental Components  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='720'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_dc_components_of_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on DC Components of Signal  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Fourier Transform</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='81'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/introduction_to_fourier_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to Fourier Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='82'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/deriving_fourier_transform_from_fourier_series.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Deriving Fourier Transform From Fourier Series  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Fourier Transform of Basic Function</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='91'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/fourier_transform_of_gate_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Fourier Transform of Gate Function  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='92'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/fourier_transform_of_impulse.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Fourier Transform of Impulse  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='93'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/fourier_transform_of_dc_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Fourier Transform of DC Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='94'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/fourier_transform_of_cosine_wave.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Fourier Transform of Cosine Wave  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='95'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/fourier_transform_of_unit_step_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Fourier Transform of Unit Step Function  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Properties of Fourier Transform</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='101'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/linearity_property.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Linearity Property  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='102'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/time_shifting_property.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Shifting Property  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='103'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/frequency_shifting_property.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Frequency Shifting Property  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='104'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/time_differentiation_and_integration_property.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Differentiation & Integration Property  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='105'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/duality_and_similarity_property.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Duality & Similarity Property  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='106'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/time_scaling_property.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Scaling Property  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='107'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/multiplication_and_convolution_property.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Multiplication & Convolution Property  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='108'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/fourier_transform_of_shifted_unit_step.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Fourier Transform of Shifted Unit Step  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='109'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/fourier_transform_of_two_sided_exponential.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Fourier Transform of two-Sided Exponential  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1010'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/inverse_fourier_transform_problem_example_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Inverse Fourier Transform Problem Example 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1011'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/standard_fourier_transform_pairs.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Standard Fourier Transform Pairs  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1012'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/inverse_fourier_transform_problem_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Inverse Fourier Transform Problem Example 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1013'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/inverse_fourier_transform_problem_example_3.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Inverse Fourier Transform Problem Example 3  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1014'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/fourier_transform_gate_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Fourier Transform Gate Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1015'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/distortion_less_transmission_of_the_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Distortion Less Transmission of the System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1016'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/hilbert_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Hilbert Transform  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Correlation</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='111'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/introduction_to_correlation.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to Correlation  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='112'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/auto_correlation_function_of_energy_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Auto Correlation Function of Energy Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='113'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/auto_correlation_function_of_energy_signal_property_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Auto Correlation Function of Energy Signal Property 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='114'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/auto_correlation_function_of_energy_signal_property_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Auto Correlation Function of Energy Signal Property 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='115'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/auto_correlation_function_of_energy_signal_property_3.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Auto Correlation Function of Energy Signal Property 3  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='116'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/auto_correlation_function_of_energy_signal_property_4.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Auto Correlation Function of Energy Signal Property 4  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='117'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/auto_correlation_function_of_power_signals_and_properties.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Auto Correlation Function of Power Signals & Properties  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='118'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/relation_between_input_energy_spectral_density_and_output_energy_spectral_density.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Relation Between Input Energy Spectral Density & Output Energy Spectral Density  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='119'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_auto_correlation_function_of_energy_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Auto Correlation Function of Energy Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1110'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_auto_correlation_function_of_power_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Auto Correlation Function of Power Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1111'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/cross_correlation_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Cross Correlation Function  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1112'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/properties_of_cross_correlation_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Properties of Cross Correlation Function  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1113'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/cross_correlation_function_of_power_signal_and_itandrsquo_s_properties.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Cross Correlation Function of Power Signal & it&rsquo;s Properties  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1114'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_relation_between_power_spectral_density.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Relation Between Power Spectral Density  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1115'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_parsevalandrsquo_s_energy_theory.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Parseval&rsquo;s Energy Theory  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1116'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/energy_spectral_density_calculation.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Energy Spectral Density Calculation  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1117'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/energy_of_a_time_scaled_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Energy of a Time Scaled Signal  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Sampling</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='121'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/sampling_theorem.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Sampling Theorem  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='122'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/sampling_theorem_proof.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Sampling Theorem Proof  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='123'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/cutoff_frequency_of_filter.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Cutoff Frequency of Filter  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='124'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/cutoff_frequency_of_filter_problem_example_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Cutoff Frequency of Filter Problem Example 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='125'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/cutoff_frequency_of_filter_problem_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Cutoff Frequency of Filter Problem Example 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='126'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/sampling_frequency_problem_example_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Sampling Frequency Problem Example 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='127'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/sampling_frequency_problem_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Sampling Frequency Problem Example 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='128'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/sampling_frequency_problem_example_3.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Sampling Frequency Problem Example 3  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='129'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/calculating_sampling_frequency_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Calculating Sampling Frequency Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1210'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/way_to_find_nyquist_sampling.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Way to Find Nyquist Sampling  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1211'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/frequency_components_at_the_output_of_lpf.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Frequency Components at the Output of LPF  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Laplace Transform</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='131'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='132'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/relation_between_laplace_and_fourier_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Relation Between Laplace & Fourier Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='133'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/inverse_laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Inverse Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='134'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/conditions_for_existence_of_laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Conditions for Existence of Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='135'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/list_of_properties_in_laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> List of Properties in Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='136'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/linearity_property_in_laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Linearity Property in Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='137'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/time_shifting_property_in_laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Shifting Property in Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='138'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/frequency_shifting_property_in_laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Frequency Shifting Property in Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='139'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/time_reversal_property_in_laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Reversal Property in Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1310'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/time_scaling_property_laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Scaling Property Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1311'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/differentiation_and_integration_property.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Differentiation & Integration Property  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1312'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/multiplication_and_convolution_properties_of_laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Multiplication & Convolution Properties of Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1313'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/initial_value_theorem.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Initial Value Theorem  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1314'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/final_value_theorem.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Final Value Theorem  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1315'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/region_of_convergence_in_laplace_transform_and_itandhash039_s_properties.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Region of Convergence in Laplace Transform & It&#039;s Properties  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1316'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/laplace_transform_of_right_side_decaying_exponential.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Laplace Transform of Right Side Decaying Exponential  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1317'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/laplace_transform_of_left_side_decaying_exponential.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Laplace Transform of Left Side Decaying Exponential  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1318'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/laplace_transform_and_roc_of_raising_exponential.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Laplace Transform & ROC of Raising Exponential  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1319'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_region_of_convergence.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Region of Convergence  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1320'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/laplace_transform_and_roc_problem_example_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Laplace Transform & ROC Problem Example 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1321'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/laplace_transform_and_roc_problem_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Laplace Transform & ROC Problem Example 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1322'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/laplace_transform_of_dc_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Laplace Transform of DC Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1323'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/laplace_transform_of_signum_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Laplace Transform of Signum Function  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1324'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/unilateral_laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Unilateral Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1325'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_time_shifting_property_in_laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Time Shifting Property in Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1326'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/some_standard_signals_and_their_laplace_transform_and_roc.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Some Standard Signals & Their Laplace Transform & ROC  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1327'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_time_shifting_property.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Time Shifting Property  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1328'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_inverse_laplace_transform_using_time_shifting_property.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Inverse Laplace Transform Using Time Shifting Property  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1329'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/frequency_shifting_property_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Frequency Shifting Property Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1330'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/inverse_laplace_transform_problem_example_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Inverse Laplace Transform Problem Example 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1331'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/inverse_laplace_transform_problem_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Inverse Laplace Transform Problem Example 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1332'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/inverse_laplace_transform_problem_example_3.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Inverse Laplace Transform Problem Example 3  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1333'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/transform_function_by_using_inverse_laplace_transform_problem.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Transform Function by Using Inverse Laplace Transform Problem  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1334'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/transform_function_in_laplace_transform_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Transform Function in Laplace Transform Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1335'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/differential_equation_solving_using_laplace_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Differential Equation Solving Using Laplace Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1336'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/unilateral_laplace_transform_of_left_shifted_impulse.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Unilateral Laplace Transform of Left Shifted Impulse  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1337'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_find_value_theorem.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Find Value Theorem  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1338'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/causality_and_stability.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Causality & Stability  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1339'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_causality_and_stability.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Causality & Stability  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1340'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_laplace_transform_of_ramp.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Laplace Transform of Ramp  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1341'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/laplace_transform_of_shifted_ramp.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Laplace Transform of Shifted Ramp  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1342'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/convolution_property_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Convolution Property Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1343'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/final_value_of_theorem_problem_example_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Final value of Theorem Problem Example 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1344'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/final_value_of_theorem_problem_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Final value of Theorem Problem Example 2  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Z-Transform</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='141'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/introduction_to_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='142'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transfer_and_inverse_z_transfer.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transfer & Inverse Z-Transfer  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='143'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transform_problem_example_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transform Problem Example 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='144'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transform_problem_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transform Problem Example 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='145'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/inverse_z_transform_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Inverse Z-Transform Problem Example  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Z-Transform of Basic Signal</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='151'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transform_of_basic_signal_problem_example_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transform of Basic Signal Problem Example 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='152'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transform_of_basic_signal_problem_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transform of Basic Signal Problem Example 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='153'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transform_of_basic_signal_problem_example_3.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transform of Basic Signal Problem Example 3  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='154'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transform_of_unit_step_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transform of Unit Step Function  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='155'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transform_of_impulse_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transform of Impulse Function  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='156'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transform_of_cos_signal_type_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transform of COS Signal Type-1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='157'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transform_of_cos_signal_type_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transform of COS Signal Type-2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='158'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transform_gate_problem_example_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transform GATE Problem Example 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='159'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transform_gate_problem_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transform GATE Problem Example 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1510'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/z_transform_gate_problem_example_3.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Z-Transform GATE Problem Example 3  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1511'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/initial_and_final_value_theorems_in_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Initial & Final Value Theorems in Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1512'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/basic_z_transform_pairs.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Basic Z-Transform Pairs  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1513'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/region_of_convergence_of_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Region of Convergence of Z-Transform  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Properties of Z-Transform</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='161'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/linearity_property_of_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Linearity Property of Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='162'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/time_shifting_property_of_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Shifting Property of Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='163'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/time_reversal_property_of_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Reversal Property of Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='164'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/scaling_property_of_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Scaling Property of Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='165'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/differentiation_in_z_domain_property_of_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Differentiation in Z-Domain Property of Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='166'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/differentiation_in_z_domain_property_problem_example_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Differentiation in Z-Domain Property Problem Example 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='167'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/differentiation_in_z_domain_property_problem_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Differentiation in Z-Domain Property Problem Example 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='168'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/inverse_z_transform_problem_example_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Inverse Z-Transform Problem Example 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='169'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/multiplication_and_convolution_property_of_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Multiplication & Convolution Property of Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1610'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/convolution_property_of_z_transform_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Convolution Property of Z-Transform Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1611'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/initial_value_theorem_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Initial Value Theorem Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1612'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/system_function_and_impulse_response_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> System Function & Impulse Response Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1613'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/unilateral_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Unilateral Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1614'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/causality_and_stability_according_to_roc_of_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Causality & Stability According to ROC of Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1615'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/important_rocs_related_to_impulse_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Important ROCs Related to Impulse Function  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1616'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1617'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/region_of_convergence_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Region of Convergence Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1618'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/stable_but_not_casual_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Stable but not Casual Problem Example  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1619'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/system_to_be_causal_and_stable_problem_example.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> System to be Causal & Stable Problem Example  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#016654!important;">Method to Calculate Inverse Z-Transform</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='171'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/long_division_method_to_calculate_inverse_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Long Division Method to Calculate Inverse Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='172'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/direct_computation_method_to_calculate_inverse_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Direct Computation Method to Calculate Inverse Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='173'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/residue_theorem_to_calculate_inverse_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Residue Theorem to Calculate Inverse Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='174'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/roc_of_a_discrete_time_sequence_in_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> ROC of a Discrete Time Sequence in Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='175'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_linear_discrete_time_system_of_z_transform.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Linear Discrete Time System of Z-Transform  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='176'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_final_value_theorem.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Final Value Theorem  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='177'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/problem_on_response_of_the_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Response of the System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='178'>
                                 <a href="https://www.tutorialspoint.com/signals_and_systems/region_of_convergence_gate_problem.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Region of Convergence Gate Problem  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                                    </ul>
            </div>
            </div>
            <div class="clear"></div>
            <div class="vd_enroll_course" id="course_enroll_content">
               
            </div>
            <div id="divUserLeftMenu"></div>
<div class="clear"></div>

<div class="ysubscribe" style="display:none;">
   <script src="https://apis.google.com/js/platform.js"></script>
   <div class="g-ytsubscribe" data-channelid="UCVLbzhxVTiTLiVKeGV7WEBg" data-layout="full" data-count="default"></div>
</div>
             <div class="clear"></div>
         </aside>
      </div>
      <div class="content">
         <div class="content-wrapper" style="height:auto!important;">
            		
            <div>
               <div class="content-header background">
                  <div class="courseimg">	
                     <div class="course_header">
                        <div class="course_img">
                           <div>
                              <img src="https://www.tutorialspoint.com/assets/videos/courses/159/images/course_159_image.png" alt="" />   
                           </div>                        
                        </div>
                        <div class="course_header_title" style="background:#016654">Signals and Systems           
                        </div>
                        <h2 class="course_header_sub">Simply Easy Learning</h2>
                     </div> 		  		  		   
                  </div>
               </div>
            </div>
                              
               <div class="content-body">
                  <hr>               
                  <div class="options">                                            
                     	
                     <a href='https://www.tutorialspoint.com/signals_and_systems/index.asp' class="button round accent-color date prevpage">   
                        <i class="fa fa-arrow-circle-o-left big-font"></i> Previous Page
                     </a>                    
                                          <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_introduction.asp" class="button round accent-color date nextpage">
                     Next Page <i class="fa fa-arrow-circle-o-right big-font"></i>&nbsp;
                     </a>
                  </div>
                  <hr>               						
                  <h1>Signals and Systems</h1>
                  <p></p>
                  <div>
                     <p>In this video tutorial, the tutor covers a range of topics from from basic signals and systems to signal analysis, properties of continuous-time Fourier transforms including Fourier transforms of standard signals, signal transmission through linear systems, relation between convolution and correlation of signals, and sampling theorems and techniques. This tutorial provides a comprehensive coverage of the theory of signals and systems and how the signals interact with physical systems.</p><h1>Audience</h1><p>This video tutorial has been designed for Electronics Engineering Students, and especially who are preparing for GATE, IES and other PSU exams preparation. It will also be helpful for students in preparing them for their Engineering Syllabus.</p>                     <h1>Instructor</h1>
                     <div class="user_desc">                        
                        <a href='https://www.tutorialspoint.com/videotutorials/profile/Gowthami-Swarna' target='_blank' title='View Gowthami Swarna Profile'>
                           <img src="https://www.tutorialspoint.com/assets/profiles/15883/profile/200_136720-1514446023.jpg"  alt="Gowthami-Swarna"/>
                           <div class="user_desc_title">Gowthami Swarna</div>                            
                        </a>	
                        <p>Gowthami Swarna holds an M.Tech in Electronics & Communication Engineering. She has excellent knowledge and tutoring experience in teaching Electronics and Communication Engineering topics for GATE exams.</p>
                     </div>
                  </div>
                  <hr>
                  <div class="options">                                            
                     	
                     <a href="https://www.tutorialspoint.com/signals_and_systems/index.asp" class="button round accent-color date prevpage">   
                     <i class="fa fa-arrow-circle-o-left big-font"></i> Previous Page
                     </a>                       
                                          <a href="https://www.tutorialspoint.com/signals_and_systems/signals_and_systems_introduction.asp" class="button round accent-color date nextpage">
                        Next Page <i class="fa fa-arrow-circle-o-right big-font"></i>&nbsp;
                     </a>
                  </div>
               
                 
               </div>
              <script>
                 var vc = 'TUx5aHc5MlJWc3ZoRmhGUHgwNUw0UT09';
                 $.ajax({
                    url: videobaseurl+"/ajax/ajaxGetCompletionProgress.php",
                    method: "POST",
                    dataType:"json",
                    data:{'vc':vc},
                 }).done(function (data) {
                    $('#course_completion_progress').html(data.content1);
                    $('#course_enroll_content').html(data.content2);
                 });
              
              </script>
            
   <iframe id="download" style="display:none;visibility:hidden;"></iframe>
   <div class="content-bottom">
   <div class="bottomgooglead">
      <div class="bottomadtag">Advertisements</div>
      <script><!--
      var width = 580;
      var height = 400;
      var format = "580x400_as";
      if( window.innerWidth < 468 ){
         width = 300;
         height = 250;
         format = "300x250_as";
      }
      google_ad_client = "pub-7133395778201029";
      google_ad_width = width;
      google_ad_height = height;
      google_ad_format = format;
      google_ad_type = "image";
      google_ad_channel ="";
      //--></script>
      <script src="https://pagead2.googlesyndication.com/pagead/show_ads.js">
      </script>
      </div>
    </div>
</div>

<!-- #PAGE-CONTENT -->
<aside class="sidebar sidebar-right">
         <div class="right-blog">
      <a href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://www.facebook.com/sharer.php?u=' + 'https://www.tutorialspoint.com/signals_and_systems/index.asp','sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;">
      <img src="/images/facebookIcon.jpg" alt="img" />
      </a>
      <a  href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://twitter.com/share?url=' + 'https://www.tutorialspoint.com/signals_and_systems/index.asp','sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;">
      <img src="/images/twitterIcon.jpg" alt="img" />
      </a>
      <a  href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://www.linkedin.com/cws/share?url=' + 'https://www.tutorialspoint.com/signals_and_systems/index.asp&amp;title='+ document.title,'sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;">
      <img src="/images/linkedinIcon.jpg" alt="img" />
      </a>      
      <a  href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://www.stumbleupon.com/submit?url=https://www.tutorialspoint.com/signals_and_systems/index.asp&amp;title='+ document.title,'sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;">
      <img src="/images/StumbleUponIcon.jpg" alt="img" />
      </a>
      <a  href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://reddit.com/submit?url=https://www.tutorialspoint.com/signals_and_systems/index.asp&amp;title='+ document.title,'sharer','toolbar=0,status=0,width=626,height=656,top='+sTop+',left='+sLeft);return false;">
      <img src="/images/reddit.jpg" alt="img" />
      </a>
      <a  href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://www.blogger.com/blog-this.g?u=https://www.tutorialspoint.com/signals_and_systems/index.asp&amp;n='+ document.title,'sharer','toolbar=0,status=0,width=626,height=656,top='+sTop+',left='+sLeft);return false;">
      <img src="/images/blogger.jpg" alt="img" />
      </a>
      <div class="clear"></div>
   </div>
<div class="rightgooglead">
      <script><!--
      google_ad_client = "pub-7133395778201029";
      google_ad_width = 300;
      google_ad_height = 250;
      google_ad_format = "300x250_as";
      google_ad_type = "image";
      google_ad_channel ="";
      //--></script>
      <script src="https://pagead2.googlesyndication.com/pagead/show_ads.js">
      </script>
</div>
<div class="rightgooglead">
     <script><!--
     google_ad_client = "pub-7133395778201029";
     google_ad_width = 300;
     google_ad_height = 600;
     google_ad_format = "300x600_as";
     google_ad_type = "image";
     google_ad_channel ="";
     //--></script>
     <script src="https://pagead2.googlesyndication.com/pagead/show_ads.js">
     </script>
</div>
<div class="rightgooglead">
      <script><!--
      google_ad_client = "ca-pub-2537027957187252";
      /* Right Side Ad */
      google_ad_slot = "right_side_ad";
      google_ad_width = 300;
      google_ad_height = 250;
      //-->
      </script>
      <script src="https://pagead2.googlesyndication.com/pagead/show_ads.js">
      </script>
</div>
</aside>
</div>
<!-- #PAGE-BODY -->
</div>
<!-- #container -->
<div class="footer-wrapper ">
   <footer class="page-footer">        
      <div class="copy-img">
         <img src="images/tp-diamond-logow.png" data-no-retina="true" alt="tutorials point"/>
      </div>
      <div class="cola">            
         <p class="main">Copyright &copy; <a href="https://www.tutorialspoint.com">Tutorials Point</a>. 2018 • All rights reserved.
         <span><a href="/about/tutorials_writing.htm">Write for us</a> | <a href="/about/faq.htm">FAQ's</a> | <a href="/about/about_helping.htm">Helping</a> | <a href="/about/contact_us.htm">Contact</a></span></p>            
      </div>
      <div class="colb">            
         <form action="javascript:void(0);" method="post" id="commentform" class="comment-form">
            <input type="text" placeholder="Enter Email for Newsletter" name="Enter Email for Newsletter" value="" size="22" tabindex="1" aria-required="true">
            <input name="submit" type="submit" id="submit" class="submit" value="Submit">
         </form>            
      </div>
   </footer>
   <!-- Libs -->
   <div id="popupDiv" class="overlay">
      <div class="popup">
         <a class="imageclose" href="javascript:void(0);" id="popupDivClose">
            <i class="fa fa-close"></i>
         </a>
         <div id="popupDivContent">          
         </div>
      </div>
   </div>
<div id="privacy-banner">
  <div>
    <p>
      We use cookies to provide and improve our services. By using our site, you consent to our Cookies Policy.
      <a id="banner-accept" href="javascript:void(0)">Accept</a>
      <a id="banner-learn" href="/about/about_cookies.htm" target="_blank">Learn more</a>
    </p>
  </div>
</div>
<script>
// Banner Trigger if Not Closed
if (!localStorage.bannerClosed) {
  document.getElementById('privacy-banner').style.display = "inherit";
} else {
  document.getElementById('privacy-banner').style.display = "none";
}
document.getElementById('banner-accept').addEventListener('click', function() {
  document.getElementById('privacy-banner').style.display = "none";
  localStorage.bannerClosed = 'true';
});
if (navigator.userAgent.match(/Opera|OPR\//)) {
  document.getElementById('privacy-banner').style.display = "inherit";
}
</script>
   <script src="https://www.tutorialspoint.com/videotutorials/js/progressively.js"></script> 
  <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-232293-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-232293-1');
</script>
</div>
</body>
</html>
