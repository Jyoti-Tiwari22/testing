<?php

// if you want to change style and html and test job pages locally without
// installing the whole thing - uncomment css and js file import in the
// header.html and footer.html

$header = file_get_contents("./header.html");
$header = str_replace("[#primary_color_0]", "#5BDCA5", $header);
$header = str_replace("[#primary_color_1]", "#32D38E", $header);
$header = str_replace("[#primary_color_2]", "#0BCD7A", $header);
$header = str_replace("[#primary_color_3]", "#00AF64", $header);
$header = str_replace("[#primary_color_4]", "#00864D", $header);
$header = str_replace("[#navbar_text_color]", "#FFF", $header);
$header = str_replace("[#footer_color]", "#073C67", $header);
$header = str_replace("[#rgba_button_shadow]", "rgba(11, 205, 122, 0.75);", $header);
echo($header);
// $tmpl = file_get_contents("./descriptions/301--uber-driver.html");
$tmpl = file_get_contents("./Home.html");
echo($tmpl);


include("./footer.html");