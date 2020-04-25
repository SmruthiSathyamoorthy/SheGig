<%-- 
    Document   : register.jsp
    Created on : 19 Apr, 2020, 8:32:29 PM
    Author     : Smruthi Sathyamoorty
--%>


<style>

*, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: 'Nunito', sans-serif;
  color: #384047;
   background-image: url('D:\register.png');
  background-repeat: no-repeat;
    background-attachment: fixed;
  background-size: 100% 100%;
  background-blend-mode: lighten;
}

form {
  max-width: 300px;
  margin: 10px auto;
  padding: 10px 20px;
  background: #f4f7f8;
  border-radius: 8px;
}

h1 {
  margin: 0 0 30px 0;
  text-align: center;
}

input[type="text"],
input[type="password"],
input[type="date"],
input[type="datetime"],
input[type="email"],
input[type="number"],
input[type="search"],
input[type="tel"],
input[type="time"],
input[type="url"],
textarea,
select {
  background: rgba(255,255,255,0.1);
  border: none;
  font-size: 16px;
  height: auto;
  margin: 0;
  outline: 0;
  padding: 15px;
  width: 100%;
  background-color: #e8eeef;
  color: #8a97a0;
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: 30px;
}

input[type="radio"],
input[type="checkbox"] {
  margin: 0 4px 8px 0;
}

select {
  padding: 6px;
  height: 32px;
  border-radius: 2px;
}

button {
  padding: 19px 39px 18px 39px;
  color: #FFF;
  background-color: #4bc970;
  font-size: 18px;
  text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 100%;
  border: 1px solid #3ac162;
  border-width: 1px 1px 3px;
  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}

fieldset {
  margin-bottom: 30px;
  border: none;
}

legend {
  font-size: 1.4em;
  margin-bottom: 10px;
}

label {
  display: block;
  margin-bottom: 8px;
}

label.light {
  font-weight: 300;
  display: inline;
}

.number {
  background-color: #5fcf80;
  color: #fff;
  height: 30px;
  width: 30px;
  display: inline-block;
  font-size: 0.8em;
  margin-right: 4px;
  line-height: 30px;
  text-align: center;
  text-shadow: 0 1px 0 rgba(255,255,255,0.2);
  border-radius: 100%;
}

@media screen and (min-width: 480px) {

  form {
    max-width: 480px;
  }

}
</style>
<script> 
function val()                                    
{ 
    var name = document.forms["RegForm"]["name"];               
    var email = document.forms["RegForm"]["mail"];     
    var password = document.forms["RegForm"]["password"];  
    var password2 = document.forms["RegForm"]["password2"];  
    
    if (name.value == "")                                  
    { 
        window.alert("Please enter your name."); 
        name.focus(); 
        return false; 
    } 
   
       
    if (email.value == "")                                   
    { 
        window.alert("Please enter a valid e-mail address."); 
        email.focus(); 
        return false; 
    } 
   
    if (email.value.indexOf("@", 0) < 0)                 
    { 
        window.alert("Please enter a valid e-mail address."); 
        email.focus(); 
        return false; 
    } 
   
    if (email.value.indexOf(".", 0) < 0)                 
    { 
        window.alert("Please enter a valid e-mail address."); 
        email.focus(); 
        return false; 
    } 
   
    if (password.value == "")                        
    { 
        window.alert("Please enter your password"); 
        password.focus(); 
        return false; 
    } 
    if (password.value != password2.value)                        
    { 
        window.alert("Passwords dont match!"); 
        password.focus(); 
        return false; 
    } 
   
  
   
    return true; 
}</script> 

  <head>
        <meta charset="utf-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up Form</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">
  <center> <p style="color:hotpink;font-size:50px;"><b>SheGig </b></p><h1>Join now! and connect over a million aspiring women accross the globe</h1>
    </head>
    <body>

      <form action="registerdb.jsp" method="post"  onsubmit="return val()" name="RegForm">
      
        <h1>Sign Up</h1>
        
        <fieldset>
          <legend><span class="number">1</span>Your basic info</legend>
          <label for="name">Name:</label>
          <input type="text" id="name" name="user_name">
          
          <label for="mail">Email:</label>
          <input type="email" id="mail" name="user_email">
          
          <label for="password">Password:</label>
          <input type="password" id="password" name="user_password">
          
          <label for="password2">Re-enter password:</label>
          <input type="password" id="password2" name="user_password2">
          
          <label for="age">Age: </label>
          <input type="text" id="age" name="user_age">
          
          <label for="age">Mobile No: </label>
          <input type="text" id="number" name="user_number">
          
          <label for="age">Degree: </label>
          <input type="text" id="degree" name="user_degree">
         
          <label for="age">Experience: </label>
          <input type="text" id="experience" name="user_experience">
          
          <label>Work type</label>
          <input type="radio" id="part_time" value="part_time" name="user_worktype"><label for="part_time" class="light">Part Time</label><br>
          <input type="radio" id="full_time" value="full_time" name="user_worktype"><label for="full_time" class="light">Full Time</label>
        </fieldset>
        
        <fieldset>
          <legend><span class="number">2</span>Your profile</legend>
          <label for="bio">Biography:</label>
          <textarea id="bio" name="user_bio"></textarea>
        </fieldset>
        <fieldset>
        <label for="job">Job Role:</label>
        <select id="job" name="user_job">
          <optgroup label="Web">
            <option value="frontend_developer">Front-End Developer</option>
            <option value="php_developor">PHP Developer</option>
            <option value="python_developer">Python Developer</option>
            <option value="rails_developer"> Rails Developer</option>
            <option value="web_designer">Web Designer</option>
            <option value="WordPress_developer">WordPress Developer</option>
          </optgroup>
          <optgroup label="Mobile">
            <option value="Android_developer">Androild Developer</option>
            <option value="iOS_developer">iOS Developer</option>
            <option value="mobile_designer">Mobile Designer</option>
          </optgroup>
          <optgroup label="Business">
            <option value="business_owner">Business Owner</option>
            <option value="freelancer">Freelancer</option>
          </optgroup>
          <optgroup label="Other">
            <option value="secretary">Secretary</option>
            <option value="maintenance">Maintenance</option>
          </optgroup>
        </select>
          
        <label>On a scale of 1 to 100 rate:</label>
         <div>
           <label for="positivity">Poitive Behavior</label>
         <input type="range" id="positive" name="positivity"
         min="0" max="100">
          </div>
           <label for="teamwork">Teamworking Abilities</label>       
          <input type="range" id="teamwork" name="teamwork"
         min="0" max="100">

          </div>
          <label for="time">Time Management</label>        
         <input type="range" id="time" name="time"
         min="0" max="100">

          </div>
           <label for="comm">Communication Skills</label>       
           <input type="range" id="comm" name="comm"
         min="0" max="100">

          </div>
        
        
        
          </br>
          <label>Interests:</label>
          <input type="checkbox" id="development" value="development" name="user_interest"><label class="light" for="development">Development</label><br>
            <input type="checkbox" id="design" value="design" name="user_interest"><label class="light" for="design">Design</label><br>
          <input type="checkbox" id="business" value="business" name="user_interest"><label class="light" for="business">Business</label>
        
        </fieldset>
        <button type="submit">Sign Up</button>
      </form>
      
    </body>
</html>