import psycopg2
try:
    connection= psycopg2.connect(
        host = 'localhost',
        user = 'postgres',
        password = '1234567890',
        database = 'proyecto_final'
    )
    print("Conexión exitosa")
    
    #Consultas para mostrar todas las tablas
    t_arbitro = "select * from arbitro"
    t_equipo = "select * from equipo"
    t_jugador= "select * from jugador"
    t_estadio = "select * from estadio"
    t_partido = "select * from partido"
    t_patrocina = "select * from patrocina"
    t_registro_partido = "select * from registro_partido"
    
    #Arbitro
    cursor = connection.cursor()
    cursor.execute(t_arbitro)
    rows = cursor.fetchall()
    print('TABLA ARBITRO')
    for row in rows:
        print(rows)
    print("\n")
    
    #Equipo
    cursor = connection.cursor()
    cursor.execute(t_equipo)
    rows = cursor.fetchall()
    print('TABLA EQUIPO')
    for row in rows:
        print(rows)
    print("\n")
    
    #Jugador
    cursor = connection.cursor()
    cursor.execute(t_jugador)
    rows = cursor.fetchall()
    print('TABLA JUGADOR')
    for row in rows:
        print(rows)
    print("\n")
    
    #Estadio
    cursor = connection.cursor()
    cursor.execute(t_estadio)
    rows = cursor.fetchall()
    print('TABLA ESTADIO')
    for row in rows:
        print(rows)
    print("\n")

    #Partido
    cursor = connection.cursor()
    cursor.execute(t_partido)
    rows = cursor.fetchall()
    print('TABLA PARTIDO')
    for row in rows:
        print(rows)
    print("\n")
    
    #Patrocina
    cursor = connection.cursor()
    cursor.execute(t_patrocina)
    rows = cursor.fetchall()
    print('TABLA PATROCINA')
    for row in rows:
        print(rows)
    print("\n")
    
    #Registro partido
    cursor = connection.cursor()
    cursor.execute(t_registro_partido)
    rows = cursor.fetchall()
    print('TABLA REGISTRO PARTIDO')
    for row in rows:
        print(rows)
    print("\n")
    
except Exception as ex:
    print(ex)
finally:
    connection.close()
    print("Conexión finalizada")

