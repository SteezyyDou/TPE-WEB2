#**TPE-WEB2**

##**Integrantes**:
* Joaquin Manuel Ramon Fernandez (joacomrfernandez@gmail.com)<br/>
* Nicolas Presa (nicolaspresapro123@gmail.com)<br/>

##**Tema**
Página para mostrar la discografía de Kanye West.

##**Descripción**
En esta página se podrá ver, agregar, modificar y eliminar tanto álbumes como canciones, siendo capaz de ver los datos de estos, como nombre, duración, fecha de salida y artista/s.
###Photo:
Photo va a guardar el link de cada imagen de álbum, dicha imagen está aclarada tanto en song, como en album. Entonces la lógica dentro de la pagina sería buscar primero si song tiene relleno photo, en el caso de que no tenga photo, se va a hacer una petición a su álbum id para usar la photo del album.

###La duración total del album:
Este dato va a ser calculado en el momento, la idea es que esto sea así ya que si se agrega una canción al album, este va a actualizar su duración total automáticamente. 
Esto se hace así porque el método de subida de los álbumes y las canciones va a ser el siguiente:

###Álbum: 
Se crea como una playlist de spotify, dejando solo la información y su nombre.

###Canción:
Se introducen los datos de la canción y a qué album pertenece la misma (dato obligatorio para no complejizar el programa). 

###Duración de la canción:
Esta se va a subir en cantidad de segundos, luego la misma página va a traducirlo en minutos.

##**DER**
<img width="712" height="544" alt="derTEMP" src="https://github.com/user-attachments/assets/6898aa37-1c10-4047-9db9-88e8bbdf4426" />
