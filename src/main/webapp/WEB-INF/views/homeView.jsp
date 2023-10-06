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
					<a href="ch05ex2">
						<div class="card ability-card">
							<div class="card-exercise">
								<strong>Exercise 5.2</strong>
							</div>
							<div class="card-desc">
								<span>Chương 5</span>
							</div>
						</div>
					</a>
					<a href="ch06ex2">
						<div class="card ability-card">
							<div class="card-exercise">
								<strong style="margin-bottom: 8px;">Exercise</strong>
								<strong>4.1 + 6.2</strong>
							</div>
							<div class="card-desc">
								<span>Chương 4 + 6</span>
							</div>
						</div>
					</a>
					<a href="ch08ex1">
						<div class="card ability-card">
							<div class="card-exercise">
								<strong style="margin-bottom: 8px;">Exercise</strong>
								<strong>5.1 + 6.1 + 8.1</strong>
							</div>
							<div class="card-desc">
								<span>Chương 5 + 6 + 8</span>
							</div>
						</div>
					</a>
					<a href="ch09ex1">
						<div class="card ability-card">
							<div class="card-exercise">
								<strong style="margin-bottom: 8px;">Exercise</strong>
								<strong>7.1 + 7.2 + 9.1</strong>
							</div>
							<div class="card-desc">
								<span>Chương 7 + 9</span>
							</div>
						</div>
					</a>
					<a href="loadProducts">
						<div class="card ability-card">
							<div class="card-exercise">
								<strong style="margin-bottom: 8px;">Exercise</strong>
								<strong>7.3 + 9.2</strong>
							</div>
							<div class="card-desc">
								<span>Chương 7 + 9</span>
							</div>
						</div>
					</a>
					<a>
						<div class="card empty-card">
							<div class="card-exercise">
								<strong>Exercise ...</strong>
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
