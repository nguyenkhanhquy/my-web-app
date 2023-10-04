<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Home Page</title>
	<link rel="icon" type="image/x-icon" href="resources/icon/home.svg">
	<link rel="stylesheet" href="resources/css/home.css" type="text/css">
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	<hr>
	<section>
		<h1 class="course-name">LẬP TRÌNH WEB</h1>
		<div class="section-main">
			<div class="student">
				<img class="img-avatar" src="resources/img/avatar.jpg" alt="Nguyễn Khánh Quy">
				<p><strong>Sinh viên: Nguyễn Khánh Quy</strong></p>
				<p><strong>MSSV: 21110282</strong></p>
			</div>
			<div class="section-exercise">
				<div class="section-exercise-btn">
					<a href="week4">
						<div class="card ability-card week4-card">
							<div class="card-week">
								<strong>Tuần 4</strong>
							</div>
							<div class="card-desc">
								<span>HTML5 and CSS3</span>
							</div>
						</div>
					</a>
					<a href="week6">
						<div class="card ability-card week6-card">
							<div class="card-week">
								<strong>Tuần 6</strong>
							</div>
							<div class="card-desc">
								<span>JSP</span>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="teacher">
				<p><strong>GVHD: TS. Mai Anh Thơ</strong></p>
				<p>Mã LHP: WEPR330479_05CLC</p>
				<p>Tên HP: Lập trình web</p>
				<p>Tiết: 7-10 chiều thứ 5</p>
			</div>
		</div>
	</section>
	<hr>
	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>