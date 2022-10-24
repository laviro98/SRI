NANO cambiopuerto
#!/bin/bash
echo '¿Qué puerto quiere añadir?'
read puerto
if grep -q $puerto ./etc/apache2/ports.conf
then
	echo 'Ya está presente en el fichero de configuración.'
else 
	
	echo "Listen $puerto" >> ./etc/apache2/ports.conf
fi
