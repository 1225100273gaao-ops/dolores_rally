# Rally de la Independencia AR

Juego de realidad aumentada para recorrer Dolores Hidalgo: radar, frío o caliente, trivia histórica, álbum coleccionable y modo demo. Construido con Flutter siguiendo TDD.

Materia: Desarrollo Móvil Integral, UTNG.
Autor: Aguilar Ortiz Gael Alejandro, grupo GTID241.

## Cómo ejecutarlo

```bash
flutter pub get
flutter test
flutter run
```

## Estructura

```
lib/
  dominio/        reglas del juego en Dart puro
  datos/          GPS, brújula, simuladores y almacenamiento
  presentacion/   ViewModel y pantallas
test/             pruebas por ronda
```

## Evidencias por ronda

### Ronda 0 · Taller
![Taller](capturas/ronda00_taller.png)

### Ronda 2 · Geometría (geo.dart)
![Rojo](capturas/ronda02_rojo.png)
![Verde](capturas/ronda02_verde.png)

### Ronda 3 · Catálogo
![Catálogo](capturas/ronda03_catalogo.png)

### Ronda 4 · Azar inyectado (aparicion.dart)
![Rojo](capturas/ronda04_rojo.png)
![Verde](capturas/ronda04_verde.png)

### Ronda 5 · Radar y temperatura (radar.dart)
![Rojo](capturas/ronda05_rojo.png)
![Verde](capturas/ronda05_verde.png)

### Ronda 6 · Motor AR (motor_ar.dart)
![Rojo](capturas/ronda06_rojo.png)
![Verde](capturas/ronda06_verde.png)

### Ronda 7 · Reglas del juego (partida.dart)
![Rojo](capturas/ronda07_rojo.png)
![Verde](capturas/ronda07_verde.png)

### Ronda 8 · Almacén
![Almacén](capturas/ronda08_almacen.png)

### Ronda 9 · Fuentes de posición y brújula
![Fuentes](capturas/ronda09_fuentes.png)

### Ronda 10 · ViewModel
![Rojo](capturas/ronda10_rojo.png)
![Verde](capturas/ronda10_verde.png)

### Ronda 11 · Pantallas y modo demo
![Inicio](capturas/ronda11_inicio.png)
![Demo](capturas/ronda11_demo.png)
![Pregunta](capturas/ronda11_pregunta.png)
![Atrapado](capturas/ronda11_atrapado.png)

### Ronda 12 · Todas las pruebas
![Pruebas](capturas/ronda12_todas.png)
