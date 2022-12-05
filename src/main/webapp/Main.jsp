<%@page import="com.smhrd.model.MessageDTO"%>
<%@page import="com.smhrd.model.MessageDAO"%>
<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>
	<%
		// 로그인 여부 확인
		// 로그인O -> 로그인 정보(email, pw, tel, address)
		// 로그인X -> null
		MemberDTO info = (MemberDTO)session.getAttribute("info");
	%>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						<a href="index.html" class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a>
						<nav>
							<!-- Q6. 로그인을 한 상태에서는 로그인탭 대신 로그아웃탭과 개인정보수정탭을 출력 -->
							<%if(info == null){ %>
								<a href="#menu">로그인</a>
							<%}else{ %>
								<% if(info.getEmail().equals("admin")){ %>
									<a href="ShowMember.jsp">회원정보관리</a>
								<%} %>
								<a href="UpdateMember.jsp">개인정보수정</a>
								<a href="LogoutCon.do">로그아웃</a>
							<%} %>
							
							
							<!-- Q7. 개인정보수정 기능 만들기 -->
							<!-- Q8. 로그아웃 기능 만들기 -->
							<!-- Q9. 관리자 계정(admin)일 때는 회원정보관리 탭 만들기 -->
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">	
						<ul class="links">
						<!-- Q3. 로그인 기능 만들기 -->
							<li><h5>로그인</h5></li>
								<form action="LoginCon.do" method="post">
									<li><input name="email" type="text"  placeholder="Email을 입력하세요"></li>
									<li><input name="pw" type="password"  placeholder="PW를 입력하세요"></li>
									<li><input type="submit" value="LogIn" class="button fit"></li>
								</form>
						</ul>
						<ul class="actions vertical">
						<!-- Q1. 회원가입 기능 만들기 -->
							<li><h5>회원가입</h5></li>
								<form action="JoinCon.do" method="post">
									<li><input type="text" name="email" placeholder="Email을 입력하세요"></li>
									<li> <button id="btn" type="button"> 아이디 중복 확인</button> </li>
									<!-- 아이디 중복확인 결과값 받아와서 결과값 출력 -->
									<li> <p id="idCheck"></p> </li>
									<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
									<li><input type="text" name="tel" placeholder="전화번호를 입력하세요"></li>
									<li><input type="text" name="address" placeholder="집주소를 입력하세요"></li>
									<li><input type="submit" value="JoinUs" class="button fit"></li>
								</form>
						</ul>
					</nav>			
				<!-- Banner -->
					<section id="banner" class="major">
						<div class="inner">
							<header class="major">
							<!-- Q4. 로그인 후 로그인한 사용자의 아이디로 바꾸기 -->
							<!-- ex) smhrd님 환영합니다.  -->
									<%if(info != null){ %>
										<h1> <%= info.getEmail() %> 님 환영합니다. </h1>
									<%}else{ %>
										<h1>로그인 한 세션아이디를 출력해주세요</h1>
									<%} %>
							</header>
							<div class="content">
								<p>게시판을 이용해보세요 ^^<br></p>
								<ul class="actions">
									<li><a href="BoardMain.jsp" class="button next scrolly">게시판 바로가기</a></li>
								</ul>
							</div>
						</div>
					</section>

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one" class="tiles">
								<article>
									<span class="image">
										<img src="images/pic01.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">HTML</a></h3>
										<p>홈페이지를 만드는 기초 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic02.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">CSS</a></h3>
										<p>HTML을 디자인해주는 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic03.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">Servlet/JSP</a></h3>
										<p>Java를 기본으로 한 웹 프로그래밍 언어/스크립트 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic04.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">JavaScript</a></h3>
										<p>HTML에 기본적인 로직을 정의할 수 있는 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic05.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">MVC</a></h3>
										<p>웹 프로젝트 중 가장 많이 사용하는 디자인패턴</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic06.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">Web Project</a></h3>
										<p>여러분의 최종프로젝트에 웹 기술을 활용하세요!</p>
									</header>
								</article>
							</section>
					<!-- Two -->
							<section id="two">
								<div class="inner">
									<header class="major">
										<h2>나에게 온 메세지 확인하기</h2>
									</header>
									<p></p>
									<ul class="actions">
										<!-- Q12. 로그인 이메일 출력! -->
										<!-- ex) smhrd님에게 온 메시지  -->
										<%if(info != null){ %>
											<li> <%= info.getEmail() %> 님에게 온 메시지 </li>
											<!-- Q14. 메시지 전체 삭제 기능 
												sql : delete from web_message where recipient = 로그인한 이메일 -->								
											<li><a href="DeleteCon.do?email=<%= info.getEmail()%>" class="button next scrolly">전체삭제하기</a></li>
										<%}else{ %>
											<li>로그인을 하세요.</li>
										<%} %>
										
										
									</ul>
									<!-- Q13. table형태로 나한테 온 메시지만 가져와서 보여주기
											 번호, 보낸사람, 내용, 시간 -->
									<% 
									ArrayList<MessageDTO> msg_list = new ArrayList<MessageDTO>();
									if(info!=null){
										msg_list = new MessageDAO().showMessage(info.getEmail());
									}
									
									%>		 
									 <table>
									 	<tr>
									 		<td> 번호 </td>
									 		<td> 보낸사람 </td>
									 		<td> 내용 </td>
									 		<td> 시간 </td>
									 		<td> 삭제 </td>
									 	</tr>
									 	<%for(int i=0; i<msg_list.size(); i++){ %>
									 		<tr>
										 		<td> <%= i+1 %> </td>
										 		<td> <%= msg_list.get(i).getSender() %> </td>
										 		<td> <%= msg_list.get(i).getMessage() %> </td>
										 		<td> <%= msg_list.get(i).getM_date() %> </td>
										 		<td> <a href="DeleteOneCon.do?num=<%= msg_list.get(i).getNum()%>"> 삭제 </a> </td>
										 	</tr>
									 	<%} %>
									 </table>
									<!-- Q15. 메시지 개별 삭제 기능 -->								
								</div>
							</section>

					</div>

				<!-- Contact -->
					<section id="contact">
						<div class="inner">
							<section>
							<!-- Q11. 메시지 보내기 기능(메시지는 계속 확인하기 위해서 DB에 저장!) -->
							<!-- 다른 사람의 DB에 메시지 저장해보기! -->
								<form action="MessageCon.do" method="post">
								<div class="field half first">
										<label for="name">Name</label>
										<input type="text" name="sender" id="name" placeholder="보내는 사람 이름" />
									</div>
									<div class="field half">
										<label for="email">Email</label>
										<input type="text" name="recipient" id="email" placeholder="받는 사람 이메일"/>
									</div>

									<div class="field">
										<label for="message">Message</label>
										<textarea name="message" id="message" rows="6"></textarea>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send Message" class="special" /></li>
										<li><input type="reset" value="Clear" /></li>
									</ul>
								</form>
							</section>
							
							<section class="split">
								<section>
									<div class="contact-method">
										<span class="icon alt fa-envelope"></span>
										<h3>Email</h3>
										<!-- Q5. 로그인 한 사용자의 이메일을 출력 -->
										<%if(info !=null){ %>
											<a href="#"> <%= info.getEmail() %> </a> 
										<%}else{ %>
											<a href="#">로그인 한 사람의 이메일을 출력</a>
										<%} %>
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-phone"></span>
										<h3>Phone</h3>
										<!-- Q5. 로그인 한 사용자의 전화번호를 출력 -->
										<%if(info !=null){ %>
											<span><%= info.getTel() %></span>
										<%}else{ %>
											<span>로그인 한 사람의 전화번호를 출력</span>
										<%} %>
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-home"></span>
										<h3>Address</h3>
										<!-- Q5. 로그인 한 사용자의 집주소를 출력 -->
											<%if(info !=null){ %>
											<span><%= info.getAddress() %></span>
										<%}else{ %>
											<span>로그인 한 사람의 집주소를 출력</span>
										<%} %>
									</div>
								</section>
							</section>					
						</div>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<ul class="icons">
								<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
							</ul>
							<ul class="copyright">
								<li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
			
			<!-- 아이디 중복체크 ajax -->
			<script type="text/javascript">
			// 아이디 중복체크 버튼을 눌렀을 때!
			$('#btn').on('click', function(){
				// 사용자가 입력한 email 가져오기
				// input태그인데 name=email인 요소의 값을 가져올 것.
				// 2개(로그인, 회원가입)이기 때문에 인덱스 번호 사용해서 회원가입에 있는 요소의 값을 가져올 것.
				var email = $('input[name=email]').eq('1').val();
				console.log(email);
				
				// ajax사용해서 비동기통신으로 아이디가 있는지 없는지 체크 후 결과값 받아오기
				$.ajax({
					/* url : 어디와 통신을 할 것인지? action에 작성하는 값과 비슷 */
					url : "IdCheckCon.do",
					/* data : url작성한 곳에 데이터를 보낼 때 */
					data :{
						"email" : email
					},
					/* dataType : 결과값을 어떤 타입으로 받아올 것인지(json, text..) */
					dataType : "text",
					/* success : 통신 성공시 */
					success : function(result){
						if(result == 'true'){
							$('#idCheck').html("아이디가 중복됩니다.");
						}else{
							$('#idCheck').html("중복되는 아이디가 없습니다.")
						}
					},
					/* error : 통신 실패 시 */
					error : function(e){
						alert("실패");
						console.log(e)
					}
					
				})
				
				
			});
			</script>
		
	</body>
</html>

