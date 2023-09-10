print("hello")

-- # Project Name - Basic Lua quiz


-- # overall description

-- # a quiz game where you're prompted with a random question
-- # from an array and you get points for getting right answer 
-- #  and lose points for wrong answer


-- # Questions Array
-- # Points Variable
-- # Choices

-- # @marksman Array of question


-- #  @Siesmic logic of gaining points
print("Answer:")
local quizQuestions = {
    {
        question = "Is the sun hot?",
        options = {"yes", "no", "nope"},
        correctAnswer = "yes"
    },
    {
        question = "What is a bomb?",
        options = {"explosive", "toy", "glacier"},
        correctAnswer = "explosive"
    },
    --add more questions/answers here
    }

--question randomizer
local function shuffleOptions(options)
    local shuffled = {}
    for i = 1, #options do
local randIdx = math.random(1, #options)
table.insert(shuffled, options[randIdx])
table.remove(options, randIdx)
    end
    return shuffled
end

-- visualise random question 
local function presentRandomQuestion()
    local randomIdx = math.random(1, #quizQuestions)
    local questionData = quizQuestions[randomIdx]

    --answer order shuffler
    local shuffledOptions = shuffleOptions(questionData.options)
    

    --monday left me broken
    --tuesday i was through with hoping
    --wednesday my empty arms were open
    --thursday waiting for love, waiting for love
     

print(question)
local answer = io.read()
print(answer + "is the correct answer!") -- is this good? bro idk -marksman
end