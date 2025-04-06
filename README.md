# hola_mundo
TALLER-1
Gestión de Usuarios con Tabs y Ciclo de Vida en Flutter

Adrián Sebastian Saavedra Romero
6° semestre - Ingeniería en Sistemas

Esta aplicación de ejemplo está desarrollada en Flutter y tiene como objetivo:

Mostrar el uso del paso de parámetros entre widgets.

Evidenciar el ciclo de vida de los widgets en Flutter.

Aplicar conceptos como TabBar, Drawer, y gestión de estado.

La app permite registrar nombres de usuarios y visualizarlos en una cuadrícula desde otra pestaña. Todo el proceso se realiza en una única vista, utilizando un TabBar.

TALLER-2

Implementar funcionalidades en Flutter que evidencien el uso de Future, Timer e Isolate, entendiendo su importancia en la ejecución asincrónica y optimización del rendimiento de las aplicaciones móviles.

punto 1 ---------------

Se creó una vista llamada Lista de Estudiantes.

Se simula una consulta a base de datos usando un Future.delayed de 3 segundos.

Se usa un FutureBuilder para mostrar:

Un CircularProgressIndicator mientras carga.

Un ListView.builder con tarjetas (Card) cuando los datos llegan.

punto 2 ---------------

Vista llamada Temporizadores.

Uso de Timer.periodic para contar segundos.

Se implementaron tres botones:

Iniciar

Pausar

Reiniciar

También se usó setState para actualizar el contador en tiempo real.

Todo el contenido se centró visualmente en la pantalla para mejor estética.

punto 3 ---------------

Vista llamada Tarea Pesada.

Uso de Isolate.spawn para lanzar una tarea de suma grande (0 a 100 millones).

Se usa un ReceivePort para recibir el resultado del Isolate.

Se controla el ciclo de vida con if (!mounted) para evitar errores si el usuario cambia de pantalla durante la ejecución.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
