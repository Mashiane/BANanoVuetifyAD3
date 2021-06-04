<?php header("Access-Control-Allow-Origin: *");$rest_json = file_get_contents("php://input");$_POST = json_decode($rest_json, true);$request='';if(isset($_POST['request'])){$request = $_POST['request'];$params = $_POST['params'];}if (!function_exists($request)) die("invalid request: '" . $request . "'"); 
function BANanoMSSQL($command, $query, $args, $types){ 
	$resp = array(); 
	header('Access-Control-Allow-Origin: *'); 
	header('content-type: application/json; charset=utf-8'); 
	header("Access-Control-Allow-Credentials: true"); 
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS'); 
	header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization'); 
	require_once './assets/mssqlconfig.php'; 
	$serverName = DB_HOST; 
	$uid = DB_USER; 
	$pwd = DB_PASS; 
	$database = DB_NAME; 
	try { 
		$conn = new PDO("sqlsrv:server=$serverName;database=$database", $uid, $pwd); 
 		$conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false); 
		$conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC); 
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION ); 
		$conn->setAttribute(PDO::SQLSRV_ATTR_DIRECT_QUERY, true); 
		 
    	$commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable'); 
    	if (in_array($command, $commands)) { 
        	$command = 'changes'; 
    	} 
		switch ($command) { 
    	case "changes": 
        	$stmt = $conn->prepare($query); 
			$stmt->execute($args); 
			$affRows = $stmt->rowCount(); 
			 
			$resp['response'] = "Success"; 
			$resp['error'] = ''; 
			$resp['result'] = array(); 
			$resp['affectedRows'] = $affRows; 
			$output = json_encode($resp); 
        	break; 
    	default: 
			$stmt = $conn->prepare($query); 
			$stmt->execute($args); 
			$rows = $stmt->fetchAll(); 
        	$affRows = $stmt->rowCount(); 
			$resp['response'] = "Success"; 
			$resp['error'] = ''; 
			$resp['result'] = $rows; 
			$resp['affectedRows'] = $affRows; 
			$output = json_encode($resp); 
        	break; 
		} 
    	echo ($output); 
		// Free statement and connection resources. 
		$stmt = null; 
		$conn = null; 
	} catch( PDOException $e ) { 
		$response = $e->getMessage(); 
		$resp['response'] = "Error"; 
		$resp['error'] = $response; 
		$resp['result'] = array(); 
		$output = json_encode($resp); 
        die($output); 
	} 
} 
 
function BANanoMSSQLDynamic($command, $query, $args, $types, $host, $username, $password, $dbname){ 
	$resp = array(); 
	header('Access-Control-Allow-Origin: *'); 
	header('content-type: application/json; charset=utf-8'); 
	header("Access-Control-Allow-Credentials: true"); 
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS'); 
	header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization'); 
	$conn=null; 
	try { 
		$conn = new PDO("sqlsrv:server=$host;database=$dbname", $username, $password); 
 		$conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false); 
		$conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC); 
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION ); 
		$conn->setAttribute(PDO::SQLSRV_ATTR_DIRECT_QUERY, true); 
		 
    	$commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable'); 
    	if (in_array($command, $commands)) { 
        	$command = 'changes'; 
    	} 
		switch ($command) { 
    	case "changes": 
        	$stmt = $conn->prepare($query); 
			$stmt->execute($args); 
			$affRows = $stmt->rowCount(); 
			 
			$resp['response'] = "Success"; 
			$resp['error'] = ''; 
			$resp['result'] = array(); 
			$resp['affectedRows'] = $affRows; 
			$output = json_encode($resp); 
        	break; 
    	default: 
			$stmt = $conn->prepare($query); 
			$stmt->execute($args); 
			$rows = $stmt->fetchAll(); 
        	$affRows = $stmt->rowCount(); 
			$resp['response'] = "Success"; 
			$resp['error'] = ''; 
			$resp['result'] = $rows; 
			$resp['affectedRows'] = $affRows; 
			$output = json_encode($resp); 
        	break; 
		} 
    	echo ($output); 
		// Free statement and connection resources. 
		$stmt = null; 
		$conn = null; 
	} catch( PDOException $e ) { 
		$response = $e->getMessage(); 
		$resp['response'] = "Error"; 
		$resp['error'] = $response; 
		$resp['result'] = array(); 
		$output = json_encode($resp); 
        die($output); 
	} 
} 
 
 
ini_set('display_errors', 1); 
ini_set('display_startup_errors', 1); 
error_reporting(E_ALL); 
 
