generate-results:
	./generate-results.sh

benchmark-haskell: between-separators FORCE
	@vagrant ssh --command "cd /vagrant/haskell/benchmarker; stack exec benchmarker & sleep 2 ; echo \"--------\" ; wrk http://localhost:3000/asdfasdf ; echo \"--------\"" | ./between-separators --------

benchmark-gin: between-separators FORCE
	@vagrant ssh --command "cd /vagrant/gin/benchmarker; GIN_MODE=release ./benchmarker & sleep 2 ; echo \"--------\" ; wrk http://localhost:3000/asdfasdf ; echo \"--------\"" | ./between-separators --------

benchmark-vibed-ldc: between-separators FORCE
	@vagrant ssh --command "cd /vagrant/vibe.d/benchmarker; ./ldc-benchmarker & sleep 2 ; echo \"--------\" ; wrk http://localhost:3002/asdfasdf ; echo \"--------\"" | ./between-separators --------

benchmark-vibed-gdc: between-separators FORCE
	@vagrant ssh --command "cd /vagrant/vibe.d/benchmarker; ./gdc-benchmarker & sleep 2 ; echo \"--------\" ; wrk http://localhost:3002/asdfasdf ; echo \"--------\"" | ./between-separators --------

between-separators: between-separators.hs
	ghc between-separators.hs
	rm between-separators.hi
	rm between-separators.o

FORCE:
