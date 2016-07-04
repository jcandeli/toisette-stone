angular.module('app').factory('randomizeService', () ->
    return {
        pickRandomWords: (words) ->
            wordArray = []
            while wordArray.length < 4
                random = words[Math.floor(Math.random() * words.length)]
                if !wordArray.find((word) -> return word == random)
                    wordArray.push(random)
            return wordArray
    }
)