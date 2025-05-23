<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="../include/head.jsp"%>
    <title>Đăng nhập</title>
</head>

<body>

<main>
    <div class="container">

        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                        <div class="d-flex justify-content-center py-4">
                            <a href="<%=request.getContextPath()%>/" class="logo d-flex align-items-center w-auto">
                                <img src="<%=request.getContextPath()%>/assets/img/logo.png" alt="">
                                <span class="d-none d-lg-block"><%=Config.app_name%></span>
                            </a>
                        </div><!-- End Logo -->

                        <div class="card mb-3">

                            <div class="card-body">

                                <div class="pt-4 pb-2">
                                    <h5 class="card-title text-center pb-0 fs-4">Đăng kí</h5>
                                    <p class="text-center small">Điền thông tin cá nhân của bạn để tạo tải khoản.</p>
                                </div>

                                <form class="row g-3 needs-validation" action="<%=request.getContextPath()%>/register" method="post" novalidate>

                                    <div class="col-12">
                                        <label for="yourEmail" class="form-label">Email</label>
                                        <input type="email" name="email" class="form-control" id="yourEmail" required>
                                        <div class="invalid-feedback">Vui lòng nhập địa chỉ email hợp lệ!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="yourUsername" class="form-label">Username</label>
                                        <div class="input-group has-validation">
                                            <input type="text" name="username" class="form-control" id="yourUsername" required>
                                            <div class="invalid-feedback">Vui lòng chọn 1 username.</div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label for="yourPassword" class="form-label">Password</label>
                                        <input type="password" name="password" class="form-control" id="yourPassword" required>
                                        <div class="invalid-feedback">Vui lòng nhập mật khẩu!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="yourPhone" class="form-label">Số điện thoại</label>
                                        <div class="input-group has-validation">
                                            <input type="tel" name="phone" class="form-control" id="yourPhone" required>
                                            <div class="invalid-feedback">Vui lòng nhập số điện thoại.</div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <button class="btn btn-primary w-100" type="submit">Đăng kí</button>
                                    </div>
                                    <div class="col-12">
                                        <p class="small mb-0">Already have an account? <a href="<%=request.getContextPath()%>/login">Đăng nhập</a></p>
                                    </div>
                                </form>

                            </div>
                        </div>

                        <div class="credits">
                            <!-- All the links in the footer should remain intact. -->
                            <!-- You can delete the links only if you purchased the pro version. -->
                            <!-- Licensing information: https://bootstrapmade.com/license/ -->
                            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                        </div>

                    </div>
                </div>
            </div>

        </section>

    </div>
</main><!-- End #main -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<%@include file="../include/js.jsp"%>

</body>

</html>