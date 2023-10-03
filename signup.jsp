<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Montserrat');
* {
  box-sizing: border-box;
  font-family: 'Montserrat', sans-serif;
}
html {
  height: 100%;
}
body {
  background-image: linear-gradient(60deg, #abecd6 0%, #fbed96 100%);
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  background-size: cover;
}
.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
  > h1 {
    margin: 15px auto 30px;
    font-size: 1.5em;
    color: #fff;
    text-align: center;
  }
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: rgba(0, 0, 0, 0.2) 0px 2px 10px;
  letter-spacing: 1px;
}
.group {
  position: relative;
  margin-bottom: 35px;
  input {
    font-size: 1em;
    padding: 10px 10px 10px 5px;
    display: block;
    width: 100%;
    border: none;
    border-bottom: 1px solid #dedede;
    &:focus {
      outline: none;
    }
  }
  label {
    color: #ccc;
    font-size: 1em;
    font-weight: normal;
    position: absolute;
    pointer-events: none;
    left: 5px;
    top: 10px;
    transition: 0.2s ease all;
    -moz-transition: 0.2s ease all;
    -webkit-transition: 0.2s ease all;
  }
  input {
    &:focus ~ label, &:valid ~ label {
      top: -20px;
      font-size: 14px;
      color: rgb(0, 188, 212);
    }
  }
}
.bar {
  position: relative;
  display: block;
  width: 100%;
  &:before, &:after {
    content: '';
    height: 2px;
    width: 0;
    bottom: -1px;
    position: absolute;
    background: #FF9800;
    transition: 0.2s ease all;
    -moz-transition: 0.2s ease all;
    -webkit-transition: 0.2s ease all;
  }
  &:before {
    left: 50%;
  }
  &:after {
    right: 50%;
  }
}
.group input:focus ~ .bar {
  &:before, &:after {
    width: 50%;
  }
}
.remember {
  text-align: left;
  margin-bottom: 20px;
  label {
    > {
      input {
        display: none;
      }
      i {
        display: inline-block;
        width: 20px;
        height: 20px;
        border-radius: 10%;
        margin-right: 5px;
        vertical-align: middle;
        border: 2px solid #bbb;
        -webkit-box-shadow: inset 0 0 0 4px #fff;
        box-shadow: inset 0 0 0 4px #fff;
        -webkit-transition: .25s;
        transition: .25s;
      }
      span {
        display: inline-block;
        padding-bottom: 3px;
        border-bottom: 2px dotted #fff;
        /*text-transform: uppercase;*/
        font-size: .9em;
        color: #555;
      }
      input:checked + i {
        background: #FF9800;
        border: 2px solid #FF9800;
      }
    }
    &:hover {
      cursor: pointer;
    }
  }
}

.form {
  button {
    text-transform: uppercase;
    outline: 0;
    background: #FF9800;
    width: 100%;
    border: 0;
    padding: 15px;
    color: #FFFFFF;
    font-size: 14px;
    -webkit-transition: all 0.5 ease;
    transition: all 0.5 ease;
    cursor: pointer;
    box-shadow: rgba(0, 0, 0, 0.16) 0px 2px 5px, rgba(0, 0, 0, 0.12) 0px 2px 10px;
    &:hover, &:active, &:focus {
      background: #ff8900;
      box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 3px, rgba(0, 0, 0, 0.1) 0px 1px 5px;
    }
  }
  .message {
    margin: 30px 0 0;
    color: #555;
    font-size: .85em;
    a {
      color: rgb(0, 188, 212);
      text-decoration: none;
    }
  }
  .recover a {
    color: #FF9800;
    font-size: .85em;
    text-decoration: none;
  }
  .register-form, .reset-form {
    display: none;
  }
</style>


</head>
<body>

<div class="login-page">
  <h1>Register Yourself</h1>
  <div class="form">
    <form class="register-form" action="signup" method="post">
      <div class="group">
        <input type="text" name="username" required/>
        <span class="bar"></span>
        <label>UserName</label>
      </div>
      <div class="group">
        <input type="text" name="email" required/>
        <span class="bar"></span>
        <label>Email</label>
      </div>
      <div class="group">
        <input type="password" name="password" required/>
        <span class="bar"></span>
        <label>Password</label>
      </div>
      <button>create Account</button>
      <p class="message">Already registered? <a class="signIn" href="loginpage">Sign In</a></p>
    </form>
    </div>
 </div>

<script type="text/javascript">
$(".message a.signIn,.message a.createAccount").on("click", function() {
	  $(".register-form,.login-form").animate(
	    {
	      height: "toggle",
	      opacity: "toggle"
	    },
	    "slow"
	  );
	});
	$(".reoverPassword,.backToLogin").on("click", function() {
	  $(".reset-form,.login-form").animate(
	    {
	      height: "toggle",
	      opacity: "toggle"
	    },
	    "slow"
	  );
	});

</script>
</body>
</html>