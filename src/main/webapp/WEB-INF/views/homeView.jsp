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
	<jsp:include page="includes/_header.jsp"></jsp:include>
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
					<a href="ch04ex1">
						<div class="card ability-card">
							<div class="card-exercise">
								<strong>Exercise 4.1</strong>
							</div>
							<div class="card-desc">
								<span>Survey</span>
							</div>
						</div>
					</a>
					<a href="ch05ex1">
						<div class="card ability-card">
							<div class="card-exercise">
								<strong>Exercise 5.1</strong>
							</div>
							<div class="card-desc">
								<span>Email List</span>
							</div>
						</div>
					</a>
					<a href="ch05ex2">
						<div class="card ability-card">
							<div class="card-exercise">
								<strong>Exercise 5.2</strong>
							</div>
							<div class="card-desc">
								<span>Email List</span>
							</div>
						</div>
					</a>
					<a href="ch06ex1">
						<div class="card ability-card">
							<div class="card-exercise">
								<strong>Exercise 6.1</strong>
							</div>
							<div class="card-desc">
								<span>Email List</span>
							</div>
						</div>
					</a>
					<a href="ch06ex2">
						<div class="card ability-card">
							<div class="card-exercise">
								<strong>Exercise 6.2</strong>
							</div>
							<div class="card-desc">
								<span>Survey</span>
							</div>
						</div>
					</a>
					<a href="">
						<div class="card empty-card">
							<div class="card-exercise">
								<strong>Exercise 8.1</strong>
							</div>
							<div class="card-desc">
								<span>...</span>
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
	<jsp:include page="includes/_footer.jsp"></jsp:include>
</body>
</html>