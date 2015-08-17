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

        cssmin:
            options:
                shorthandCompacting: false,
                roundingPrecision: -1

            target:
                files:
                    'docs/sixteen.min.css': ['docs/sixteen.css']

        copy: {
            main: {
                files: [
                        {expand: true, cwd: 'docs/', src: ['sixteen.min.css'], dest: '../react-ui/site/', filter: 'isFile'},
                    ]
                }
            }


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
    grunt.loadNpmTasks 'grunt-contrib-cssmin'
    grunt.loadNpmTasks 'grunt-contrib-copy'
    grunt.loadNpmTasks 'grunt-contrib-watch'

    # Tasks
    grunt.registerTask 'frontend', [
        'sass'
        'cssmin'
        'copy'
    ]

    grunt.registerTask 'watch-frontend', [
        'watch:frontend'
    ]