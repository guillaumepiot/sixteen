module.exports = (grunt) ->

    grunt.initConfig({
        sass:
            dist:
                options:
                    # includePaths: require('node-neat').with('other/path', 'another/path') 
                    # - or - 
                    loadPath: require('node-neat').includePaths
                files:
                    'sixteen.css': 'sixteen.scss'
    })

    grunt.loadNpmTasks 'grunt-contrib-sass'

    # Tasks
    grunt.registerTask 'frontend', [
        'sass'
    ]