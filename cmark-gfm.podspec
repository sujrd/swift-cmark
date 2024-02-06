Pod::Spec.new do |spec|
    spec.name       = 'cmark-gfm'
    spec.version    = '0.3.0'
    spec.summary    = 'CommonMark parsing and rendering library and program in C.'
    spec.homepage   = 'https://github.com/sujrd/swift-cmark'
    spec.author     = { 'R&D Allm Inc.' => '' }
    spec.source     = { :git => 'https://github.com/sujrd/swift-cmark', :tag => spec.version.to_s }

    spec.public_header_files = [
        'src/**/*.h',
        'extensions/**/*.h',
    ]
    spec.source_files   = [
        'src/**/*.{c,h,inc}',
        'extensions/**/*.{c,h}', 
    ]
    spec.exclude_files = [
        'src/scanners.re',
        'src/libcmark-gfm.pc.in',
        'src/CMakeLists.txt',
        'src/include/module.modulemap',
        'extensions/CMakeLists.txt',
        'extensions/ext_scanners.re',
        'extensions/include/module.modulemap',
    ]
end
