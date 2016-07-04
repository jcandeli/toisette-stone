# notifications for grunt only
module.exports =
    index:
        options:
            message: 'index.hml copied'
    ngtemplates:
        options:
            message: 'Templates compiled'
    coffee:
        options:
            message: 'Coffeescript has been compiled and minified'
    tests:
        options:
            message: 'Tests have been compiled'
    scss:
        options:
            message: 'SCSS has been compiled'
    browserify:
        options:
            message: 'Browserify has finished'
    data:
        options:
            message: 'Data updated'
