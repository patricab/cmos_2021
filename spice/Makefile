
plt=python3 ../../py/plot.py

pix:
	${MAKE} ngspice	 TB=pixelSensor_tb

test:
	${MAKE} ngspice	 TB=test

ngspice:
	ngspice -a ${TB}.cir
