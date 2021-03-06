<html>

<head>
    <title>TaskList</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link type="text/css" rel="stylesheet" href="../../../res/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="../../../res/css/bootstrap-responsive.min.css" />
    <link type="text/css" rel="stylesheet" href="../../../res/css/matrix-login.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

</head>
<body>


<p>${errorMsg}</p>
<div id="loginbox">
    <form id="loginform" class="form-vertical" method="POST" action="/login">
        <div class="control-group normal_text"> <h3><img id="loginLogo" src="../../../res/img/logo.png" alt="Logo" /></h3></div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_lg"><i class="icon-user"> </i></span><input type="text" name="username" placeholder="Username" />
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" name="password" placeholder="Password" />
                </div>
            </div>
        </div>
        <div class="form-actions">

            <span class="pull-right"><input class="btn btn-success"  type="submit" value="Login"></span>
        </div>
    </form>
    <form id="recoverform" action="#" class="form-vertical">
        <p class="normal_text">Enter your e-mail address below and we will send you instructions how to recover a password.</p>

        <div class="controls">
            <div class="main_input_box">
                <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
            </div>
        </div>

        <div class="form-actions">
            <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Back to login</a></span>
            <span class="pull-right"><a class="btn btn-info">Reecover</a></span>
        </div>
    </form>


    <form id="registered" action="#" class="form-vertical" style="display: none">
        <p class="normal_text">Enter your e-mail address below and we will send you instructions how to recover a password.</p>

        <div class="controls">
            <div class="main_input_box">
                <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="username" />
                <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="password" placeholder="password" />
                <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="email" placeholder="E-mail address" />
            </div>
        </div>

        <div class="form-actions">
            <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="back-login">&laquo; Back to login</a></span>
            <span class="pull-right"><a class="btn btn-info">Reecover</a></span>
        </div>
    </form>
</div>

<script src="../../../res/js/jquery.min.js"></script>
<script src="../../../res/js/matrix.login.js"></script>
</body>

</html>
