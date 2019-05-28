<%@ page import="data.Login" %>
<%@ page import="data.Question" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<%
		Question q = new Question();
		if (request.getAttribute("question") != null) {
 		 	q = (Question)request.getAttribute("question");
		}
	%>
<html>
<head>
	<title><%= q.getCityName()%> Quiz</title>
	<link rel="SHORTCUT ICON" href="http://www.stickpng.com/assets/thumbs/5a4613ddd099a2ad03f9c994.png">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>  
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
    
    <nav class="navbar navbar-expand-lg mb-4 top-bar navbar-static-top sps sps--abv">
        <div class="container">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse1" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand mx-auto" href="homepage.jsp">Home<span>page</span></a>
      <div class="collapse navbar-collapse" id="navbarCollapse1">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"> <a class="nav-link" href="scoreController">High Scores<span class="sr-only"></span></a> </li>
         <li class="nav-item"> <a class="nav-link" href='CityController?CityName=<%= q.getCityName()%>'>City<span class="sr-only">(current)</span></a> </li>
		<li class="nav-item dropdown">
            			<a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Games</a>
            			<div class="dropdown-menu" aria-labelledby="dropdown01">
		             		 <a class="dropdown-item" href="memorygame.jsp">Memory Game</a>
		              		<!--  <a class="dropdown-item" href='PuzzleControl?CityName=<%= q.getCityName()%>'>Puzzle Game</a>  -->
		              		 <a class="dropdown-item" href='QuestionController?CityName=<%=q.getCityName()%>'>Quiz</a>
            			</div>
         			 </li>
					 <%
					 	if(request.getSession().getAttribute("login")!=null){
					 		Login login = (Login) request.getSession().getAttribute("login");
					 %>
					 <li class="nav-item">
					 	<a class="nav-link" href="#"><%= login.getFirstName().toUpperCase() %></a>
					</li>
					<li class="nav-item">
					 	<a class="nav-link" href="/CityGroupLima/SessionOut">Sign Out</a>
					</li>
					 <%	}	
					 	else { }
					 %> 	    
        </ul>
      </div>
        </div>
    </nav>
    
   
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script>
    var quiztitle = "<%=q.getCityName()%> Quiz";
    var quiz = [
        {	
            "question":   "Q1: <%=q.getQuestion1()%>",
            "image"         : "<%=q.getImage1()%>",
            "choices"       :   [
                                    "<%= q.getChoice11()%>",
                                    "<%= q.getChoice12()%>",
                                    "<%= q.getChoice13()%>",
                                    "<%= q.getChoice14()%>"
                                ],
            "correct"       :   "<%= q.getCorrect1() %>",
        },
        {	
            "question":   "Q2: <%=q.getQuestion2()%>",
            "image"         :   "<%=q.getImage2()%>",
            "choices"       :   [
                                    "<%= q.getChoice21()%>",
                                    "<%= q.getChoice22()%>",
                                    "<%= q.getChoice23()%>",
                                    "<%= q.getChoice24()%>"
                                ],
            "correct"       :   "<%= q.getCorrect2() %>",
        },
        {	
            "question":   "Q3: <%=q.getQuestion3()%>",
            "image"         :   "<%=q.getImage3()%>",
            "choices"       :   [
                                    "<%= q.getChoice31()%>",
                                    "<%= q.getChoice32()%>",
                                    "<%= q.getChoice33()%>",
                                    "<%= q.getChoice34()%>"
                                ],
            "correct"       :   "<%= q.getCorrect3() %>",
        },
        {	
            "question":   "Q4: <%=q.getQuestion4()%>",
            "image"         :   "<%=q.getImage4() %>",
            "choices"       :   [
                                    "<%= q.getChoice41()%>",
                                    "<%= q.getChoice42()%>",
                                    "<%= q.getChoice43()%>",
                                    "<%= q.getChoice44()%>"
                                ],
            "correct"       :   "<%= q.getCorrect4() %>",
        },
        {	
            "question":   "Q5: <%=q.getQuestion5()%>",
            "image"         :   "<%=q.getImage5()%>",
            "choices"       :   [
                                    "<%= q.getChoice51()%>",
                                    "<%= q.getChoice52()%>",
                                    "<%= q.getChoice53()%>",
                                    "<%= q.getChoice54()%>"
                                ],
            "correct"       :   "<%= q.getCorrect5() %>",
        },
        

    ];


    var currentquestion = 0, score = 0, submt=true, picked;

    jQuery(document).ready(function($){


        function htmlEncode(value){
          return $(document.createElement('div')).text(value).html();
        }

        function addChoices(choices){
            if(typeof choices !== "undefined" && $.type(choices) == "array"){
                $('#choice-block').empty();
                for(var i=0;i<choices.length; i++){
                    $(document.createElement('li')).addClass('choice choice-box').attr('data-index', i).text(choices[i]).appendTo('#choice-block');                    
                }
            }
        }
        
        function nextQuestion(){
            submt = true;
            $('#explanation').empty();
            $('#question').text(quiz[currentquestion]['question']);
            $('#pager').text('Question ' + Number(currentquestion + 1) + ' of ' + quiz.length);
            if(quiz[currentquestion].hasOwnProperty('image') && quiz[currentquestion]['image'] != ""){
                if($('#question-image').length == 0){
                    $(document.createElement('img')).addClass('question-image').attr('id', 'question-image').attr('src', quiz[currentquestion]['image']).attr('alt', htmlEncode(quiz[currentquestion]['question'])).insertAfter('#question');
                } else {
                    $('#question-image').attr('src', quiz[currentquestion]['image']).attr('alt', htmlEncode(quiz[currentquestion]['question']));
                }
            } else {
                $('#question-image').remove();
            }
            addChoices(quiz[currentquestion]['choices']);
            setupButtons();
        }


        function processQuestion(choice){
            if(quiz[currentquestion]['choices'][choice] == quiz[currentquestion]['correct']){
                $('.choice').eq(choice).css({'background-color':'#50D943'});
                $('#explanation').html('<strong>Correct!</strong> ' + htmlEncode(quiz[currentquestion]['explanation']));
                score++;
            } else {
                $('.choice').eq(choice).css({'background-color':'#D92623'});
                $('#explanation').html('<strong>Incorrect.</strong> ' + htmlEncode(quiz[currentquestion]['explanation']));
            }
            currentquestion++;
            $('#submitbutton').html('NEXT QUESTION &raquo;').on('click', function(){
                if(currentquestion == quiz.length){
                    endQuiz();
                } else {
                    $(this).text('Check Answer').css({'color':'#222'}).off('click');
                    nextQuestion();
                }
            })
        }

        function setupButtons(){
            $('.choice').on('mouseover', function(){
                $(this).css({'background-color':'#e1e1e1'});
            });
            $('.choice').on('mouseout', function(){
                $(this).css({'background-color':'#fff'});
            })
            $('.choice').on('click', function(){
                picked = $(this).attr('data-index');
                $('.choice').removeAttr('style').off('mouseout mouseover');
                $(this).css({'border-color':'#222','font-weight':700,'background-color':'#c1c1c1'});
                if(submt){
                    submt=false;
                    $('#submitbutton').css({'color':'#000'}).on('click', function(){
                        $('.choice').off('click');
                        $(this).off('click');
                        processQuestion(picked);
                    });
                }
            })
        }

        function endQuiz(){
            $('#explanation').empty();
            $('#question').empty();
            $('#choice-block').empty();
            $('#submitbutton').remove();
            $('#question').text("You got " + score + " out of " + quiz.length + " correct.");
            $(document.createElement('h2')).css({'text-align':'center', 'font-size':'4em'}).text(Math.round(score/quiz.length * 100) + '%').insertAfter('#question');
            $.ajax({
                type: 'POST',
                url: '/CityGroupLima/QuizController',
                data: { 
                    'score': score,
                },
                success: function(msg){
                    alert(score);
                }
            });
        }

        function init(){
            //add title
            if(typeof quiztitle !== "undefined" && $.type(quiztitle) === "string"){
                $(document.createElement('h1')).text(quiztitle).appendTo('#frame');
            } else {
                $(document.createElement('h1')).text("Quiz").appendTo('#frame');
            }

            //add pager and questions
            if(typeof quiz !== "undefined" && $.type(quiz) === "array"){
                //add pager
                $(document.createElement('p')).addClass('pager').attr('id','pager').text('Question 1 of ' + quiz.length).appendTo('#frame');
                //add first question
                $(document.createElement('h2')).addClass('question').attr('id', 'question').text(quiz[0]['question']).appendTo('#frame');
                //add image if present
                if(quiz[0].hasOwnProperty('image') && quiz[0]['image'] != ""){
                    $(document.createElement('img')).addClass('question-image').attr('id', 'question-image').attr('src', quiz[0]['image']).attr('alt', htmlEncode(quiz[0]['question'])).appendTo('#frame');
                }
                $(document.createElement('p')).addClass('explanation').attr('id','explanation').html('&nbsp;').appendTo('#frame');
            
                //questions holder
                $(document.createElement('ul')).attr('id', 'choice-block').appendTo('#frame');
            
                //add choices
                addChoices(quiz[0]['choices']);
            
                //add submit button
                $(document.createElement('div')).addClass('choice-box').attr('id', 'submitbutton').text('Check Answer').css({'font-weight':700,'color':'#222','padding':'30px 0'}).appendTo('#frame');
            
                setupButtons();
            }
        }
        
        init();
    });
    </script>
    <style type="text/css" media="all">
        html,body,div,span,h1,h2,h3,h4,h5,h6,p,code,small,strike,strong,sub,sup,b,u,i{
            border:0;
            font-size:100%;
            font:inherit;vertical-align:baseline;
            margin:0;
            padding:0;
        } 
        article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{
            display:block;
        } 
        body{
            line-height:20;
            font:normal 0.9em/1em "Helvetica Neue", Helvetica, Arial, sans-serif;
        } 
        ol,ul{
            list-style:none;
        }
        strong{
            font-weight:700;
        }
        #frame{
            width:1100px;
            border:1px solid #ccc;
            background: white;
            padding:10px;
            margin:3px;
        }
        h1{
            font:normal bold 2em/1.8em "Helvetica Neue", Helvetica, Arial, sans-serif;
            text-align:left;
            border-bottom:1px solid #999;
            padding:0;
            width:auto
        }
        h2{
            font:italic bold 1.3em/1.2em "Helvetica Neue", Helvetica, Arial, sans-serif;
            padding:0;
            text-align:center;
            margin:20px 0;
        }
        p.pager{margin:5px 0 5px;
              font:bold 1em/1em "Helvetica Neue", Helvetica, Arial, sans-serif;
              color:#999;
        }
        img.question-image{
            display:block;
            max-width:250px;
            margin:10px auto;
            border:1px solid #ccc;
            width:100%;height:auto;
        }
        #choice-block{
            display:block;
            list-style:none;
            margin:0;padding:0;
        }
        #submitbutton{
            background:#5a6b8c;
        }
        #submitbutton:hover{
            background:#7b8da6;
        }
        #explanation{
            margin:0 auto;
            padding:20px;
            width:75%;
        }
        .choice-box{
            display:block;
            text-align:center;
            margin:8px auto;
            padding:10px 0;
            border:1px solid #666;
            cursor:pointer;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }
    </style>
    
    <style>
         /* HEADER */
    .navbar.top-bar {
	border-radius: 0;
	padding: 16px 0;
	z-index: 16;
}
.navbar-toggler {
	border: 1px solid #fff;
	color: #fff;
	position: absolute;
	right: 21px;
}

