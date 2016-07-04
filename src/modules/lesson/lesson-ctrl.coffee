angular.module('app').classy.controller(
    name: 'LessonCtrl'
    inject: ['$scope', 'words', '$stateParams', 'randomizeService']
    data:
        words: 'words'
        lessonType: '$stateParams.lessonType'
        panels: '[]'

    init: -> @_getRandomImages()

    methods:
        _getRandomImages: () ->
            @$.randomAnswer = Math.floor(Math.random() * 4)
            @$.randomWords = @randomizeService.pickRandomWords(@$.words)
            @$.audio = @$.randomWords[@$.randomAnswer]

        selectAnswer: (index) ->
            @$.panels[index] = if index == @$.randomAnswer then 'correct' else 'incorrect'
)