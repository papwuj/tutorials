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
      <title>Control System</title>		
      <meta name="Description" content="Control System - Control System - Control System Video Tutorial -  Control System video tutorials for GATE, IES and other PSUs exams preparation and to help Electrical Engineering Students covering Introduction, Feedback, Mathematical Models, Modelling of Mechanical Systems, Electrical Analogies of Mechanical Systems, Block Diagrams, Block Diagram Algebra, Reduction, Signal Flow Graphs, Mason&#039;s Gain Formula, Time Response Analysis, Response of the First Order, Second Order Systems, Time Domain Specifications, Steady State E"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=yes">
      <link rel="profile" href="http://gmpg.org/xfn/11" />
      <link rel="search" type="application/opensearchdescription+xml" title="Stack Overflow" href="https://www.tutorialspoint.com/videotutorials/opensearch.xml">
      <base href="https://www.tutorialspoint.com/" />
      <meta property="og:url" content="https://www.tutorialspoint.com/control_system/index.asp" />
      <meta property="og:title" content="Control System" />
      <meta property="og:description" content="Control System - Control System - Control System Video Tutorial -  Control System video tutorials for GATE, IES and other PSUs exams preparation and to help Electrical Engineering Students covering Introduction, Feedback, Mathematical Models, Modelling of Mechanical Systems, Electrical Analogies of Mechanical Systems, Block Diagrams, Block Diagram Algebra, Reduction, Signal Flow Graphs, Mason&#039;s Gain Formula, Time Response Analysis, Response of the First Order, Second Order Systems, Time Domain Specifications, Steady State E" />
      <meta property="og:image" content="https://www.tutorialspoint.com/assets/videos/courses/161/images/course_161_image.png" />
      <meta property="og:type" content="Website">
      <meta property="og:locale" content="en_US" />
      <meta property="fb:app_id" content="471319149685276" />
      <meta property="og:site_name" content="TutorialsPoint" />
      <meta name="twitter:card" content="summary">
      <meta name="twitter:site" content="@TutorialsPoint">
      <meta name="twitter:title" content="Control System">
      <meta name="twitter:description" content="Control System - Control System - Control System Video Tutorial -  Control System video tutorials for GATE, IES and other PSUs exams preparation and to help Electrical Engineering Students covering Introduction, Feedback, Mathematical Models, Modelling of Mechanical Systems, Electrical Analogies of Mechanical Systems, Block Diagrams, Block Diagram Algebra, Reduction, Signal Flow Graphs, Mason&#039;s Gain Formula, Time Response Analysis, Response of the First Order, Second Order Systems, Time Domain Specifications, Steady State E">
      <meta name="twitter:creator" content="TutorialsPoint">
      <meta name="twitter:image:src" content="https://www.tutorialspoint.com/assets/videos/courses/161/images/course_161_image.png">
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
               <a href="https://www.tutorialspoint.com/assets/videos/courses/161/images/course_161_image.png">
               <img src="https://www.tutorialspoint.com/assets/videos/courses/161/images/course_161_image.png" alt="Control System"/>
               <div class="crs-left-title" style="background:#00aeef">
               <div>Control System</div>
               </div>
               <div class="crs-left-tagline">Simply Easy Learning</div>
               </a>
            </div>
            <div class="main-scroll">
            <div class="scroller">
               <ul class="nav left-menu">	
                  						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#00aeef!important;">Control System</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture activebar " id='11'>
                                 <a href="https://www.tutorialspoint.com/control_system/index.asp" style="">
                                    <i class="fa fa-home"></i> Control System - Home  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='12'>
                                 <a href="https://www.tutorialspoint.com/control_system/introduction_to_control_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to Control System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='13'>
                                 <a href="https://www.tutorialspoint.com/control_system/types_of_control_systems.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Types of Control Systems  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='14'>
                                 <a href="https://www.tutorialspoint.com/control_system/types_of_feed_back.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Types of Feed Back  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='15'>
                                 <a href="https://www.tutorialspoint.com/control_system/transfer_function_of_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Transfer Function of System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='16'>
                                 <a href="https://www.tutorialspoint.com/control_system/effects_of_feedback.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Effects of Feedback  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='17'>
                                 <a href="https://www.tutorialspoint.com/control_system/mathematical_model_of_control_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Mathematical Model of Control System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='18'>
                                 <a href="https://www.tutorialspoint.com/control_system/introduction_to_mechanical_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to Mechanical System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='19'>
                                 <a href="https://www.tutorialspoint.com/control_system/translational_mechanical_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Translational Mechanical System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='110'>
                                 <a href="https://www.tutorialspoint.com/control_system/rotational_mechanical_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Rotational Mechanical System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='111'>
                                 <a href="https://www.tutorialspoint.com/control_system/force_voltage_analogy.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Force Voltage Analogy  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='112'>
                                 <a href="https://www.tutorialspoint.com/control_system/force_current_analogy.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Force Current Analogy  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='113'>
                                 <a href="https://www.tutorialspoint.com/control_system/torque_voltage_analogy.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Torque Voltage Analogy  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='114'>
                                 <a href="https://www.tutorialspoint.com/control_system/torque_current_analogy.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Torque Current Analogy  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#00aeef!important;">Transfer Function Parameters</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='21'>
                                 <a href="https://www.tutorialspoint.com/control_system/introduction_to_block_diagram_elements.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to Block Diagram Elements  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='22'>
                                 <a href="https://www.tutorialspoint.com/control_system/block_diagram_reduction.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Block Diagram Reduction  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='23'>
                                 <a href="https://www.tutorialspoint.com/control_system/block_diagram_reduction_problem_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Block Diagram Reduction Problem 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='24'>
                                 <a href="https://www.tutorialspoint.com/control_system/block_diagram_reduction_problem_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Block Diagram Reduction Problem 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='25'>
                                 <a href="https://www.tutorialspoint.com/control_system/signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Signal Flow Graph  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='26'>
                                 <a href="https://www.tutorialspoint.com/control_system/problem_on_signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Signal Flow Graph  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='27'>
                                 <a href="https://www.tutorialspoint.com/control_system/rules_for_signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Rules For Signal Flow Graph  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='28'>
                                 <a href="https://www.tutorialspoint.com/control_system/masonandrsquo_s_gain_formula.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Mason&rsquo;s Gain Formula  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='29'>
                                 <a href="https://www.tutorialspoint.com/control_system/procedure_to_convert_block_diagram_to_signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Procedure to Convert Block Diagram to Signal Flow Graph  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#00aeef!important;">Time Domain Analysis</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='31'>
                                 <a href="https://www.tutorialspoint.com/control_system/introduction_to_time_analysis.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to Time Analysis  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='32'>
                                 <a href="https://www.tutorialspoint.com/control_system/test_signals_in_transient_analysis.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Test Signals in Transient Analysis  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='33'>
                                 <a href="https://www.tutorialspoint.com/control_system/order_of_a_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Order of a System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='34'>
                                 <a href="https://www.tutorialspoint.com/control_system/time_response_of_first_order_control_system_to_unit_step_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Response of First Order Control System to Unit Step Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='35'>
                                 <a href="https://www.tutorialspoint.com/control_system/time_response_of_first_order_control_system_to_unit_impulse.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Response of First Order Control System to Unit Impulse  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='36'>
                                 <a href="https://www.tutorialspoint.com/control_system/time_response_of_first_order_system_to_unit_ramp_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Response of First Order System to Unit Ramp Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='37'>
                                 <a href="https://www.tutorialspoint.com/control_system/second_order_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Second Order System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='38'>
                                 <a href="https://www.tutorialspoint.com/control_system/time_response_of_undamped_second_order_system_for_step_unit.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Response of Undamped Second Order System for Step Unit  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='39'>
                                 <a href="https://www.tutorialspoint.com/control_system/response_of_differently_damped_second_order_systems_for_unit_step_input.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Response of Differently Damped Second Order Systems for Unit Step Input  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='310'>
                                 <a href="https://www.tutorialspoint.com/control_system/problem_on_time_response_analysis.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Time Response Analysis  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='311'>
                                 <a href="https://www.tutorialspoint.com/control_system/time_domain_specifications.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Time Domain Specifications  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='312'>
                                 <a href="https://www.tutorialspoint.com/control_system/rise_time.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Rise Time  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='313'>
                                 <a href="https://www.tutorialspoint.com/control_system/peak_time.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Peak Time  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='314'>
                                 <a href="https://www.tutorialspoint.com/control_system/peak_overshoot.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Peak Overshoot  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='315'>
                                 <a href="https://www.tutorialspoint.com/control_system/settling_time.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Settling Time  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#00aeef!important;">Steady State Analysis</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='41'>
                                 <a href="https://www.tutorialspoint.com/control_system/steady_state_error.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Steady State Error  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='42'>
                                 <a href="https://www.tutorialspoint.com/control_system/type_number_of_control_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Type Number of Control System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='43'>
                                 <a href="https://www.tutorialspoint.com/control_system/static_error_constants.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Static Error Constants  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='44'>
                                 <a href="https://www.tutorialspoint.com/control_system/steady_state_error_when_input_is_unit_step_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Steady State Error When Input is Unit Step Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='45'>
                                 <a href="https://www.tutorialspoint.com/control_system/steady_state_error_when_input_is_unit_ramp_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Steady State Error When Input is Unit Ramp Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='46'>
                                 <a href="https://www.tutorialspoint.com/control_system/steady_state_error_when_error_is_unit_parabolic_signal.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Steady State Error When Error is Unit Parabolic Signal  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='47'>
                                 <a href="https://www.tutorialspoint.com/control_system/problem_on_to_calculate_steady_state_error_and_open_loop_transfer_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i>  Problem on to Calculate Steady State Error & Open Loop Transfer Function  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#00aeef!important;">Stability</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='51'>
                                 <a href="https://www.tutorialspoint.com/control_system/introduction_to_stability.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to Stability  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='52'>
                                 <a href="https://www.tutorialspoint.com/control_system/classification_of_systems_based_on_stability.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Classification of Systems Based on Stability  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='53'>
                                 <a href="https://www.tutorialspoint.com/control_system/routh_stability_criterion.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Routh Stability Criterion  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='54'>
                                 <a href="https://www.tutorialspoint.com/control_system/example_on_routh_array_stable_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Example on Routh Array Stable System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='55'>
                                 <a href="https://www.tutorialspoint.com/control_system/example_on_routh_array_unstable_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Example on Routh Array Unstable System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='56'>
                                 <a href="https://www.tutorialspoint.com/control_system/special_case_of_routh_array_case_i.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Special Case of Routh Array Case I  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='57'>
                                 <a href="https://www.tutorialspoint.com/control_system/special_case_of_routh_array_case_ii.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Special Case of Routh Array Case II  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#00aeef!important;">Frequency Response Analysis</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='61'>
                                 <a href="https://www.tutorialspoint.com/control_system/introduction_to_frequency_response.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to Frequency Response  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#00aeef!important;">Frequency Domain Specifications</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='71'>
                                 <a href="https://www.tutorialspoint.com/control_system/magnitude_and_phase_of_second_order_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Magnitude & Phase of Second Order System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='72'>
                                 <a href="https://www.tutorialspoint.com/control_system/resonant_frequency.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Resonant Frequency  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='73'>
                                 <a href="https://www.tutorialspoint.com/control_system/resonant_peak.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Resonant Peak  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='74'>
                                 <a href="https://www.tutorialspoint.com/control_system/band_width.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Band Width  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='75'>
                                 <a href="https://www.tutorialspoint.com/control_system/introduction_to_bode_plot.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to Bode Plot  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='76'>
                                 <a href="https://www.tutorialspoint.com/control_system/procedure_to_draw_bode_plot_and_bode_plot_for_constant_k.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Procedure to Draw Bode Plot & Bode Plot for Constant K  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='77'>
                                 <a href="https://www.tutorialspoint.com/control_system/bode_plot_for_integral_term.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Bode Plot for Integral Term  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='78'>
                                 <a href="https://www.tutorialspoint.com/control_system/bode_plot_for_derivative_term.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Bode plot for Derivative Term  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='79'>
                                 <a href="https://www.tutorialspoint.com/control_system/bode_plot_for_derivative_term_advanced.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Bode plot for Derivative Term Advanced  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='710'>
                                 <a href="https://www.tutorialspoint.com/control_system/first_order_term_in_denominator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> First Order Term in Denominator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='711'>
                                 <a href="https://www.tutorialspoint.com/control_system/first_order_term_in_numerator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> First Order Term in Numerator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='712'>
                                 <a href="https://www.tutorialspoint.com/control_system/introduction_to_polar_plot_and_nyquist_plot.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to Polar Plot and Nyquist plot  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='713'>
                                 <a href="https://www.tutorialspoint.com/control_system/polar_plot_of_type_0_order_1_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Polar plot of Type 0, Order 1 System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='714'>
                                 <a href="https://www.tutorialspoint.com/control_system/polar_plot_of_type_1_order_2_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Polar plot of Type 1, Order 2 System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='715'>
                                 <a href="https://www.tutorialspoint.com/control_system/polar_plot_of_type_0_order_2_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Polar plot of Type 0, Order 2 System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='716'>
                                 <a href="https://www.tutorialspoint.com/control_system/polar_plot_of_type_1_order_3_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Polar plot of Type 1, Order 3 System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='717'>
                                 <a href="https://www.tutorialspoint.com/control_system/problem_on_polar_plot.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Polar Plot  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='718'>
                                 <a href="https://www.tutorialspoint.com/control_system/nyquist_stability_criteria.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Nyquist Stability Criteria  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='719'>
                                 <a href="https://www.tutorialspoint.com/control_system/nyquist_stability_criteria_advanced.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Nyquist Stability Criteria Advanced  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='720'>
                                 <a href="https://www.tutorialspoint.com/control_system/m_circles.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> M Circles  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='721'>
                                 <a href="https://www.tutorialspoint.com/control_system/n_circles.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> N Circles  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#00aeef!important;">Compensator</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='81'>
                                 <a href="https://www.tutorialspoint.com/control_system/introduction_to_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='82'>
                                 <a href="https://www.tutorialspoint.com/control_system/lead_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Lead Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='83'>
                                 <a href="https://www.tutorialspoint.com/control_system/effects_of_lead_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Effects of Lead Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='84'>
                                 <a href="https://www.tutorialspoint.com/control_system/lag_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Lag Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='85'>
                                 <a href="https://www.tutorialspoint.com/control_system/effects_of_lag_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Effects of Lag Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='86'>
                                 <a href="https://www.tutorialspoint.com/control_system/lag_lead_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Lag Lead Compensator  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#00aeef!important;">Controllers</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='91'>
                                 <a href="https://www.tutorialspoint.com/control_system/derivative_controller.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Derivative Controller  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='92'>
                                 <a href="https://www.tutorialspoint.com/control_system/integral_controller.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Integral Controller  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='93'>
                                 <a href="https://www.tutorialspoint.com/control_system/proportional_derivative_pd_controller.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Proportional Derivative (PD) Controller  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='94'>
                                 <a href="https://www.tutorialspoint.com/control_system/effect_of_proportional_derivative_controller.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Effect of Proportional Derivative Controller  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='95'>
                                 <a href="https://www.tutorialspoint.com/control_system/proportional_integral_pi_controller.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Proportional Integral (PI) Controller  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='96'>
                                 <a href="https://www.tutorialspoint.com/control_system/effect_proportional_integral_pi_controller.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Effect Proportional Integral (PI) Controller  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='97'>
                                 <a href="https://www.tutorialspoint.com/control_system/proportional_integral_derivative_pid_controller.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Proportional Integral Derivative (PID) Controller  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='98'>
                                 <a href="https://www.tutorialspoint.com/control_system/effect_of_pid_controllers.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Effect of PID Controllers  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='99'>
                                 <a href="https://www.tutorialspoint.com/control_system/problem_on_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Compensator  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#00aeef!important;">State Space Analysis</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='101'>
                                 <a href="https://www.tutorialspoint.com/control_system/introduction_to_state_space_analysis.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Introduction to State Space Analysis  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='102'>
                                 <a href="https://www.tutorialspoint.com/control_system/state_model.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> State Model  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='103'>
                                 <a href="https://www.tutorialspoint.com/control_system/state_transition_matrix.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> State Transition Matrix  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='104'>
                                 <a href="https://www.tutorialspoint.com/control_system/state_transition_matrix_problem_1.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> State Transition Matrix Problem 1  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='105'>
                                 <a href="https://www.tutorialspoint.com/control_system/state_transition_matrix_problem_2.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> State Transition Matrix Problem 2  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='106'>
                                 <a href="https://www.tutorialspoint.com/control_system/derivation_of_transfer_function_from_state_model.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Derivation of Transfer Function from State Model  
                                 </a>
                              </li>
                                                         
                        </ul>
                     </li>	    
                     						   
                     <li><a href="javascript:void(0);" class="clsSection" style="background-color:#00aeef!important;">GATE Exams Questions and Answers</a>
                        <ul class="submenu">
                           	
                              <li class="clsLecture  " id='111'>
                                 <a href="https://www.tutorialspoint.com/control_system/problem_on_mechanical_translational_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Mechanical Translational System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='112'>
                                 <a href="https://www.tutorialspoint.com/control_system/problem_on_mechanical_translational_system_including_friction.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Mechanical Translational System Including Friction  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='113'>
                                 <a href="https://www.tutorialspoint.com/control_system/problem_on_transfer_function_of_electrical_network.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Transfer Function of Electrical Network  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='114'>
                                 <a href="https://www.tutorialspoint.com/control_system/problem_on_mechanical_rotational_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem on Mechanical Rotational System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='115'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_block_diagram_reduction.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Block Diagram Reduction  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='116'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_1_on_signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 1 on Signal Flow Graph  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='117'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_2_on_signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 2 on Signal Flow Graph  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='118'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_3_on_signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 3 on Signal Flow Graph  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='119'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_4_on_signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 4 on Signal Flow Graph  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1110'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_5_on_signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 5 on Signal Flow Graph  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1111'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_6_on_signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 6 on Signal Flow Graph  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1112'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_7_on_signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 7 on Signal Flow Graph  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1113'>
                                 <a href="https://www.tutorialspoint.com/control_system/problem_1_on_convert_block_diagram_to_signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem 1 on Convert Block Diagram to Signal Flow Graph  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1114'>
                                 <a href="https://www.tutorialspoint.com/control_system/problem_2_on_converting_block_diagram_to_signal_flow_graph.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> Problem 2 on Converting Block Diagram to Signal Flow Graph  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1115'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_1_on_stability.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 1 on Stability  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1116'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_2_on_stability.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 2 on Stability  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1117'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_4_on_stability.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 4 on Stability  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1118'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_3_on_stability.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 3 on Stability  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1119'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_1_on_routh_array.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 1 on Routh Array  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1120'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_2_on_routh_array.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 2 on Routh Array  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1121'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_block_diagram_stability.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Block Diagram Stability  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1122'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_deriving_characteristic_equation.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Deriving Characteristic Equation  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1123'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_finding_unknown_values_using_routh_array.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Finding Unknown Values Using Routh Array  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1124'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_stability_when_signal_flow_graph_is_given.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Stability When Signal Flow Graph is Given  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1125'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_special_case_ii_in_routh_array.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Special Case II in Routh Array  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1126'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_special_case_i_in_routh_array.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Special Case I in Routh Array  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1127'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_stability_when_oscillating_frequency_is_given.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Stability When Oscillating Frequency is Given  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1128'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_1_on_root_locus.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 1 on Root Locus  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1129'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_finding_open_loop_transfer_function_from_root_locus.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Finding Open Loop Transfer Function From Root Locus  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1130'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_centroid.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Centroid  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1131'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_2_on_root_locus.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 2 on Root Locus  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1132'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_3_on_root_locus.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 3 on Root Locus  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1133'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_4_on_root_locus.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 4 on Root Locus  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1134'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_5_on_root_locus.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 5 on Root Locus  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1135'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_bode_plot.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Bode Plot  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1136'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_1_on_nyquist_plot.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 1 on Nyquist Plot  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1137'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_2_on_nyquist_plot.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 2 on Nyquist Plot  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1138'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_minimum_and_non_minimum_phase_system.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Minimum & Non Minimum Phase System  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1139'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_1_on_phase_margin.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 1 on Phase Margin  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1140'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_1_on_gain_margin.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 1 on Gain Margin  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1141'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_system_output.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on System Output  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1142'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_gain_margin_and_phase_margin.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Gain Margin & Phase Margin  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1143'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_shortcut_to_find_gain_margin.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Shortcut to Find Gain Margin  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1144'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_1_on_phase_cross_over_frequency.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 1 on Phase Cross Over Frequency  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1145'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_2_on_phase_cross_over_frequency.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 2 on Phase Cross Over Frequency  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1146'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_to_find_unknown_value_using_phase_margin.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem to Find Unknown Value Using Phase Margin  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1147'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_nyquist_plot.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Nyquist Plot  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1148'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_1_on_lead_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 1 on Lead Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1149'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_2_on_lead_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 2 on Lead Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1150'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_3_on_lead_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 3 on Lead Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1151'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_4_on_lead_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 4 on Lead Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1152'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1153'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_1_on_controllers.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 1 on Controllers  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1154'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_2_on_controllers.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 2 on Controllers  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1155'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_integral_controller.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Integral Controller  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1156'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_1_on_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 1 on Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1157'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_2_on_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 2 on Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1158'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_3_on_compensator.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 3 on Compensator  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1159'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_1_on_eigen_values.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 1 on Eigen Values  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1160'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_transfer_function_and_state_model.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Transfer Function and State Model  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1161'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_2_on_eigen_values.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem 2 on Eigen Values  
                                 </a>
                              </li>
                              	
                              <li class="clsLecture  " id='1162'>
                                 <a href="https://www.tutorialspoint.com/control_system/gate_problem_on_transfer_function.asp" style="">
                                    <i class="fa fa-play-circle-o"></i> GATE Problem on Transfer Function  
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
                              <img src="https://www.tutorialspoint.com/assets/videos/courses/161/images/course_161_image.png" alt="" />   
                           </div>                        
                        </div>
                        <div class="course_header_title" style="background:#00aeef">Control System           
                        </div>
                        <h2 class="course_header_sub">Simply Easy Learning</h2>
                     </div> 		  		  		   
                  </div>
               </div>
            </div>
                              
               <div class="content-body">
                  <hr>               
                  <div class="options">                                            
                     	
                     <a href='https://www.tutorialspoint.com/control_system/index.asp' class="button round accent-color date prevpage">   
                        <i class="fa fa-arrow-circle-o-left big-font"></i> Previous Page
                     </a>                    
                                          <a href="https://www.tutorialspoint.com/control_system/introduction_to_control_system.asp" class="button round accent-color date nextpage">
                     Next Page <i class="fa fa-arrow-circle-o-right big-font"></i>&nbsp;
                     </a>
                  </div>
                  <hr>               						
                  <h1>Control System</h1>
                  <p></p>
                  <div>
                     <p>This Video tutorial is meant to provide the readers the know how to analyze the control systems with the help of mathematical models. After completing this Video tutorial, you will be able to learn various methods and techniques in order to improve the performance of the control systems based on the requirements.</p><h1>Audience</h1><p>These video classes have been designed for Electronics Engineering Students, especially those who are preparing for GATE, IES and other PSU exams. It will also be helpful for students in preparing them for their Engineering syllabus.</p>                     <h1>Instructor</h1>
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
                     	
                     <a href="https://www.tutorialspoint.com/control_system/index.asp" class="button round accent-color date prevpage">   
                     <i class="fa fa-arrow-circle-o-left big-font"></i> Previous Page
                     </a>                       
                                          <a href="https://www.tutorialspoint.com/control_system/introduction_to_control_system.asp" class="button round accent-color date nextpage">
                        Next Page <i class="fa fa-arrow-circle-o-right big-font"></i>&nbsp;
                     </a>
                  </div>
               
                 
               </div>
              <script>
                 var vc = 'cXNzUXUva3VaeGFxa09NT2pKN1VMUT09';
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
      <a href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://www.facebook.com/sharer.php?u=' + 'https://www.tutorialspoint.com/control_system/index.asp','sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;">
      <img src="/images/facebookIcon.jpg" alt="img" />
      </a>
      <a  href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://twitter.com/share?url=' + 'https://www.tutorialspoint.com/control_system/index.asp','sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;">
      <img src="/images/twitterIcon.jpg" alt="img" />
      </a>
      <a  href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://www.linkedin.com/cws/share?url=' + 'https://www.tutorialspoint.com/control_system/index.asp&amp;title='+ document.title,'sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;">
      <img src="/images/linkedinIcon.jpg" alt="img" />
      </a>      
      <a  href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://www.stumbleupon.com/submit?url=https://www.tutorialspoint.com/control_system/index.asp&amp;title='+ document.title,'sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;">
      <img src="/images/StumbleUponIcon.jpg" alt="img" />
      </a>
      <a  href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://reddit.com/submit?url=https://www.tutorialspoint.com/control_system/index.asp&amp;title='+ document.title,'sharer','toolbar=0,status=0,width=626,height=656,top='+sTop+',left='+sLeft);return false;">
      <img src="/images/reddit.jpg" alt="img" />
      </a>
      <a  href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://www.blogger.com/blog-this.g?u=https://www.tutorialspoint.com/control_system/index.asp&amp;n='+ document.title,'sharer','toolbar=0,status=0,width=626,height=656,top='+sTop+',left='+sLeft);return false;">
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
