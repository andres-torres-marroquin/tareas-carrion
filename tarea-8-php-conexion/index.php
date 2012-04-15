<?php
$mysql_host = "mysql10.000webhost.com";
$mysql_database = "a8219634_tarea";
$mysql_user = "a8219634_tarea";
$mysql_password = "tarea1";

$conn = mysql_connect($mysql_host, $mysql_user, $mysql_password) or die("Connection Failed");
mysql_select_db($mysql_database) or die("Database selection failed");



if($_SERVER['REQUEST_METHOD'] == 'POST') {
    $sql = "
    INSERT INTO  `a8219634_tarea`.`Alumno` (
        `id` ,
        `control_number` ,
        `first_name` ,
        `last_name` ,
        `birthday` ,
        `created_at`
    )
    VALUES (
        NULL ,
        '$_POST[control_number]',
        '$_POST[first_name]',
        '$_POST[last_name]',
        '$_POST[birthday]',
        CURRENT_TIMESTAMP
    );
    ";
    $result = mysql_query($sql);
}
?><html>
<head>
    <title>Alumnos</title>
</head>
<body>
    <?php
    if($result){
    ?>
    <h3>Insertado con &Eacute;xito</h3>
    <?php
    }
    ?>
    <form method="POST">
        <p>N&uacute;mero de control: <input type="text" name="control_number" maxlength="8"/></p>
        <p>Nombre: <input type="text" name="first_name"/></p>
        <p>Apellidos: <input type="text" name="last_name"/></p>
        <p>Fecha de cumplea&ntilde;os: <input type="text" name="birthday"/><small>(ej. 1988-12-31)</small> </p>
        <input type="submit">
    </form>
    <table>
        <tr>
            <th>N&uacute;mero de control</th>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Fecha de cumplea&ntilde;os</th>
        </tr>
        <?php
        $sql = "
        SELECT *
        FROM   Alumno;";

        $result = mysql_query($sql);
        while ($row = mysql_fetch_assoc($result)) {
            echo "
            <tr>
                <td>$row[control_number]</td>
                <td>$row[first_name]</td>
                <td>$row[last_name]</td>
                <td>$row[birthday]</td>
            </tr>
            ";
        }
        ?>
    </table>
</body>
</html>