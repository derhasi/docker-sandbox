<?php

date_default_timezone_set('Europe/Berlin');

echo "<p>A simple php file.</p>";
echo sprintf('<p>Current time is %s.</p>', date('d.m.Y h:i'));


$dbh = new PDO('mysql:host=db;dbname=mydb', 'me', 'mypw');

$dbh->query('CREATE TABLE example (id INT, data VARCHAR(100));');

$dbh->query('INSERT INTO example (id, data) VALUES(1,"data1"),(2,"data2"),(3,"data3");');

foreach ($dbh->query('SELECT * FROM example') as $row) {
    var_dump($row);
}