function get_result(\mysqli_stmt $statement) 
{ 
    $result = array(); 
    $statement->store_result(); 
    for ($i = 0; $i < $statement->num_rows; $i++) 
    { 
        $metadata = $statement->result_metadata(); 
        $params = array(); 
        while ($field = $metadata->fetch_field()) 
        { 
            $params[] = &$result[$i][$field->name]; 
        } 
        call_user_func_array(array($statement, 'bind_result'), $params); 
        $statement->fetch(); 
    } 
    return $result; 
} 
 
function prepareMySQL($conn, $query, $types, $args) { 
	//paramater types to execute 
	/* Bind parameters. Types: s = string, i = integer, d = double,  b = blob */ 
	$stmt = $conn->prepare($query); 
	if(is_array($types)){ 
		$a_params = array(); 
		$param_type = ''; 
		$n = count($types); 
		for($i = 0; $i < $n; $i++) { 
			$param_type .= $types[$i]; 
		} 
		$a_params[] = & $param_type; 
		//values to execute 
		for($i = 0; $i < $n; $i++) { 
			$a_params[] = & $args[$i]; 
		} 
		call_user_func_array(array($stmt, 'bind_param'), $a_params); 
	} 
	return $stmt; 
} 
 
function BANanoMySQL($command, $query, $args, $types) { 
	$resp = array(); 
	header('Access-Control-Allow-Origin: *'); 
	header('content-type: application/json; charset=utf-8'); 
	header("Access-Control-Allow-Credentials: true"); 
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS'); 
	header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization'); 
	require_once './assets/mysqlconfig.php'; 
    //connect To MySQL 
	mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT); 
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME); 
    //we cannot connect Return an error 
    if ($conn->connect_error) { 
        $response = $conn->connect_error; 
        $resp['response'] = "Error"; 
		$resp['error'] = $response; 
		$resp['result'] = array(); 
		$output = json_encode($resp); 
        die($output); 
    } 
    mysqli_set_charset($conn, 'utf8'); 
    //$query = mysqli_real_escape_string($conn, $query); 
    $commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable'); 
    if (in_array($command, $commands)) { 
        $command = 'changes'; 
    } 
    switch ($command) { 
    case "changes": 
        $stmt = prepareMySQL($conn, $query, $types, $args); 
        if (! $stmt -> execute()) { 
			$response = $stmt->error; 
        	$resp['response'] = "Error"; 
			$resp['error'] = $response; 
			$resp['result'] = array(); 
			$output = json_encode($resp); 
	        die($output); 
		} 
	 
		$affRows = $conn->affected_rows; 
    	$resp['response'] = "Success"; 
		$resp['error'] = ''; 
		$resp['result'] = array(); 
		$resp['affectedRows'] = $affRows; 
		$output = json_encode($resp); 
        break; 
    default: 
        $stmt = prepareMySQL($conn, $query, $types, $args); 
         
		if (!($result = $stmt->execute())) { 
			$response = $stmt->error; 
        	$resp['response'] = "Error"; 
			$resp['error'] = $response; 
			$resp['result'] = array(); 
			$output = json_encode($resp); 
	        die($output); 
		} 
		 
		$rows = get_result($stmt); 
		$affRows = $conn->affected_rows; 
    	$resp['response'] = "Success"; 
		$resp['error'] = ''; 
		$resp['result'] = $rows; 
		$resp['affectedRows'] = $affRows; 
		$output = json_encode($resp); 
        break; 
	} 
	echo ($output); 
    $stmt->close(); 
    $conn->close(); 
} 
 
