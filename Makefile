compile:
	erl -noshell -s make all -s init stop

clean:
	rm -rf ebin/*.beam
	rm -rf test/ebin/*.beam

start:
	echo Starting http demo...
	erl -sname iserve \
		-pa ebin \
		-eval "application:start(iserve)"
	