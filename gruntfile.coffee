module.exports = (grunt) ->

    grunt.initConfig({
        sass:
            dist:
                options:
                    # includePaths: require('node-neat').with('other/path', 'another/path') 
                    # - or - 
                    loadPath: require('node-neat').includePaths
                files:
                    'docs/sixteen.css': 'sixteen.scss'

        watch:
            frontend:
                files: [
                    'components/*.scss'
                    '_settings.scss'
                    'sixteen.scss'
                    ]
                tasks: ['frontend']
    })

    grunt.loadNpmTasks 'grunt-contrib-sass'
    grunt.loadNpmTasks 'grunt-contrib-watch'

    # Tasks
    grunt.registerTask 'frontend', [
        'sass'
    ]

    grunt.registerTask 'watch-frontend', [
        'watch:frontend'
    ]