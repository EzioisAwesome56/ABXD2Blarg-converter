<!doctype html>
<html>
<head>
<title>ABXD2Blarg Converter</title>
<style type="text/css">
a:link { color: #0e5; }
a:visited { color: #0e5; }
a:hover, a:active { color: #bfb; }

html, body { width: 100%; height: 100%; }

body
{
	font: 12pt 'Arial', 'Helvetica', sans-serif;
	background: #222;
	margin: 0;
	padding: 0;
	text-align: center;
	color: #fff;
}

#container
{
	background: #032;
	min-height: 100%;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	max-width: 1000px;
	margin: 0 auto;
	padding-top: 20px;
	padding-bottom: 0;
}

h1, h3
{
	border-bottom: 2px solid #0d5;
	padding-bottom: 1em;
}

input, select
{
	background: black;
	color: white;
	border: 1px solid #054;
}

input[type='submit'], input[type='button']
{
	border: 2px ridge #0d5;
}

.blarg
{
	margin: 1em;
}

table
{
	width: 100%;
	border-collapse: collapse;
}

td:not([colspan='2'])
{
	border-bottom: 1px solid #043;
}
</style>
</head>
<body>
<div id="container">
<h1>AcmlmboardXD 2 Blargboard Converter</h1>
<br>
<?php
include("config/database.php");
//so ABXD's salt file has it as a var, so include it and use it lol
include("config/salt.php");


function phpescape($var)
{
	$var = addslashes($var);
	$var = str_replace('\\\'', '\'', $var);
	return '"'.$var.'"';
}

function Shake($len=16)
{
	$cset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPRQSTUVWXYZ0123456789";
	$salt = "";
	$chct = strlen($cset) - 1;
	while (strlen($salt) < $len)
		$salt .= $cset[mt_rand(0, $chct)];
	return $salt;
}

// Acmlmboard 1.x style
$footer = '</div></body></html>';

// pre-convert checks
	
$footer = '<br><br><a href="javascript:window.history.back();">Go back and try again</a></div></body></html>';

if (version_compare(PHP_VERSION, '5.3.0') < 0)
	die('Error: Blargboard requires PHP 5.3 or above.'.$footer);
	
@mkdir('templates_c');

if ($_POST['submit'])
{
	$test = new mysqli($dbserv, $dbuser, $dbpass, $dbname);
	if ($test->connect_error)
		die('Error: failed to connect to the MySQL server: '.$test->connect_error.'<br><br>Check your parameters.'.$footer);
	
	$test->close();
	
	define('SALT', $salt);
	$saltfile = '<?php define(\'SALT\', '.$salt.'); ?>';
	file_put_contents('config/salt.php', $saltfile);
	
	$kurifile = '<?php define(\'KURIKEY\', '.phpescape(Shake(32)).'); ?>';
	file_put_contents('config/kurikey.php', $kurifile);
	
	require('lib/mysqlfunctions.php');
	require('lib/mysql.php');
	$debugMode = 1;
	
	Upgrade();
	Import('database.sql');
	
	//here, instead of trying to detect a user's rank, just change the coloum name. way easier
	Query("ALTER TABLE \"users\" CHANGE \"powerlevel\" \"primarygroup\" [\"int(11)\"]")
		
?>
	<h3>This install of ABXD has been converted to BlargBoard</h3>
	<br>
	You should now:
	<ul>
		<li>delete convert.php, convertdb.sql, and the install files (install.php and database.sql)
		<li><a href="./?page=login">log in to your board</a> and make sure everyhing works
		<li>Review the board settings and update them if needed
	</ul>
	<br>
	Thank you for choosing Blargboard!<br>
	<br>
<?php
}
else
{
?>
	<form action="" method="POST">
	<div class="blarg">
	<table>
	
	<!--<tr><td>Password Salt</td><td><input type="text" name="passsalt" value=""></td></tr>-->
	<tr><td colspan=2>test text, wheeee</td></tr>
	<!--<tr><td>MySQL username:</td><td><input type="text" name="dbusername" size=64 value=""></td></tr>
	<tr><td>MySQL password:</td><td><input type="password" name="dbpassword" size=64 value=""></td></tr>
	<tr><td>MySQL database:</td><td><input type="text" name="dbname" size=64 value=""></td></tr>
	<tr><td colspan=2>&nbsp;</td></tr>
	
	<tr><td>Database table name prefix:</td><td><input type="text" name="dbprefix" size=64 value=""></td></tr>
	<tr><td colspan=2>This setting can be useful when the board's database is shared with other applications. If you're not sure what to put in there, leave it blank.</td></tr>
	<tr><td colspan=2>&nbsp;</td></tr>
	
	<tr><td>Board username:</td><td><input type="text" name="boardusername" size=64 maxlength=20 value=""></td></tr>
	<tr><td>Board password:</td><td><input type="password" name="boardpassword" size=64 value=""></td></tr>
	<tr><td>Confirm board password:</td><td><input type="password" name="bpconfirm" size=64 value=""></td></tr>
	<tr><td colspan=2>An owner account with these credentials will be created on your board after the install process has completed.</td></tr>
	<tr><td colspan=2>&nbsp;</td></tr> -->
	
	<tr><td colspan=2><input type="submit" name="submit" value="Install"></td></tr>
	
	</table>
	</div>
	</form>
<?php
}
?>
</div>
</body>
</html>