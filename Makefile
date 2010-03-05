compile:
	erl -noshell -s make all -s init stop

clean:
	rm -rf ebin/*.beam
	rm -rf test/ebin/*.beam

start:
	echo Starting http demo...
	erl -smp +K true +P 1000000 \
		-sname iserve \
		-setcookie "chocolate chip cookie" \
		-pa ebin \
		-s make all \
		-eval "application:start(iserve)"
	