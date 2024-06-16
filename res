<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Multiple Choice Quiz</title>
    <style>
        /* Your CSS styles here */
    </style>
</head>
<body>
    <h1>Multiple Choice Quiz</h1>
    
    <form id="quizForm">
        <div class="question-container">
            <div class="question">1. What is the capital of France?</div>
            <div class="option"><input type="radio" name="q1" value="a"> a) Berlin</div>
            <div class="option"><input type="radio" name="q1" value="b"> b) London</div>
            <div class="option"><input type="radio" name="q1" value="c"> c) Paris</div>
            <div class="option"><input type="radio" name="q1" value="d"> d) Rome</div>
        </div>

        <!-- Add more questions here -->
        
        <input type="submit" value="Submit">
    </form>

    <div id="scoreDisplay"></div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#quizForm').submit(function(e) {
                e.preventDefault(); // Prevent form submission

                var score = 0;

                // Loop through each question
                $('.question-container').each(function(index) {
                    var selectedOption = $(this).find('input[type="radio"]:checked').val();
                    var correctOption = $(this).find('input[type="radio"][value="c"]').val(); // Change this to the correct answer value

                    if (selectedOption === correctOption) {
                        score++;
                    }
                });

                // Display the score
                $('#scoreDisplay').text('Your score is: ' + score + ' out of 10');
            });
        });
    </script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Multiple Choice Quiz</title>
    <style>
        /* Your CSS styles here */
    </style>
</head>
<body>
    <h1>Multiple Choice Quiz</h1>
    
    <form id="quizForm">
        <div class="question-container">
            <div class="question">1. What is the capital of France?</div>
            <div class="option"><input type="radio" name="q1" value="a"> a) Berlin</div>
            <div class="option"><input type="radio" name="q1" value="b"> b) London</div>
            <div class="option"><input type="radio" name="q1" value="c"> c) Paris</div>
            <div class="option"><input type="radio" name="q1" value="d"> d) Rome</div>
        </div>

        <!-- Add more questions here -->
        
        <input type="submit" value="Submit">
    </form>

    <div id="scoreDisplay"></div>
    <div id="timer"></div>
    <button id="tryAgainBtn" style="display:none;">Try Again</button>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            var timer;
            var seconds = 120; // Set the timer duration in seconds

            function startTimer() {
                timer = setInterval(function() {
                    seconds--;
                    $('#timer').text('Time remaining: ' + seconds + ' seconds');

                    if (seconds <= 0) {
                        clearInterval(timer);
                        $('#quizForm').submit();
                    }
                }, 1000);
            }

            $('#quizForm').submit(function(e) {
                e.preventDefault(); // Prevent form submission

                var score = 0;

                // Loop through each question
                $('.question-container').each(function(index) {
                    var selectedOption = $(this).find('input[type="radio"]:checked').val();
                    var correctOption = $(this).find('input[type="radio"][value="c"]').val(); // Change this to the correct answer value

                    if (selectedOption === correctOption) {
                        score++;
                    }
                });

                // Display the score
                $('#scoreDisplay').text('Your score is: ' + score + ' out of 10');
                $('#tryAgainBtn').show();
            });

            $('#tryAgainBtn').click(function() {
                $('#quizForm')[0].reset();
                $('#scoreDisplay').text('');
                $('#timer').text('');
                $('#tryAgainBtn').hide();
                seconds = 120;
                startTimer();
            });

            startTimer();
        });
    </script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Multiple Choice Quiz</title>
    <style>
        /* Your CSS styles here */
    </style>
