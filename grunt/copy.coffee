module.exports =
    index:
        files: [{expand: true, flatten: true, src: ['<%= pkg.src %>/index.html'], dest: '<%= pkg.dest %>/'}]
    fonts:
        files: [{expand: true, flatten: true, src: ['<%= pkg.vendor %>/bootstrap/fonts/*'], dest: '<%= pkg.dest %>/fonts'}]
    data:
        files: [{expand: true, flatten: true, src: ['<%= pkg.src %>/data/**/*.json'], dest: '<%= pkg.dest %>/data'}]
    images:
        files: [{expand: true, flatten: true, src: ['<%= pkg.src %>/img/**/*.jpg', '<%= pkg.src %>/img/**/*.jpeg', '<%= pkg.src %>/img/**/*.png'], dest: '<%= pkg.dest %>/img'}]
