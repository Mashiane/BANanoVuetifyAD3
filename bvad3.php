<?php header("Access-Control-Allow-Origin: *");$rest_json = file_get_contents("php://input");$_POST = json_decode($rest_json, true);$request='';if(isset($_POST['request'])){$request = $_POST['request'];$params = $_POST['params'];}if (!function_exists($request)) die("invalid request: '" . $request . "'"); 
function EmailSend($from, $to, $cc, $subject, $msg) { 
	$hdr  = 'MIME-Version: 1.0' . "\r\n"; 
	$hdr .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n"; 
	$hdr .= 'X-Mailer:PHP/' . phpversion() . "\r\n"; 
	$hdr .= "From:" . $from . "\r\n";  
	$extra = '-f '. $from;  
	$hdr .= "Cc: " . $cc . "\r\n";  
	$response = (mail($to, $subject, $msg, $hdr, $extra)) ? "success" : "failure";  
    $output = json_encode(Array("response" => $response));  
    header('content-type: application/json; charset=utf-8');  
    echo($output);  
} 
 
function preparesqlite($db, $sql, $types, $values) { 
		/* Bind parameters. Types: s = string, i = integer, d = double,  b = blob */ 
		$stmt = $db->prepare($sql); 
		if(is_array($types)){ 
			$n = count($types); 
			for($i = 0; $i < $n; $i++) { 
				$param_type = $types[$i]; 
				$param_value = $values[$i]; 
				$loc = $i + 1; 
				switch($param_type){ 
					case "s": 
						$stmt->bindValue($loc, $param_value, SQLITE3_TEXT); 
						break; 
					case "i": 
						$stmt->bindValue($loc, $param_value, SQLITE3_INTEGER); 
						break; 
					case "d": 
						$stmt->bindValue($loc, $param_value, SQLITE3_FLOAT); 
						break; 
					case "b": 
						$stmt->bindValue($loc, $param_value, SQLITE3_BLOB); 
						break; 
				} 
			} 
		} 
		return $stmt; 
} 
 
function BANanoSQLite($dbname,$command,$query,$args,$types) { 
	$db; 
   	//set the header 
	header('Access-Control-Allow-Origin: *'); 
	header('content-type: application/json; charset=utf-8'); 
   	$db = new SQLite3($dbname, SQLITE3_OPEN_CREATE | SQLITE3_OPEN_READWRITE); 
	if(!$db) { 
  		$response = $db->lastErrorMsg(); 
  		$rows = Array(); 
		$rows[] = $response; 
		$output = json_encode($rows); 
	  	die($output); 
	} 
	$commands = array('delete', 'update', 'replace', 'insert', 'createtable', 'droptable'); 
	if(in_array($command,$commands)) { 
    	$command = 'changes'; 
	} 
	switch($command){ 
		case "changes": 
			try { 
			 $stmt = preparesqlite($db, $query, $types, $args); 
			 $res = $stmt->execute(); 
			 $changes = $db->changes(); 
			 $rows = Array(); 
			 $rows[] = $changes; 
			 $res->finalize(); 
			 $resp['response'] = "Success"; 
			 $resp['error'] = ''; 
			 $resp['result'] = $rows; 
			 $resp['affectedRows'] = $changes; 
			 $output = json_encode($resp); 
	  		 echo $output; 
			 break; 
			} 
			catch (Exception $e) { 
			 $error = $e->getMessage(); 
			 $resp['response'] = "Error"; 
			 $resp['error'] = $response; 
			 $resp['result'] = array(); 
			 $output = json_encode($resp); 
	         die($output); 
			} 
	   	default: 
		    try { 
			$stmt = preparesqlite($db, $query, $types, $args); 
			$res = $stmt->execute(); 
			$changes = $db->changes(); 
			$rows = Array(); 
			while($row = $res->fetchArray(1)) { 
				$rows[] = $row; 
			} 
			$res->finalize(); 
			$resp['response'] = "Success"; 
			$resp['error'] = ''; 
			$resp['result'] = $rows; 
			$resp['affectedRows'] = $changes; 
			$output = json_encode($resp); 
	  		echo $output; 
			break; 
			} 
			catch (Exception $e) { 
			 $error = $e->getMessage(); 
			 $resp['response'] = "Error"; 
			 $resp['error'] = $response; 
			 $resp['result'] = array(); 
			 $output = json_encode($resp); 
	         die($output); 
			} 
	} 
	$db->close(); 
} 
$values = array_values($params);call_user_func_array($request, $values);?>