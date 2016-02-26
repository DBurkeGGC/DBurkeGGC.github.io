echo "What should this file's name be? (do not include .html)"
read blogFile
echo "What will the title of the blog be?"
read blogTitle
echo "<!doctype html>
<html lang='en'>

<head>
  <link rel=\"stylesheet\" href=\"./style/css/style.css\">
  <script src=\"http://code.jquery.com/jquery-latest.min.js\" type=\"text/javascript\"></script>
  <script src=\"script.js\"></script>
  <title>DBURKE - BLOG</title>
</head>

<body>

<div class=\"left\">
  <br>
  <center><a href='https://github.com/DBurkeGGC'><img src='./pictures/icon_grey.png'></img></a></center>
  <br>
  <br>
  <div id=\"cssmenu\">
    <ul>
      <li><a href='index.html'><span>HOME</span></a></li>
      <li><a href='resume.html'><span>RESUME</span></a></li>
      <li class='has-sub'><a href='projects.html'><span>PROJECTS&nbsp&nbsp&nbsp></span></a>
        <ul>
          <li class='has-sub'><a href='projects.html'><span>MINI-PROJECTS&nbsp&nbsp&nbsp></span></a>
            <ul>
              <li><a href='http://mini-04.herokuapp.com/'>NUMBER TO EXCEL</a></li>
              <li><a href='http://leapyear.herokuapp.com/'>LEAP YEAR EVAL</a></li>
              <li><a href='http://mini-03.herokuapp.com/'>SEMESTER LIST</a></li>
              <li><a href='http://mini05.herokuapp.com/'>QUIZ EXAMPLE</a></li>
            </ul>
          </li>
          <li><a href='https://github.com/DBurkeGGC'>GITHUB</a></li>
        </ul>
      </li>
      <li class='has-sub'><a href='misc.html'><span>OTHER&nbsp&nbsp&nbsp></span></a>
      <ul>
          <li><a href='misc.html'>MISCELLANEOUS</a></li>
          <li><a href='blog.html'>BLOG POST</a></li>
      </ul>
      </li>
      <li><a href='contact.html'><span>CONTACT</span></a></li>
    </ul>
  </div>
</div>
<div class="main">
<h1>ITEC 3870 WEBPAGE PROJECT - BLOG</h1><br>
<hr><br>
<h2>$blogTitle</h2><br>" >> $blogFile.html


while true
do
  echo "Please enter the address of your image:"
  read imageAddress
  echo "Please enter the title of your image:"
  read imageTitle
  echo "Please supply a caption for your image:"
  read imageCaption
  echo "<p><u><i>$imageTitle</i></u></p>
  <h3><img border=1 src='$imageAddress' width=460></img></h3>
  <p>$imageCaption</p><br><br>" >> $blogFile.html
  echo "Would you like to add another image? (Y/N)"
  read response
  if [ "$response" != 'Y' -a "$response" != 'y' ]
  then
    break
  fi
done

echo "</div>
</body>
</html>" >> $blogFile.html