function BANanoMySQL1($command, $query, $args, $types) { 
	$resp = array(); 
	header('Access-Control-Allow-Origin: *'); 
	header('content-type: application/json; charset=utf-8'); 
	header("Access-Control-Allow-Credentials: true"); 
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS'); 
	header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization'); 
	require_once './assets/mysqlconfig.php'; 
    //connect To MySQL 
	mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT); 
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME); 
    //we cannot connect Return an error 
    if ($conn->connect_error) { 
        $response = $conn->connect_error; 
        $resp['response'] = "Error"; 
		$resp['error'] = $response; 
		$resp['result'] = array(); 
		$output = json_encode($resp); 
        die($output); 
    } 
    mysqli_set_charset($conn, 'utf8'); 
    //$query = mysqli_real_escape_string($conn, $query); 
    $commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable'); 
    if (in_array($command, $commands)) { 
        $command = 'changes'; 
    } 
    switch ($command) { 
    case "changes": 
        $stmt = prepareMySQL($conn, $query, $types, $args); 
        if (! $stmt -> execute()) { 
			$response = $stmt->error; 
        	$resp['response'] = "Error"; 
			$resp['error'] = $response; 
			$resp['result'] = array(); 
			$output = json_encode($resp); 
	        die($output); 
		} 
	 
		$affRows = $conn->affected_rows; 
    	$resp['response'] = "Success"; 
		$resp['error'] = ''; 
		$resp['result'] = array(); 
		$resp['affectedRows'] = $affRows; 
		$output = json_encode($resp); 
        break; 
    default: 
        $stmt = prepareMySQL($conn, $query, $types, $args); 
        //$result = $stmt->execute(); 
		//$result = $stmt->get_result(); 
         
		if (!($result = $stmt->execute())) { 
			$response = $stmt->error; 
        	$resp['response'] = "Error"; 
			$resp['error'] = $response; 
			$resp['result'] = array(); 
			$output = json_encode($resp); 
	        die($output); 
		} 
		 
		if (!($result = $stmt->get_result())) { 
			$response = $stmt->error; 
        	$resp['response'] = "Error"; 
			$resp['error'] = $response; 
			$resp['result'] = array(); 
			$output = json_encode($resp); 
	        die($output); 
		} 
		 
		$affRows = $conn->affected_rows; 
    	$rows = array(); 
        while ($row = $result->fetch_assoc()) { 
            $rows[] = $row; 
        } 
    	$resp['response'] = "Success"; 
		$resp['error'] = ''; 
		$resp['result'] = $rows; 
		$resp['affectedRows'] = $affRows; 
		$output = json_encode($resp); 
        break; 
	} 
	echo ($output); 
    $stmt->close(); 
    $conn->close(); 
} 
 
