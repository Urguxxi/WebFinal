<!-- 连接数据库 -->
<?php
include_once("connect.php");

$sql = "select * from quiz order by id asc";
$query = mysql_query($sql);
while($row=mysql_fetch_array($query)){
	$answers = explode('###',$row['answer']);
	$arr[] = array(
		'question' => $row['id'].'、'.$row['question'],
		'answers' => $answers
	);
}
$json = json_encode($arr);
?>


<!-- html部分 -->
<!DOCTYPE HTML>

<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>quiz</title>
		<meta name="keywords" content="jquery,php,mysql" />
		<meta name="description" content="this is a easy quiz about some idols." />
		<link rel="stylesheet" type="text/css" href="http://localhost/styles.css" />
		<!-- 这里用于添加其他css文件

		-->
		<style type="text/css">
		.demo{width:760px; margin:60px auto 10px auto}
		</style>
		<script type="text/javascript" src="jquery-3.4.1.min.js"></script> 
		<script src="quizs.js"></script>
		<!-- 这里用于添加别的js文件

		-->
		<script>
		$(function(){
			$('#quiz-container').jquizzy({
				questions: <?php echo $json;?>,
				sendResultsURL: 'data.php'
			});
		});
		</script>
	</head>

	<body>
<p>This is a challenge</p>
		<!-- 总容器 -->
		</div id="main">

			<!-- demo是答题框 可以将这个盒子添加到所需处-->
			<div class="demo">
				<div id='quiz-container'></div>
			</div>
			<a href="http://127.0.0.1:8080/Quiz.htm"><button>Back</button></a>
		
		</div>

	</body>

</html>
