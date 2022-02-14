<?php $rest_json = file_get_contents("php://input");$_POST = json_decode($rest_json, true);$request='';if(isset($_POST['request'])){$request = $_POST['request'];$params = $_POST['params'];}if (!function_exists($request)) die("invalid request: '" . $request . "'"); 
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
 
 
/** 
* FlxZipArchive, Extends ZipArchiv. 
* Add Dirs with Files and Subdirs. 
* 
* <code> 
*  $archive = new FlxZipArchive; 
*  // ..... 
*  $archive->addDir( 'test/blub', 'blub' ); 
* </code> 
*/ 
class FlxZipArchive extends ZipArchive { 
    /** 
     * Add a Dir with Files and Subdirs to the archive 
     * 
     * @param string $location Real Location 
     * @param string $name Name in Archive 
     * @author Nicolas Heimann 
     * @access private 
     **/ 
 
    public function addDir($location, $name) { 
        $this->addEmptyDir($name); 
 
        $this->addDirDo($location, $name); 
     } // EO addDir; 
 
    /** 
     * Add Files & Dirs to archive. 
     * 
     * @param string $location Real Location 
     * @param string $name Name in Archive 
     * @author Nicolas Heimann 
     * @access private 
     **/ 
 
    private function addDirDo($location, $name) { 
        $name .= '/'; 
        $location .= '/'; 
 
        // Read all Files in Dir 
        $dir = opendir ($location); 
        while ($file = readdir($dir)) 
        { 
            if ($file == '.' || $file == '..') continue; 
 
            // Rekursiv, If dir: FlxZipArchive::addDir(), else ::File(); 
            $do = (filetype( $location . $file) == 'dir') ? 'addDir' : 'addFile'; 
			$this->$do($location . $file, $name . $file); 
        } 
    } // EO addDirDo(); 
} 
 
function DirectoryCopy($src, $dst) { 
	//check the source directory 
	$source_exists = is_dir($src); 
	$target_exists = is_dir($dst); 
	if (!$source_exists) { 
		//source does not exist 
		die("no"); 
	} 
	if ($target_exists) { 
		//target already exists 
		die("yes"); 
	}   
	// open the source directory  
    $dir = opendir($src);   
    // Make the destination directory if not exist  
    mkdir($dst, 0700, true); 
	// Loop through the files in source directory  
    foreach (scandir($src) as $file) {   
        if (( $file != '.' ) && ( $file != '..' )) {   
            if ( is_dir($src . '/' . $file) )   
            {   
                // Recursively calling custom copy function  
                // for sub directory   
                DirectoryCopy($src . '/' . $file, $dst . '/' . $file);   
            }   
            else {   
                copy($src . '/' . $file, $dst . '/' . $file);   
            }   
        }   
    }   
    closedir($dir); 
	//return directory existence 
	$res = DirectoryExists($dst); 
	die($res);  
}    
 
function FileUnzip($zipfile, $extractTo) { 
	if (!file_exists($zipfile)) { 
    	die("no"); 
    } 
	// Create new zip class  
	$zip = new ZipArchive;  
	$zip->open($zipfile);  
	// Extracts to current directory  
	$zip->extractTo($extractTo);  
	$zip->close(); 
	//return directory existence 
	$res = FileExists($extractTo); 
	die($res);   
} 
 
 
function DirectoryListRecursive($path) { 
	$target_exists = is_dir($path); 
	if (!$target_exists) { 
		//source does not exist 
		die("{}"); 
	} 
	$iterator = new RecursiveDirectoryIterator($path); 
    // skip dot files while iterating  
    $iterator->setFlags(RecursiveDirectoryIterator::SKIP_DOTS); 
	$rii = new RecursiveIteratorIterator($iterator, RecursiveIteratorIterator::SELF_FIRST); 
 
    $files = array();  
    foreach ($rii as $file) { 
	   	$fname = $file->getPathname(); 
		$fname = str_replace('\\', '/', $fname); 
		$files[] = $fname; 
	} 
		 
    $output = json_encode($files); 
    die($output); 
} 
 
