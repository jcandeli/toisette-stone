angular.module('app').config([
    '$stateProvider'
    '$urlRouterProvider'
    ($stateProvider, $urlRouterProvider) ->
        $urlRouterProvider.otherwise('/')

        $stateProvider
            .state('index', {
              url: '/'
              templateUrl: 'modules/homepage/homepage.html'
              controller: 'HomepageCtrl'
              resolve:
                lessons: ($http) ->
                    $http.get('data/lessons.json').then((response) ->
                        return response.data.lessons
                    )
            })

            .state('lesson', {
              url: '/lesson/:lessonType'
              templateUrl: 'modules/lesson/lesson.html'
              controller: 'LessonCtrl'
              resolve:
                words: ($stateParams, $http) ->
                    $http.get("data/#{$stateParams.lessonType}.json").then((response) ->
                        return response.data.words
                    )
            })
    ]
)