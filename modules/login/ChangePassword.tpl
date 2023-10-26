<?php /* $Id: ChangePassword.tpl 1927 2007-02-22 06:03:24Z will $ */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title>UL ATS - Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=<?php echo(HTML_ENCODING); ?>">
        <style type="text/css" media="all">@import "modules/login/login.css";</style>
        <script type="text/javascript" src="js/lib.js"></script>
        <script type="text/javascript" src="modules/login/validator.js"></script>
    </head>

    <body>


    <div id="contents">
    <div class="login">
    </div>
            <div id="formBlockcp">
                <img src="images/applicationLogo.jpg" alt="Login" />
         <form name="changePasswordForm" class="pcForm"  id="forgotForm" action="<?php echo(CATSUtility::getIndexName()); ?>?m=login&amp;a=changePassword" method="post" autocomplete="off" onsubmit="return  validateForm(); checkChangePasswordForm(document.changePasswordForm);">
                <?php if(!empty($this->error)){
                    echo $this->error;
                }else{
    
                 ?>
    
                <input type="hidden" name="postback" id="postback" value="postback" />
                <input type="hidden" name="email" value="<?php  $this->_($this->email); ?>" />
                <div id="emailError" class="error-message"></div>
                <input type="hidden" name="token" value="<?php  $this->_($this->token); ?>" />
                <div id="tokenError" class="error-message"></div>
    
    
                    <div id="subFormBlock">
                        <label class="cpLabel" id="newPasswordLabel" for="newPassword">New Password:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="password" class="login-input-box inputbox" id="newPassword" name="newPassword" placeholder="Enter New Password"/>&nbsp;* </br></br>

                        <label class="cpLabel" id="retypeNewPasswordLabel" for="retypeNewPassword">Confirm
                        Password:</label>&nbsp;
                        <input type="password" class="login-input-box" id="retypeNewPassword" name="retypeNewPassword" placeholder="Confirm new password"/>&nbsp;*</br></br>

                        <input type="submit" class="button" id="changePassword" name="changePassword"
                        value="Change Password" />
                    <input type="reset" class="button" id="reset" name="reset" value="Reset" />
                    </div>
                </form>
                <?php }?>
            
            <span style="line-height: 30px;font-size: 10px;padding-LEFT: 10px;">Version <?php echo(CATSUtility::getVersion()); ?></span>
        </div>

    <div id="footerBlock">
        <span class="footerCopyright">
            <?php echo(COPYRIGHT_HTML); ?>
            Based upon original work and Powered by <a href="http://www.utkallabs.com" target="_blank">Utkallabs</a>
        </span>
    </div>


        <script type="text/javascript" src="js/lib.js"></script>
        <script type="text/javascript" src="modules/login/validator.js"></script>
        <script type="text/javascript" src="modules/login/sorttable.js"></script>

            <script>
            function validateForm() {
            var newPassword = document.getElementById('newPassword').value;
            var retypeNewPassword = document.getElementById('retypeNewPassword').value;
            if (newPassword === '' || retypeNewPassword === '') {
                alert('Please fill in both password fields.');
                return false;
            }

            if (newPassword != retypeNewPassword) {
                alert('Passwords do not match.');
                return false; 
            }

            return true;
        } 
            </script>


    </body>
</html>
