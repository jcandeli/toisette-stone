angular.module('app').factory('randomizeService', () ->
    return {
        pickRandomWords: (words) ->
            return [
                words[Math.floor(Math.random() * words.length)]
                words[Math.floor(Math.random() * words.length)]
                words[Math.floor(Math.random() * words.length)]
                words[Math.floor(Math.random() * words.length)]
            ]
    }
)