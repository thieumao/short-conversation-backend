<?php
function getCorrectIndex($answer) {
    switch (strtoupper($answer)) {
        case 'A':
            return 0;
        case 'B':
            return 1;
        case 'C':
            return 2;
    }
    return 3;
}

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "short-conversation";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM data";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    $array = [];
    while($row = $result->fetch_assoc()) {
        // echo "id: " . $row["id"]. " - title: " . $row["title"]. " " . $row["audio"]. "<br>";
        $questions = [];

        $question1 = [];
        $answers1 = [$row['a1'], $row['b1'], $row['c1'], $row['d1']];
        $question1['question'] = $row['question1'];
        $question1['correct'] = getCorrectIndex($row['correct1']);
        $question1['answers'] = $answers1;

        $question2 = [];
        $answers2 = [$row['a1'], $row['b2'], $row['c2'], $row['d2']];
        $question2['question'] = $row['question2'];
        $question2['correct'] = getCorrectIndex($row['correct2']);
        $question2['answers'] = $answers2;

        $question3 = [];
        $answers3 = [$row['a3'], $row['b3'], $row['c3'], $row['d3']];
        $question3['question'] = $row['question3'];
        $question3['correct'] = getCorrectIndex($row['correct3']);
        $question3['answers'] = $answers3;

        array_push($questions, $question1, $question2, $question3);
        
        $lesson['audio'] = $row['audio'];
        $lesson['tapescript'] = $row['tapescript'];
        $lesson['questions'] = $questions;
        array_push($array, $lesson);
    }
    echo json_encode($array);
} else {
    echo "0 results";
}
$conn->close();
?>