
plt=python3 ../../py/plot.py

pix:
	${MAKE} ngspice	 TB=pixelSensor_tb

sens:
	${MAKE} ngspice	 TB=sens_tb

comp:
	${MAKE} ngspice	 TB=comp_tb

ngspice:
	ngspice -a ${TB}.cir
