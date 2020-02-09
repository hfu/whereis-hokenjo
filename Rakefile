namespace :build do
  desc 'build tiles'
  task :tiles do
    sh "ogr2ogr -f GeoJSONSeq -oo ENCODING=Shift_JIS /vsistdout/\
 ../Downloads/P28-13/P28-13.shp | ruby filter.rb |\
 tippecanoe --force -o hokenjo.mbtiles\
 --base-zoom=2 --maximum-zoom=14"
    sh "tile-join --force -e tiles hokenjo.mbtiles --no-tile-compression"
  end

  desc 'build style'
  task :style do
    sh "parse-hocon style.conf --output style.json"
    sh "gl-style-validate style.json"
  end
end

namespace :copy do
  desc 'copy files from mapbox-gl-js'
  task :mapbox_gl do
    sh "cp ../mapbox-gl-js/dist/mapbox-gl.js ."
    sh "cp ../mapbox-gl-js/dist/mapbox-gl.js.map ."
    sh "cp ../mapbox-gl-js/dist/mapbox-gl.css ."
  end
end

desc 'host the site'
task :host do
  sh "budo -d ."
end

