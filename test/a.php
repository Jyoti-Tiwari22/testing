<?php

// if you want to change style and html and test job pages locally without
// installing the whole thing - uncomment css and js file import in the
// header.html and footer.html

$header = file_get_contents("./header.html");
$header = str_replace("[#primary_color_0]", "rgb(197,87,87)", $header);
$header = str_replace("[#primary_color_1]", "rgb(136,46,46)", $header);
$header = str_replace("[#primary_color_2]", "rgb(197,87,87)", $header);
$header = str_replace("[#primary_color_3]", "rgb(210,125,125)", $header);
$header = str_replace("[#primary_color_4]", "rgb(136,46,46)", $header);
$header = str_replace("[#navbar_text_color]", "#FFF", $header);
$header = str_replace("[#footer_color]", "rgb(253,168,46)", $header);
$header = str_replace("[#rgba_button_shadow]", "rgba(197,87,87,0.75)", $header);
echo($header);
// code
// $tmpl = file_get_contents("./descriptions/301--uber-driver.html");
$dheader = file_get_contents("./dheader.html");
echo($dheader);
$tmpl = file_get_contents("../descriptions/1--instacart.html");
echo($tmpl);
$dfooter= file_get_contents("./dfooter.html");
echo($dfooter);
include("./footer.html");