.sps--abv {
	background-color: transparent;
	color: #000;
}
.sps--blw {
	background-color: #fff;
	color: #fff;
}
.top-bar a.navbar-brand {
	color: #fff;
	font-size: 26px;
	font-weight: 800;
	padding: 5px 0 0 10px;
	text-transform: uppercase;
}
.sps--blw.top-bar a.navbar-brand {
	color: #000;
}
.top-bar a.navbar-brand span {
	color: #0297ff;
}
.top-bar .nav-link {
	color: #fff;
	font-size: 16px;
	font-weight: 500;
	padding: 12px 18px!important;
}
.sps--blw.top-bar .nav-link {
	color: #000
}
.top-bar .navbar-nav .nav-item {
	margin: 0
}
.top-bar .nav-link:hover, .top-bar .nav-item.active a {
	color: #fff;
	border-bottom: 2px solid #fff;
	border-radius: 0;
}
.sps--blw.top-bar .nav-link:hover, .sps--blw.top-bar .nav-item.active a {
	color: #0297ff;
	border-bottom: none;
	border-radius: 0;
}
    </style>
</head>
<body class="ml-auto mr-auto" style="background-color: black;">
    <div class="container">
        <div class="row">
            <div >
                <div id="frame" role="content"></div>                
            </div>
           
        </div>
    </div>
    
</body>
</html>