</head>
<body>
    <h1>Multiple Choice Quiz</h1>
    
    <form id="quizForm">
        <div class="question-container">
            <div class="question">1. What is the capital of France?</div>
            <div class="option"><input type="radio" name="q1" value="a"> a) Berlin</div>
            <div class="option"><input type="radio" name="q1" value="b"> b) London</div>
            <div class="option"><input type="radio" name="q1" value="c"> c) Paris</div>
            <div class="option"><input type="radio" name="q1" value="d"> d) Rome</div>
        </div>

        <!-- Add more questions here -->
        
        <input type="submit" value="Submit">
    </form>

    <div id="scoreDisplay"></div>
    <div id="timer"></div>
    <button id="tryAgainBtn" style="display:none;">Try Again</button>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            var timer;
            var seconds = 120; // Set the timer duration in seconds
            var maxScore = 10; // Maximum score achievable

            function startTimer() {
                timer = setInterval(function() {
                    seconds--;
                    $('#timer').text('Time remaining: ' + seconds + ' seconds');

                    if (seconds <= 0) {
                        clearInterval(timer);
                        $('#quizForm').submit();
                    }
                }, 1000);
            }

            $('#quizForm').submit(function(e) {
                e.preventDefault(); // Prevent form submission

                var score = 0;

                // Loop through each question
                $('.question-container').each(function(index) {
                    var selectedOption = $(this).find('input[type="radio"]:checked').val();
                    var correctOption = $(this).find('input[type="radio"][value="c"]').val(); // Change this to the correct answer value

                    if (selectedOption === correctOption) {
                        score++;
                    }
                });

                // Calculate the final score based on completion time
                var timeBonus = Math.floor((seconds / 120) * maxScore); // Adjust as needed
                score += timeBonus;

                // Display the score
                $('#scoreDisplay').text('Your score is: ' + score + ' out of ' + (maxScore + timeBonus));

                $('#tryAgainBtn').show();
            });

            $('#tryAgainBtn').click(function() {
                $('#quizForm')[0].reset();
                $('#scoreDisplay').text('');
                $('#timer').text('');
                $('#tryAgainBtn').hide();
                seconds = 120;
                startTimer();
            });

            startTimer();
        });
    </script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Multiple Choice Quiz</title>
    <style>
        /* Your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: auto;
            padding: 20px;
            background-color: #f8f8f8;
        }

        .question-container {
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        .question {
            margin-bottom: 10px;
            font-weight: bold;
        }

        .option {
            margin-bottom: 8px;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .score {
            font-size: 20px;
            font-weight: bold;
            margin-top: 20px;
        }

        .timer {
            font-size: 20px;
            font-weight: bold;
        }

        #tryAgainBtn {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
        }

        #tryAgainBtn:hover {
            background-color: #218838;
        }

        @media (max-width: 600px) {
            /* Adjust styles for smaller screens */
            body {
                padding: 10px;
            }

            .question-container {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <h1>Multiple Choice Quiz</h1>
    
    <form id="quizForm">
        <div class="question-container">
            <div class="question">1. What is the capital of France?</div>
            <div class="option"><input type="radio" name="q1" value="a"> a) Berlin</div>
            <div class="option"><input type="radio" name="q1" value="b"> b) London</div>
            <div class="option"><input type="radio" name="q1" value="c"> c) Paris</div>
            <div class="option"><input type="radio" name="q1" value="d"> d) Rome</div>
        </div>

        <!-- Add more questions here -->
        
        <input type="submit" value="Submit">
    </form>

    <div id="scoreDisplay"></div>
    <div id="timer"></div>
    <button id="tryAgainBtn" style="display:none;">Try Again</button>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            // Shuffle Questions
            var questionContainers = $('.question-container');
            for (var i = questionContainers.length - 1; i > 0; i--) {
                var j = Math.floor(Math.random() * (i + 1));
                var temp = questionContainers[i];
                questionContainers[i] = questionContainers[j];
                questionContainers[j] = temp;
            }
            $('#quizForm').append(questionContainers);

            var timer;
            var seconds = 120; // Set the timer duration in seconds
            var maxScore = 10; // Maximum score achievable

            function startTimer() {
                timer = setInterval(function() {
                    seconds--;
                    $('#timer').text('Time remaining: ' + seconds + ' seconds');

                    if (seconds <= 0) {
                        clearInterval(timer);
                        $('#quizForm').submit();
                    }
                }, 1000);
            }

            $('#quizForm').submit(function(e) {
                e.preventDefault(); // Prevent form submission

                var score = 0;

                // Loop through each question
                $('.question-container').each(function(index) {
                    var selectedOption = $(this).find('input[type="radio"]:checked').val();
                    var correctOption = $(this).find('input[type="radio"][value="c"]').val(); // Change this to the correct answer value

                    if (selectedOption === correctOption) {
                        score++;
                    }
                });

                // Calculate the final score based on completion time
                var timeBonus = Math.floor((seconds / 120) * maxScore); // Adjust as needed
                score += timeBonus;

                // Display the score
                $('#scoreDisplay').text('Your score is: ' + score + ' out of ' + (maxScore + timeBonus));

                $('#tryAgainBtn').show();
            });

            $('#tryAgainBtn').click(function() {
                $('#quizForm')[0].reset();
                $('#scoreDisplay').text('');
                $('#timer').text('');
                $('#tryAgainBtn').hide();
                seconds = 120;

                // Shuffle Questions again for variety on retry
                var questionContainers = $('.question-container');
                for (var i = questionContainers.length - 1; i > 0; i--) {
                    var j = Math.floor(Math.random() * (i + 1));
                    var temp = questionContainers[i];
                    questionContainers[i] = questionContainers[j];
                    questionContainers[j] = temp;
                }
                $('#quizForm').append(questionContainers);

                startTimer();
            });

            startTimer();
        });
    </script>
</body>
</html>
<!-- Question 1 -->
<div class="question-container">
    <div class="question">1. What is the capital of France?</div>
    <div class="option"><input type="radio" name="q1" value="a"> a) Berlin</div>
    <div class="option"><input type="radio" name="q1" value="b"> b) London</div>
    <div class="option"><input type="radio" name="q1" value="c"> c) Paris</div>
    <div class="option"><input type="radio" name="q1" value="d"> d) Rome</div>
</div>

<!-- Question 2 -->
<div class="question-container">
    <div class="question">2. What is the capital of India?</div>
    <div class="option"><input type="radio" name="q2" value="a"> a) Berlin</div>
    <div class="option"><input type="radio" name="q2" value="b"> b) London</div>
    <div class="option"><input type="radio" name="q2" value="c"> c) Paris</div>
    <div class="option"><input type="radio" name="q2" value="d"> d) Rome</div>
</div>

<!-- Add more questions here -->



