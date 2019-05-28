<%@ page import="data.Login" %>
<%@ page import="data.Question" %>
<!DOCTYPE html>
<html lang="en" >
<head>
<%
		Question q = new Question();
		if (request.getAttribute("question") != null) {
 		 	q = (Question)request.getAttribute("question");
		}
	%>
  <meta charset="UTF-8">
  
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>  
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  
  <title>Memory Game</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Anton'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
        
</head>
    <nav class="navbar navbar-expand-lg mb-4 top-bar navbar-static-top sps sps--abv">
        <div class="container">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse1" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand mx-auto" href="homepage.jsp">Home<span>page</span></a>
      <div class="collapse navbar-collapse" id="navbarCollapse1">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"> <a class="nav-link" href="scoreController">High Scores<span class="sr-only"></span></a> </li>
        <!-- <li class="nav-item"> <a class="nav-link" href='CityController?CityName=<%= q.getCityName()%>'>City<span class="sr-only">(current)</span></a> </li>  -->
		<li class="nav-item dropdown">
            			<a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Games</a>
            			<div class="dropdown-menu" aria-labelledby="dropdown01">
		             		 <a class="dropdown-item" href="memorygame.jsp">Memory Game</a>
		              		<!--  <a class="dropdown-item" href="puzzle.jsp">Puzzle Game</a>  -->
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
<body>


    <div class="wrap">
    <div class="game"></div>
	
	<div class="modal-overlay">
		<div class="modal">
			<h2 class="winner">Nice Job!</h2>
                        <a href="homepage.jsp"/><button class="restart">Go Home</button>
                        <a href="memorygame.jsp"/><button class="restart">Play Another Game </button>
		</div>
	</div>

  </div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

</body>
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
    
    
    * {
  box-sizing: border-box;
}

html, body {
  height: 100%;
}

body {
  background: black;
  min-height: 100%;
  font-family: "Arial", sans-serif;
}

.wrap {
  position: relative;
  height: 100%;
  min-height: 500px;
  padding-bottom: 20px;
}

.game {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  -webkit-perspective: 500px;
          perspective: 500px;
  min-height: 100%;
  height: 100%;
}

@-webkit-keyframes matchAnim {
  0% {
    background: #bcffcc;
  }
  100% {
    background: white;
  }
}