function BANanoMySQLDynamic($command, $query, $args, $types, $host, $username, $password, $dbname) { 
	$resp = array(); 
	header('Access-Control-Allow-Origin: *'); 
	header('content-type: application/json; charset=utf-8'); 
	header("Access-Control-Allow-Credentials: true"); 
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS'); 
	header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization'); 
	//connect To MySQL 
    $conn = new mysqli($host, $username, $password); 
    //we cannot connect Return an error 
    if ($conn->connect_error) { 
        $response = $conn->connect_error; 
        $resp['response'] = "Error"; 
		$resp['error'] = $response; 
		$resp['result'] = array(); 
		$output = json_encode($resp); 
        die($output); 
    } 
	//select the database 
	mysqli_set_charset($conn, 'utf8'); 
    $commands = array('delete', 'update', 'replace', 'insert', 'createtable', 'droptable'); 
    if (in_array($command, $commands)) { 
        $command = 'changes'; 
    } 
    switch ($command) { 
    case "connection": 
		$resp['response'] = "Success"; 
		$resp['error'] = ''; 
		$resp['result'] = array(); 
		$resp['affectedRows'] = 0; 
		$output = json_encode($resp); 
		die($output); 
	case "createdb": 
		$stmt = prepareMySQL($conn, $query, $types, $args); 
        if (! $stmt -> execute()) { 
			$response = $stmt->error; 
        	$resp['response'] = "Error"; 
			$resp['error'] = $response; 
			$resp['result'] = array(); 
			$output = json_encode($resp); 
	        die($output); 
		} 
	 
		$resp['response'] = "Success"; 
		$resp['error'] = ''; 
		$resp['result'] = array(); 
		$resp['affectedRows'] = 0; 
		$output = json_encode($resp); 
        break; 
	case "dropdb": 
		$stmt = prepareMySQL($conn, $query, $types, $args); 
        if (! $stmt -> execute()) { 
			$response = $stmt->error; 
        	$resp['response'] = "Error"; 
			$resp['error'] = $response; 
			$resp['result'] = array(); 
			$output = json_encode($resp); 
	        die($output); 
		} 
	 
		$resp['response'] = "Success"; 
		$resp['error'] = ''; 
		$resp['result'] = array(); 
		$resp['affectedRows'] = 0; 
		$output = json_encode($resp); 
        break; 
	case "databases": 
		$stmt = prepareMySQL($conn, $query, $types, $args); 
        if (!($result = $stmt->execute())) { 
			$response = $stmt->error; 
        	$resp['response'] = "Error"; 
			$resp['error'] = $response; 
			$resp['result'] = array(); 
			$output = json_encode($resp); 
	        die($output); 
		} 
		$rows = get_result($stmt); 
		$affRows = $conn->affected_rows; 
    	$resp['response'] = "Success"; 
		$resp['error'] = ''; 
		$resp['result'] = $rows; 
		$resp['affectedRows'] = $affRows; 
		$output = json_encode($resp); 
        break; 
	case "changes": 
		//select the db before processing 
		$selected = mysqli_select_db($conn, $dbname); 
		if (!$selected) { 
			$response = $conn->connect_error; 
        	$resp['response'] = "Error"; 
			$resp['error'] = $response; 
			$resp['result'] = array(); 
			$output = json_encode($resp); 
        	die($output); 
		} 
        $stmt = prepareMySQL($conn, $query, $types, $args); 
        if (! $stmt -> execute()) { 
			$response = $stmt->error; 
        	$resp['response'] = "Error"; 
			$resp['error'] = $response; 
			$resp['result'] = array(); 
			$output = json_encode($resp); 
	        die($output); 
		} 
	 
		$affRows = $conn->affected_rows; 
    	$resp['response'] = "Success"; 
		$resp['error'] = ''; 
		$resp['result'] = array(); 
		$resp['affectedRows'] = $affRows; 
		$output = json_encode($resp); 
        break; 
    default: 
		//select the db before processing 
		$dbname = mysqli_real_escape_string($conn, $dbname); 
		$selected = mysqli_select_db($conn, $dbname); 
		if (!$selected) { 
			$response = $conn->connect_error; 
        	$resp['response'] = "Error"; 
			$resp['error'] = $response; 
			$resp['result'] = array(); 
			$output = json_encode($resp); 
        	die($output); 
		} 
        $stmt = prepareMySQL($conn, $query, $types, $args); 
                
		if (!($result = $stmt->execute())) { 
			$response = $stmt->error; 
        	$resp['response'] = "Error"; 
			$resp['error'] = $response; 
			$resp['result'] = array(); 
			$output = json_encode($resp); 
	        die($output); 
		} 
		$rows = get_result($stmt); 
		$affRows = $conn->affected_rows; 
    	$resp['response'] = "Success"; 
		$resp['error'] = ''; 
		$resp['result'] = $rows; 
		$resp['affectedRows'] = $affRows; 
		$output = json_encode($resp); 
        break; 
	} 
	echo ($output); 
    $stmt->close(); 
    $conn->close(); 
} 
 
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
	header("Access-Control-Allow-Credentials: true"); 
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS'); 
	header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization'); 
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