module.exports = (grunt) ->

    grunt.initConfig({
        sass:
            dist:
                files:
                    'dist/sixteen.css': 'src/sixteen.scss'

        cssmin:
            options:
                shorthandCompacting: false,
                roundingPrecision: -1

            target:
                files:
                    'dist/sixteen.min.css': ['dist/sixteen.css']

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
                    'src/sixteen/components/*.scss'
                    'src/sixteen/components/*/*.scss'
                    'src/sixteen/_settings.scss'
                    'src/sixteen.scss'
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