function DirectoryDelete($dir) { 
	$target_exists = is_dir($dir); 
	if (!$target_exists) { 
		//source does not exist 
		die("no"); 
	} 
	$iter = new RecursiveDirectoryIterator($dir); 
	foreach (new RecursiveIteratorIterator($iter, RecursiveIteratorIterator::CHILD_FIRST) as $f) { 
		if ($f->isDir()) { 
			rmdir($f->getPathname()); 
		} else { 
			unlink($f->getPathname()); 
		} 
	} 
	rmdir($dir); 
	//return directory existence 
	$res = DirectoryExists($dir); 
} 
 
 
function DirectoryZip($path, $zipname) { 
	$target_exists = is_dir($path); 
	if (!$target_exists) { 
		//source does not exist 
		die("no"); 
	} 
	$za = new FlxZipArchive; 
	$res = $za->open($zipname, ZipArchive::CREATE); 
	if($res === TRUE) { 
    	$za->addDir($path, basename($path)); 
		$za->close(); 
	} 
	//return directory existence 
	$res = FileExists($zipname); 
} 
 
function FolderZip($path, $zipname) { 
	$target_exists = is_dir($path); 
	if (!$target_exists) { 
		//source does not exist 
		die("no"); 
	} 
	$zip = new ZipArchive(); 
    if (!$zip->open($zipname, ZIPARCHIVE::CREATE)) { 
       die("no"); 
    } 
    $source = str_replace('\\', '/', realpath($path)); 
 
    if (is_dir($source) === true) { 
        $files = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($source), RecursiveIteratorIterator::SELF_FIRST); 
 
        foreach ($files as $file) { 
            $file = str_replace('\\', '/', $file); 
 
            // Ignore "." and ".." folders 
            if (in_array(substr($file, strrpos($file, '/')+1), array('.', '..'))) { 
                continue; 
            }                
 
            $file = realpath($file); 
 
            if (is_dir($file) === true) { 
                $zip->addEmptyDir(str_replace($source . '/', '', $file . '/')); 
            } elseif (is_file($file) === true) { 
                $zip->addFromString(str_replace($source . '/', '', $file), file_get_contents($file)); 
            } 
        } 
    } elseif (is_file($source) === true) { 
        $zip->addFromString(basename($source), file_get_contents($source)); 
    } 
 
    return $zip->close(); 
	//return directory existence 
	$res = FileExists($zipname); 
} 
 
function FileGetJSON($url) { 
	$f = file_get_contents($url); 
	echo $f; 
} 
 
 
function FileGetHTML($url) { 
	$f = file_get_contents($url); 
	echo $f; 
} 
 
function DirectoryMake($dirpath) { 
	$target_exists = is_dir($dirpath); 
	if ($target_exists) { 
		die("yes"); 
	} 
	mkdir($dirpath, 0700, true); 
	//return directory existence 
	$res = DirectoryExists($dirpath); 
	die($res); 
} 
 
function FileDelete($filex) { 
	if (file_exists($filex)) { 
		unlink($filex); 
	} 
	$res = FileExists($filex); 
	switch ($res) { 
  	case "yes": 
    	die("no"); 
  	case "no": 
    	die("yes"); 
	default: 
    	die("no"); 
	} 
} 
 
function FileExists($path) { 
	if (file_exists($path)) { 
    	die("yes"); 
    }else { 
        die("no"); 
    } 
} 
 
function DirectoryExists($path) { 
	$target_exists = is_dir($path); 
	if (!$target_exists) { 
		//source does not exist 
		die("no"); 
	} 
	die("yes"); 
} 
 
 
 
function RollingCopyright($message,$year) 
{ 
  die("$message &copy;$year-" . date("Y")); 
} 
 
function WriteFile($fileName, $fileContents) { 
	file_put_contents($fileName, $fileContents); 
	$res = FileExists($fileName); 
	die($res); 
} 
 
function LogFile($fileName, $fileContents) { 
	$msg = date("Y-m-d H:i:s ") . $fileContents . "\n"; 
	file_put_contents($fileName, $msg, FILE_APPEND); 
	$res = FileExists($fileName); 
	die($res); 
} 
 
function FileAppend($fileName, $fileContents) { 
	if (!file_exists($fileName)) { 
		die("no"); 
	} 
	file_put_contents($fileName, $fileContents, FILE_APPEND); 
	$res = FileExists($fileName); 
	die($res); 
} 
 
function FileCopy($source, $target) { 
	// does the file / directory 
	if (!file_exists($source)) { 
		die("no"); 
	} 
	copy($source, $target); 
	$res = FileExists($target); 
	die($res); 
} 
 
function FileRename($source, $target) { 
	// does the file / directory 
	if (!file_exists($source)) { 
		die("no"); 
	} 
	rename($source, $target); 
	$res = FileExists($target); 
	die($res); 
} 
 
function GetFile($fileName) { 
	// does the file / directory 
	if (!file_exists($fileName)) { 
		die(""); 
	} 
	$f = file_get_contents($fileName); 
	die($f); 
} 
 
