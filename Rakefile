task :default do
  sh "ogr2ogr -f GeoJSONSeq -oo ENCODING=Shift_JIS /vsistdout/\
 ../Downloads/P28-13/P28-13.shp | ruby filter.rb |\
 tippecanoe --force -o hokenjo.mbtiles\
 --base-zoom=2 --maximum-zoom=14"
  sh "tile-join --force -e tiles hokenjo.mbtiles --no-tile-compression"
end
