<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>자료 등록</title>
<%@ include file="../include/hd.jsp" %>
<link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="${path}/resources/css/normalize.css">
</head>
<body>
<div class="container">
<article id="con" class="content">
<figure class="sub_visual">
	<img src="${path }/data/bg_sub_top1.jpg" alt="게시판 비주얼">
</figure>
	<h2 class="page_tit">자료 등록</h2>
	<form action="${path }/databank/insert.do" method="post" name="databankUpload">
	<div class="table_form_wrap">
		<table class="table_form">
			<tbody>
				<tr>
					<th><label for="title">제목</label></th>
					<td><input type="text" name="dtitle" id="dtitle" size="100" class="single100" placeholder="글제목 입력" required></td>
				</tr>
				<tr>
					<th><label for="content">내용</label></th>
					<td><textarea name="dcontent" id="dcontent" cols="100" rows="8" class="multi100" placeholder="글 내용 입력" required></textarea></td>
				</tr>
				<tr>
					<th><label for="dposter">파일 형식</label></th>
					<td><input type="text" name="dposter" id="dposter" size="40" class="single100" value="" readonly>
							<input type="image" name="dposter2" id="proData2" />
					</td>
				</tr>
				<tr>
					<th><label for="dfilename">업로드 파일</label></th>
					<td><input type="text" name="dfilename" id="dfilename" size="40" class="single100" value="" readonly>
							<button type="button" class="btn btn-primary" onclick="uploadFile()">자료 업로드 하기</button>
							<button type="button" class="btn btn-primary" onclick="uploadFile2()">자료 업로드 하기2</button>
							<img src="" id="proData" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" class="btn btn-writer" value="자료 등록">
						<input type="reset" class="btn btn-primary" value="취소">
					</td>
				</tr>	
			</tbody>
		</table>
	</div>
	</form>
	<script>
	function uploadFile() {
		window.open("${path }/databank/uploadForm.do", "dataupload", "width=400, height=300");
	}
	
	function uploadFile2() {
		window.open("${path }/databank/uploadAjax.do", "dataupload", "width=400, height=300");
	}
	</script>
</article>
<%@ include file="../include/ft.jsp" %>
</div>
</body>
</html>