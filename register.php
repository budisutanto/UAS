<?php
// php script
include("functions/controller_register.php");

// html
include("views/header.php");
?>
    <div class="row">
        <div data-alert class="alert-box" style="display:none;">
        Ini standard error
        <a href="#" class="close">&times;</a>
        </div>
    </div>
    <br>
    <br>
    <h4 class="text-center">Register</h4>
                <form style="width: 300px; margin-left:600px; " action="register.php" method="POST"> 
                        
                        <label>Username
                        <input type="text" name="username" placeholder="Username">
                        </label>
                        <label>Password
                        <input type="password" name="password" placeholder="Password">
                        </label>
                        <input id="show-password" type="checkbox"><label for="show-password">Show password</label>
                        <p><input type="submit" name="submit" class="button expanded" value="DAFTAR"/></p>  
                </form>

<?php
include("views/footer.php");
?>