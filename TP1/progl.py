print ("hello, World!")

import fonctions as f

while True:
	a = input ('Veuillez choisir un nombre ')
	v1 = int(a) 
	b = input ('veuillez choisir un deuxième  nombre ')
	v2 = int (b)
	res = f.puissance(v1,v2)
	print ('v1 élévé à v2 vaut', res),
