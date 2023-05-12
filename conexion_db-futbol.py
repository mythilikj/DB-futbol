#Es necesario correr el archivo dos veces porque de otra forma no se mostraran todas las tablas en la consola.
    #Para correr la consulta 1: Quitar el comentario de las lineas 85 y 99.
    #Para correr la consulta 2: Quitar el comentario de las lineas 21 y 99.
    #Para correr la consulta 3: Quitar el comentario de las lineas 21 y 85.
#Se requiere realizar cada consulta en una consola separada
#Es decir, crear una consola para correr cada consulta
#Además, es necesario borrar todas las variables del entorno antes de correr cada consulta. (Opción de Spyder que tiene icono de basura por la zona de la consola)
#Si no se cumplen estos pasos, las consultas no corren ni individualmente.
import psycopg2
try:
    connection= psycopg2.connect(
        host = 'localhost',
        user = 'postgres',
        password = '1234567890',
        database = 'proyecto_final'
    )
    print("Conexión exitosa")
    
    #Consulta 1: tablas aribitro, equipo, jugador, 
    #estadio, partido, patrocina, y patrocinador --177 tuplas en total
    #'''
    t_equipo = "select * from equipo"
    t_estadio = "select * from estadio"
    t_arbitro = "select * from arbitro"
    t_patrocinador = "select * from patrocinador"
    t_patrocina = "select * from patrocina"
    t_partido = "select * from partido"
    
    #Equipo
    cursor = connection.cursor()
    cursor.execute(t_equipo)
    rows = cursor.fetchall()
    print('TABLA EQUIPO: id_equipo, nombre, valor')
    for row in rows:
        print(rows)
    print("\n")
    
    #Estadio
    cursor = connection.cursor()
    cursor.execute(t_estadio)
    rows = cursor.fetchall()
    print('TABLA ESTADIO: codigo_estadio, nombre, capacidad, ciudad, id_equipo_equipo')
    for row in rows:
        print(rows)
    print("\n")
    
    #Arbitro
    cursor = connection.cursor()
    cursor.execute(t_arbitro)
    rows = cursor.fetchall()
    print('TABLA ARBITRO: id, primer_nombre, primer_apellido, fecha_nacimiento')
    for row in rows:
        print(rows)
    print("\n")
    
    #Patrocinador
    cursor = connection.cursor()
    cursor.execute(t_patrocinador)
    rows = cursor.fetchall()
    print('TABLA PATROCINDOR: codigo_patrocinador, nombre, elemento')
    for row in rows:
        print(rows)
    print("\n")    
    
    #Patrocina
    cursor = connection.cursor()
    cursor.execute(t_patrocina)
    rows = cursor.fetchall()
    print('TABLA PATROCINA: id_patrocinador, id_equipo')
    for row in rows:
        print(rows)
    print("\n")

    #Partido
    cursor = connection.cursor()
    cursor.execute(t_partido)
    rows = cursor.fetchall()
    print('TABLA PARTIDO: codigo_jornada, id_local, id_visitante, goles_local, goles_visitante, id_arbitro, resultado')
    for row in rows:
        print(rows)
    print("\n")
    #'''
    
    #Consulta #2: tabla jugador -- 525 tuplas
    #'''
    t_jugador= "select * from jugador"
    
    #Jugador
    cursor = connection.cursor()
    cursor.execute(t_jugador)
    rows = cursor.fetchall()
    print('TABLA JUGADOR: id_jugador, id-equipo, dorsal, primer_nombre, segundo_nombre, primer_aoellido, segundo_apellido, nacionalidad, fecha_nacimiento')
    for row in rows:
        print(rows)
    print("\n")
    #'''
   
    #Consulta #3: Tabla registro_partido - 325 tuplas
    #'''
    t_registro_partido = "select * from registro_partido"
    
    #Registro partido
    cursor = connection.cursor()
    cursor.execute(t_registro_partido)
    rows = cursor.fetchall()
    print('TABLA REGISTRO PARTIDO: id_jugador, codigo_jornada, accion')
    for row in rows:
        print(rows)
    print("\n")
    #'''
    
except Exception as ex:
    print(ex)
finally:
    connection.close()
    print("Conexión finalizada")