function GetPathInfo($fileName) { 
	// does the file / directory 
	if (!file_exists($fileName)) { 
		die(""); 
	} 
	$path_parts = pathinfo($fileName); 
	$output = json_encode($path_parts); 
	die($output); 
} 
 
function SendEmail($from,$to,$cc,$subject,$msg) {  
    $msg = str_replace("|", "\r\n", $msg); 
	$msg = str_replace("\n.", "\n..", $msg);  
	// use wordwrap() if lines are longer than 70 characters  
	$msg = wordwrap($msg,70,"\r\n");  
	//define from header  
	$headers = "From:" . $from . "\r\n";  
	$headers .= "Cc: " . $cc . "\r\n";  
	$headers .= "X-Mailer:PHP/" . phpversion(); 
	$headers .= "MIME-Version: 1.0\r\n"; 
	$headers .= "Content-type: text/html\r\n"; 
	// send email  
	$response = (mail($to,$subject,$msg,$headers)) ? "success" : "failure";  
    $output = json_encode(array("response" => $response));  
    header('content-type: application/json; charset=utf-8');  
    die($output);  
}  
 
function DirectoryList($path) { 
	$files = array(); 
	$dirs = array(); 
	$fnum = $dnum = 0; 
	if (is_dir($path))  
   {  
      $dh = opendir($path);  
      do  
      {  
         $item = readdir($dh);  
         if ($item !== FALSE && $item != "." && $item != "..") 
         {  
            if (is_dir("$path/$item")) $dirs[$dnum++] = $item;  
            else $files[$fnum++] = $item;  
         }  
      } while($item !== FALSE);     
      closedir($dh);  
   }   
   $resp['dnum'] = $dnum; 
   $resp['fnum'] = $fnum; 
   $resp['dirs'] = $dirs; 
   $resp['files'] = $files; 
   $output = json_encode($resp); 
   die($output); 
} 
 
function ValidateCC($number, $expiry)  
{  
   $ccnum  = preg_replace('/[^\d]/', '', $number);  
   $expiry = preg_replace('/[^\d]/', '', $expiry);  
   $left   = substr($ccnum, 0, 4);  
   $cclen  = strlen($ccnum);  
   $chksum = 0;  
  
   // Diners Club  
   if (($left >= 3000) && ($left <= 3059) ||  
       ($left >= 3600) && ($left <= 3699) ||  
       ($left >= 3800) && ($left <= 3889))  
      if ($cclen != 14) die(FALSE);  
  
   // JCB  
   if (($left >= 3088) && ($left <= 3094) ||  
       ($left >= 3096) && ($left <= 3102) ||  
       ($left >= 3112) && ($left <= 3120) ||  
       ($left >= 3158) && ($left <= 3159) ||  
       ($left >= 3337) && ($left <= 3349) ||  
       ($left >= 3528) && ($left <= 3589))  
      if ($cclen != 16) die(FALSE);  
  
   // American Express  
   elseif (($left >= 3400) && ($left <= 3499) ||  
           ($left >= 3700) && ($left <= 3799))  
      if ($cclen != 15) die(FALSE);  
  
   // Carte Blanche  
   elseif (($left >= 3890) && ($left <= 3899))  
      if ($cclen != 14) die(FALSE);  
  
   // Visa  
   elseif (($left >= 4000) && ($left <= 4999))  
      if ($cclen != 13 && $cclen != 16) die(FALSE);  
  
   // MasterCard  
   elseif (($left >= 5100) && ($left <= 5599))  
      if ($cclen != 16) die(FALSE);  
        
   // Australian BankCard  
   elseif ($left == 5610)  
      if ($cclen != 16) die(FALSE);  
  
   // Discover  
   elseif ($left == 6011)  
      if ($cclen != 16) die(FALSE);  
  
   // Unknown  
   else die(FALSE);  
  
   for ($j = 1 - ($cclen % 2); $j < $cclen; $j += 2)  
      $chksum += substr($ccnum, $j, 1);  
  
   for ($j = $cclen % 2; $j < $cclen; $j += 2)  
   {  
      $d = substr($ccnum, $j, 1) * 2;  
      $chksum += $d < 10 ? $d : $d - 9;  
   }  
  
   if ($chksum % 10 != 0) die(FALSE);  
  
   if (mktime(0, 0, 0, substr($expiry, 0, 2), date("t"),  
      substr($expiry, 2, 2)) < time()) die(FALSE);  
     
   die(TRUE);  
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