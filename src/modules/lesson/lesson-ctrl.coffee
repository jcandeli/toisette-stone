angular.module('app').classy.controller(
    name: 'LessonCtrl'
    inject: ['$scope', 'words', '$stateParams', 'randomizeService', '$element']
    data:
        words: 'words'
        lessonType: '$stateParams.lessonType'
        panels: '[]'
        audioPlayer: ''

    init: -> 
        @$.audioPlayer = @$element.find("audio")[0]
        @getRandomImages()

    methods:
        getRandomImages: () ->
            @$.randomAnswer = Math.floor(Math.random() * 4)
            @$.randomWords = @randomizeService.pickRandomWords(@$.words)
            @$.audio = @$.randomWords[@$.randomAnswer]

        selectAnswer: (index) ->
            @$.panels[index] = if index == @$.randomAnswer then 'correct' else 'incorrect'

        playAudio: () ->
            @$.audioPlayer.play()
)