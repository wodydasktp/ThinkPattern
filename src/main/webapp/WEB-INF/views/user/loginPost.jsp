
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<script>
var result= '${result}';
if(result == 'loginFail')
{
	alert("아이디가 다르거나 비밀번호를 잘못 입력하셨습니다 다시 시도하세요");	
	self.location="/user/join"
}

</script>

<script type="text/javascript">
		self.location="/"
</script>

