log "START" do
  level :info
end


log "Angular build started" do
  level :info
end

execute 'ng build' do
  cwd '/home/devesh/myApp'
  command ['ng build --aot --prod']
end

execute 'chmod' do
  cwd '/home/devesh/myApp'
  command ['chmod 777 -R dist']
end

# execute 'install source-map-explorer' do
#   cwd '/home/devesh/myApp'
# command ['npm i source-map-explorer']
# end


# execute 'generate source-map' do
#  cwd '/home/devesh/myApp'
#  command ['source-map-explorer dist/myApp/*.js --html "sourcemap.html"','source-map-explorer dist/myApp/*.js --json "sourcemap.json"','source-map-explorer dist/myApp/*.js --tsv "sourcemap.tsv"']
# end

log "Build deploy started" do
  level :info
end


execute 'Deploy to nginx' do
  cwd '/home/devesh/myApp'
  command ['cp dist/myApp/* /var/www/html/']
end

log "END" do
  level :info
end

   
          
          



