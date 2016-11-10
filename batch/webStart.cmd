@echo off
set /p name= "Insert Website Name: "

cd C:\Users\rsoucy\batch\webPages
md %name%
cd %name%


(
echo ^<!doctype html^>
echo ^<html lang="en"^>
echo ^<head^>
echo ^<link rel="stylesheet" type="text/css" href="C:/Users/rsoucy/batch/webPages/%name%/%name%.css"^>^</link^>
echo ^<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"   integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="   crossorigin="anonymous"^>^</script^>
echo ^<script src="C:/Users/rsoucy/batch/webpages/%name%/%name%.js" type="text/javascript"^>^</script^>
echo ^<meta charset="utf-8"^>
echo ^<http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"^>
echo ^<title^> %name%^</title^>
echo ^</head^>

echo ^<body^>
echo ^<h1^> Hello World! Welcome to %name%! ^</h1^>
echo ^</body^>

echo ^</html^>
) >%name%.html




(
echo h1{
echo  color:rgb(255,0,0^);
echo }
) >%name%.css



(
echo //Starter JS
echo $('document'^).ready(function(^){
echo alert("Hello World!"^);
echo }^);
) > %name%.js

cd C:\Users\rsoucy\batch\webPages
start %name%
cd..
cd..





