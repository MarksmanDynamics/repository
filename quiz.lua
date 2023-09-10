-- # Project Name - Basic Lua quiz


-- # overall description

-- # a quiz game where you're prompted with a random question
-- # from an array and you get points for getting right answer 


-- # Questions Array
-- # Points Variable
-- # Choices

-- # @marksman Array of question

PLAYERSCORE = 0

-- #  @Siesmic logic of gaining points
local quizQuestions = {
    {
        question = "Is the sun hot?",
        options = "yes, no, nope",
        correctAnswer = "yes"
    },
    {
        question = "What is a bomb?",
        options = "explosive, toy, glacier",
        correctAnswer = "explosive"
    },
    {
        question = "How many planets are there in the solar system?",
        options = "6, 8, 5",
        correctAnswer = "8"
    },
    {
        question = "What year did WW2 end?",
        options = "1940, 1948, 1945",
        correctAnswer = "1945"
    },
    {
        question = "What is the largest country in the world by land area?",
        options = "China, Russia, United States",
        correctAnswer = "Russia"
    }

    --add more questions/answers here
    }


local function checkCorrect(correctAnswer, userAnswer)
    if userAnswer == correctAnswer then
        return true
    else
        return false
    end

end


-- visualise random question 
local function presentRandomQuestion()
    local randomIdx = math.random(1, #quizQuestions)
    local questionData = quizQuestions[randomIdx]
    print(questionData.question)
    print(string.format("Options: %s", questionData.options))
    table.remove(quizQuestions, randomIdx)
    return questionData.correctAnswer
end

local function updatePlayerScore(isCorrect)
    if isCorrect then
        PLAYERSCORE = PLAYERSCORE + 100
        print("Correct! \n")
    else print("Incorrect answer. \n")
    end
end     
    

while #quizQuestions > 0 do
    local correctAnswer = presentRandomQuestion()
    io.write("Your answer (enter the answer): ")
    local PlayerAnswer = io.read()
    updatePlayerScore(checkCorrect(correctAnswer, PlayerAnswer))  
end
print(string.format("Your score is: %d", PLAYERSCORE))
print("The end.")

