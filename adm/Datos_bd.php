<?php
$host = 'localhost';
$dbname = 'adm';
$user = 'root';
$password ='';

$conn = new mysqli( $host , $user , $password , $dbname );

if ($conn->connect_error){
    die("Conexion fallida: ". $conn->connect_error);
}

$numeroaulas = $_POST['Numero_de_aula'];
$capacidad = $_POST['Capacidad'];
$ubicacion = $_POST['Ubicacion'];
$equipamiento = $_POST['Equipamiento'];


$sql_aulas = "INSERT INTo aulas_class(Numero_de_aula , Capacidad , Ubicacion , Equipamiento) VALUES ('$numeroaulas' , '$capacidad ' , '$ubicacion' , '$equipamiento')";

if($conn->query($sql_aulas) === TRUE){
    echo "Registro exitoso";    
} else {
    echo" Error: " . $sql_aulas . "<br>" . $conn->error;
}


$host1 = 'localhost';
$dbname1 = 'adm';
$user1 = 'root';
$password1 ='';

$conn1 = new mysqli( $host , $user , $password , $dbname );

if ($conn1->connect_error){
    die("Conexion fallida: ". $conn1->connect_error);
}

$nomcarreras = $_POST['Nombre_carrera'];
$duracion = $_POST['Duración'];
$numerosmate= $_POST['Nùmeros_materias'];
$coordinadores = $_POST['Coordinador_de_carrera'];
$sql_carreras = "INSERT INTo carreras_ibm(`Nombre_carrera`, `Duración`, `Nùmeros_materias`, `Coordinador_de_carrera`) VALUES ('$nomcarreras' , '$duracion ' , '$numerosmate' , '$coordinadores')";

if($conn->query($sql_carreras) === TRUE){
    echo "Registro exitoso";    
} else {
    echo" Error: " . $sql_carreras . "<br>" . $conn->error;
}


$nombre = $_POST['Nombre'];
$apellidop = $_POST['Apellido_paterno'];
$apellidom = $_POST['Apellido_Materno'];
$asignatura = $_POST['Asignatura'];
$correo = $_POST['Correo_electronico'];
$tel = $_POST['Telefono'];



$sql_docentes = "INSERT INTo docentes('Nombre', 'Apellido_paterno' , 'Apellido_Materno' , 'Asignatura' , 'Correo_electronico' , Telefono ) VALUES ($nombre , $apellidop  , $apellidom , $asignatura , $correo , $tel)";

if($conn->query($sql_docentes) === TRUE){
    echo "Registro exitoso";    
} else {
    echo" Error: " . $sql_docentes . "<br>" . $conn->error;
}

$conn->close();




?>
 cambiar $host = 'localhost';
$dbname1 = 'adm';
$user1 = 'root';
$password1 ='';

$conn1 = new mysqli( $host , $user , $password , $dbname );

if ($conn1->connect_error){
    die("Conexion fallida: ". $conn1->connect_error);
}
segun alo que entendi  es que  las conexiones deben ser diferentes para todas las bases de datos   


