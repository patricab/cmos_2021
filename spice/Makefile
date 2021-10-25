
plt=python3 ../../py/plot.py

mem:
	${MAKE} ngspice	 TB=mem_tb
pix:
	${MAKE} ngspice	 TB=pixelSensor_tb

ngspice:
	ngspice -a ${TB}.cir
