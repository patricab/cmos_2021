
plt=python3 ../../py/plot.py

pix:
	${MAKE} ngspice	 TB=pixelSensor_tb

ngspice:
	ngspice -a ${TB}.cir