@keyframes matchAnim {
  0% {
    background: #bcffcc;
  }
  100% {
    background: white;
  }
}
.card {
  float: left;
  width: 16.66666%;
  height: 25%;
  padding: 5px;
  text-align: center;
  display: block;
  -webkit-perspective: 500px;
          perspective: 500px;
  position: relative;
  cursor: pointer;
  z-index: 50;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
@media (max-width: 800px) {
  .card {
    width: 25%;
    height: 16.666%;
  }
}
.card .inside {
  width: 100%;
  height: 100%;
  display: block;
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: .4s ease-in-out;
  background: white;
}
.card .inside.picked, .card .inside.matched {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.card .inside.matched {
  -webkit-animation: 1s matchAnim ease-in-out;
          animation: 1s matchAnim ease-in-out;
  -webkit-animation-delay: .4s;
          animation-delay: .4s;
}
.card .front, .card .back {
  border: 1px solid black;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  padding: 20px;
}
.card .front img, .card .back img {
  max-width: 100%;
  display: block;
  margin: 0 auto;
  max-height: 100%;
}
.card .front {
  -webkit-transform: rotateY(-180deg);
          transform: rotateY(-180deg);
}
@media (max-width: 800px) {
  .card .front {
    padding: 5px;
  }
}
.card .back {
  -webkit-transform: rotateX(0);
          transform: rotateX(0);
}
@media (max-width: 800px) {
  .card .back {
    padding: 10px;
  }
}

.modal-overlay {
  display: none;
  background: rgba(0, 0, 0, 0.8);
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}

.modal {
  display: none;
  position: relative;
  width: 500px;
  height: 400px;
  max-height: 90%;
  max-width: 90%;
  min-height: 380px;
  margin: 0 auto;
  background: white;
  top: 50%;
  -webkit-transform: translateY(-50%);
          transform: translateY(-50%);
  padding: 30px 10px;
}
.modal .winner {
  font-size: 80px;
  text-align: center;
  font-family: "Anton", sans-serif;
  color: #4d4d4d;
  text-shadow: 0px 3px 0 black;
}
@media (max-width: 480px) {
  .modal .winner {
    font-size: 60px;
  }
}
.modal .restart {
  font-family: "Anton", sans-serif;
  margin: 30px auto;
  padding: 20px 30px;
  display: block;
  font-size: 30px;
  border: none;
  background: #4d4d4d;
  background: linear-gradient(#4d4d4d, #222);
  border: 1px solid #222;
  border-radius: 5px;
  color: white;
  text-shadow: 0px 1px 0 black;
  cursor: pointer;
}
.modal .restart:hover {
  background: linear-gradient(#222, black);
}
.modal .message {
  text-align: center;
}
.modal .message a {
  text-decoration: none;
  color: #28afe6;
  font-weight: bold;
}
.modal .message a:hover {
  color: #56c0eb;
  border-bottom: 1px dotted #56c0eb;
}
.modal .share-text {
  text-align: center;
  margin: 10px auto;
}
.modal .social {
  margin: 20px auto;
  text-align: center;
}
.modal .social li {
  display: inline-block;
  height: 50px;
  width: 50px;
  margin-right: 10px;
}
.modal .social li:last-child {
  margin-right: 0;
}
.modal .social li a {
  display: block;
  line-height: 50px;
  font-size: 20px;
  color: white;
  text-decoration: none;
  border-radius: 5px;
}
.modal .social li a.facebook {
  background: #3b5998;
}
.modal .social li a.facebook:hover {
  background: #4c70ba;
}
.modal .social li a.google {
  background: #D34836;
}
.modal .social li a.google:hover {
  background: #dc6e60;
}
.modal .social li a.twitter {
  background: #4099FF;
}
.modal .social li a.twitter:hover {
  background: #73b4ff;
}

footer {
  height: 20px;
  position: absolute;
  bottom: 0;
  width: 100%;
  z-index: 0;
}
footer .disclaimer {
  line-height: 20px;
  font-size: 12px;
  color: #727272;
  text-align: center;
}
@media (max-width: 767px) {
  footer .disclaimer {
    font-size: 8px;
  }
}

</style>
<script>
(function(){
	
	var Memory = {

		init: function(cards){
			this.$game = $(".game");
			this.$modal = $(".modal");
			this.$overlay = $(".modal-overlay");
			this.$restartButton = $("button.restart");
			this.cardsArray = $.merge(cards, cards);
			this.shuffleCards(this.cardsArray);
			this.setup();
			this.binding();
		},

		shuffleCards: function(cardsArray){
			this.$cards = $(this.shuffle(this.cardsArray));
		},

		setup: function(){
			this.html = this.buildHTML();
			this.$game.html(this.html);
			this.$memoryCards = $(".card");
			this.paused = false;
     	this.guess = null;
		},

		binding: function(){
			this.$memoryCards.on("click", this.cardClicked);
			this.$restartButton.on("click", $.proxy(this.reset, this));
		},
		// kinda messy but hey
		cardClicked: function(){
			var _ = Memory;
			var $card = $(this);
			if(!_.paused && !$card.find(".inside").hasClass("matched") && !$card.find(".inside").hasClass("picked")){
				$card.find(".inside").addClass("picked");
				if(!_.guess){
					_.guess = $(this).attr("data-id");
				} else if(_.guess == $(this).attr("data-id") && !$(this).hasClass("picked")){
					$(".picked").addClass("matched");
					_.guess = null;
				} else {
					_.guess = null;
					_.paused = true;
					setTimeout(function(){
						$(".picked").removeClass("picked");
						Memory.paused = false;
					}, 600);
				}
				if($(".matched").length == $(".card").length){
					_.win();
				}
			}
		},

		win: function(){
			this.paused = true;
			setTimeout(function(){
				Memory.showModal();
				Memory.$game.fadeOut();
			}, 1000);
		},

		showModal: function(){
			this.$overlay.show();
			this.$modal.fadeIn("slow");
		},

		hideModal: function(){
			this.$overlay.hide();
			this.$modal.hide();
		},

		reset: function(){
			this.hideModal();
			this.shuffleCards(this.cardsArray);
			this.setup();
			this.$game.show("slow");
		},

		shuffle: function(array){
			var counter = array.length, temp, index;
	   	while (counter > 0) {
        	index = Math.floor(Math.random() * counter);
        	counter--;
        	temp = array[counter];
        	array[counter] = array[index];
        	array[index] = temp;
	    	}
	    	return array;
		},

		buildHTML: function(){
			var frag = '';
			this.$cards.each(function(k, v){
				frag += '<div class="card" data-id="'+ v.id +'"><div class="inside">\
				<div class="front"><img src="'+ v.img +'"\
				alt="'+ v.name +'" /></div>\
				<div class="back"><img src="https://image.flaticon.com/icons/png/512/36/36601.png"\
				alt="Codepen" /></div></div>\
				</div>';
			});
			return frag;
		}
	};

	var cards = [
		{
			name: "turkey",
			img: "https://cdn.countryflags.com/thumbs/turkey/flag-400.png",
			id: 1,
		},
		{
			name: "france",
			img: "https://cdn.countryflags.com/thumbs/france/flag-400.png",
			id: 2
		},
		{
			name: "italy",
			img: "https://cdn.countryflags.com/thumbs/italy/flag-800.png",
			id: 3
		},
		{
			name: "germany",
			img: "https://cdn.countryflags.com/thumbs/germany/flag-800.png",
			id: 4
		}, 
		{
			name: "crotia",
			img: "https://cdn.countryflags.com/thumbs/croatia/flag-800.png",
			id: 5
		},
		{
			name: "belgium",
			img: "https://cdn.countryflags.com/thumbs/belgium/flag-800.png",
			id: 6
		},
		{
			name: "denmark",
			img: "https://cdn.countryflags.com/thumbs/denmark/flag-800.png",
			id: 7
		},
		{
			name: "uk",
			img: "https://cdn.countryflags.com/thumbs/united-kingdom/flag-800.png",
			id: 8
		},
		{
			name: "canada",
			img: "https://cdn.countryflags.com/thumbs/canada/flag-800.png",
			id: 9
		},
		{
			name: "australia",
			img: "https://cdn.countryflags.com/thumbs/australia/flag-800.png",
			id: 10
		},
		{
			name: "sweden",
			img: "https://cdn.countryflags.com/thumbs/sweden/flag-800.png",
			id: 11
		},
		{
			name: "norway",
			img: "https://cdn.countryflags.com/thumbs/norway/flag-800.png",
			id: 12
		},
	];
    
	Memory.init(cards);


})();
    </script>
</html>
