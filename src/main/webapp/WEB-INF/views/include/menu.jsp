
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script>
	$(document).ready(function() {
		$('#login').on('shown.bs.modal', function() {
			$('#myInput').focus();
			$('input[name=invite]').val(inviteurl);
		});

		$('#login').on('hidden.bs.modal', function() {
			inviteurl = "";
			$('input[name=invite]').val("");
		});
	});
</script>
<header>

<div class="modal fade" id="login" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h3 class="modal-title" id="myModalLabel">


					<i class="fa fa-spinner" aria-hidden="true"></i>THINKPATTERN &nbsp;
					로그인

				</h3>
			</div>

			<form action="/user/loginPost" method="post" name="loginForm">
				<div class="modal-body">
					<input type="hidden" name="invite" value="" /> <label>ID</label> <input
						id="myInput" class="form-control" type="text" name="uid"
						placeholder="아이디 입력해주세요" autocomplete="off" required /> <br /> <label>Password</label>
					<input class="form-control" type="password" name="upw"
						placeholder="비밀번호 입력해주세요" required /> <br />
					<!--       <div class="checkbox">
                  <label> <input type="checkbox"> Remember me
                  </label>
               </div> -->
				</div>
				<div class="modal-footer">
					<button type="submit" class="button special fit small">Login</button>
					<div>
						<button id="login_lost_btn" type="button" class="btn btn-link">Lost
							Password?</button>
						<button id="login_register_btn" type="button" class="btn btn-link">Register</button>
					</div>

				</div>
			</form>
		</div>
	</div>
</div>




<div class="w3-top1">
	<ul class="w3-navbar w3-theme-d2 w3-left-align w3-large">
		<li><a href="../" class="w3-teal  w3-middle-home"><img
				src="/resources/res/images/i.png" width="40" height="40"
				class="logo_think">THINKPATTERN</i></a></li>
		<li class="w3-hide-medium w3-hide-large w3-mright"><a
			class="w3-hover-white w3-large w3-theme-d2 w3-middle"
			href="javascript:void(0);" onclick="openNav()"><i
				class="fa fa-bars"></i></a></li>

		<div class="middle">
			<li class="w3-hide-small w3-middle"><a href="/user/manual">MANUAL</a></li>
			<li class="w3-hide-small w3-middle"><a href="/pattern/list">DESIGN
					PATTERN</a></li>
			<li class="w3-hide-small w3-middle"><a href="/notice/list">SERVICE
					CENTER</a></li>
		</div>

		<c:if test="${vo.getId() eq null }">
			<div class="log_in">

				<li class="w3-hide-small w3-right"><a
					class="button small loginGet" data-toggle="modal"
					data-target="#login"> <i class="fa fa-sign-in loginGet"
						aria-hidden="true"></i> sign in
				</a></li>
				<li class="w3-hide-small w3-right"><a href="/user/join"
					class="button small "><i class="fa fa-user" aria-hidden="true"></i>
						join</a></li>

			</div>

		</c:if>

		<c:if test="${vo.getId() ne null}">
			<div class="log_m">
				<span>${vo.getName() }님 환영합니다.</span>
				<li class="w3-hide-small w3-right"><span id="sessionid"></span><a
					href="/user/modifyConfirm" class="button small"><i
						class="fa fa-user" aria-hidden="true"></i> modify</a></li>
				<li class="w3-hide-small w3-right"><a href="/user/logout"
					class="button small"><i class="fa fa-sign-out"
						aria-hidden="true"></i> logout</a></li>
			</div>

		</c:if>
		</ul>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium w3-top"
	style="margin-top: 43px;">
	<ul class="w3-navbar w3-left-align w3-large w3-theme">
		<li class="w3-middle"><a href="../">MANUAL</a></li>
		<li class="w3-middle"><a href="http://localhost:8210/?id=aaa">DESIGN
				PATTERN</a></li>
		<li class="w3-middle"><a href="/notice/list">SERVICE CENTER</a></li>
		<c:if test="${vo.getId() eq null }">

			<li><a class="button small smenu" data-toggle="modal"
				data-target="#login"> <i class="fa fa-sign-in"
					aria-hidden="true"></i> sign in
			</a> <a href="/user/join" class="button small smenu"><i
					class="fa fa-user" aria-hidden="true"></i> join</a></li>
		</c:if>

		<c:if test="${vo.getId() ne null}">
			<div class="log_m">
				<span>${vo.getName() }님 환영합니다.</span>
				<li><a href="/user/modifyConfirm" class="button small smenu"><i
						class="fa fa-user" aria-hidden="true"></i> modify</a> <a
					href="/user/logout " class="button small smenu"><i
						class="fa fa-sign-out" aria-hidden="true"></i> logout</a></li>
			</div>
		</c:if>
	</ul>
</div>

</header>


