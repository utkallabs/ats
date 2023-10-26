<?php /* $Id: ForgotPassword.tpl 1947 2007-02-23 09:45:29Z will $ */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title>UL ATS - Forgot Password</title>
        <meta http-equiv="Content-Type" content="text/html; charset=<?php echo(HTML_ENCODING); ?>">
        <style type="text/css" media="all">@import "modules/login/login.css";</style>
        <script type="text/javascript" src="js/lib.js"></script>
        <script type="text/javascript" src="modules/login/validator.js"></script>
    </head>

    <body>

    <div id="contents">
        <div id="login">
            <?php if (!empty($this->message)): ?>
                <div>
                    <?php if ($this->messageSuccess): ?>
                        <p class="success"><?php $this->_($this->message); ?><br /></p>
                    <?php else: ?>
                        <p class="failure"><?php $this->_($this->message); ?><br /></p>
                    <?php endif; ?>
                </div>
            <?php endif; ?>

            <div id="formBlock">
                <img src="images/applicationLogo.jpg" alt="Login" />
                
            <?php if (!$this->complete): ?>
                <form name="ForgotForm" class="pcForm"  id="forgotForm" action="<?php echo(CATSUtility::getIndexName()); ?>?m=login&amp;a=forgotPassword" method="post" autocomplete="off">
                    <input type="hidden" name="postback" value="true" />
                    <div id="subFormBlock">
                        <label id="usernameLabel" for="username">Username</label><br />
                        <input type="email" name="username" id="username" class="login-input-box" placeholder="Enter your mail" />
                        <br /></br>

                        <input type="submit" id="submit" name="sendResetLink" class="login-input-box btn btn-primary login-submit-button" value="Send Reset Link" />
                    </div>
                </form>
            <?php else: ?>
                <p>
                    An email has been sent to <?php $this->_($this->username); ?> containing your password.<br /><br />
                    <a href="<?php echo(CATSUtility::getIndexName()); ?>?m=login">Return to login page</a>
                </p>
            <?php endif; ?>
            <span style="line-height: 30px;font-size: 10px;padding-LEFT: 10px;">Version <?php echo(CATSUtility::getVersion()); ?></span>
        </div>

            <div style="clear: both;"></div>
        </div>

        <script type="text/javascript">
            document.loginForm.username.focus();
        </script>

        <br />
        <div id="footerBlock">
            <span class="footerCopyright"><?php echo(COPYRIGHT_HTML); ?></span>
        </div>
    </div>
    </body>
</html>
