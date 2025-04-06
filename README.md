## Documentación Final del Proyecto Flutter - Taller API, Future, Timer e Isolate

### 📝 Información General
Este proyecto es una app desarrollada en Flutter como parte de un taller académico. Integra diversos conceptos importantes del desarrollo móvil como consumo de APIs, temporizadores, manejo de tareas pesadas con Isolates, navegación entre pantallas y ciclo de vida de widgets. Todo está estructurado para seguir buenas prácticas de arquitectura y organización.

---

### 📁 Estructura General de la App
- **BaseView**: Widget base reutilizable para mantener consistencia en el diseño.
- **Drawer de Navegación**: Permite acceder a distintas secciones:
  - Lista de Estudiantes
  - Temporizadores
  - Tarea Pesada
  - Restaurante (API)

---

### 1️⃣ Lista de Estudiantes
- **Uso de `FutureBuilder`** para simular una carga de datos.
- **Simulación de carga** con `Future.delayed`.
- Se gestionó correctamente el **ciclo de vida** para evitar errores si el usuario cambia de pantalla.

---

### 2️⃣ Temporizadores
- Se usó `Timer.periodic` para crear un contador.
- Se agregaron botones para:
  - Iniciar
  - Pausar
  - Reiniciar
- Diseño centrado y personalizado.

---

### 3️⃣ Tarea Pesada (Isolate)
- Uso de `compute()` para ejecutar una función pesada en un Isolate separado.
- Se previno el intento de actualización de la UI si el usuario cambia de pantalla antes de que termine la tarea.

---

### 4️⃣ Restaurante (Consumo de API de TheMealDB)
#### Listado de Platos
- **Servicio** para consumir la API y obtener una lista de platos.
- Se muestran con imágenes y nombres en un `GridView`.
- Al pulsar sobre un plato, se navega a la pantalla de detalle usando `GoRouter` y paso de parámetros.

#### Detalle del Plato
- Se consulta la API por `idMeal` para obtener la información detallada del plato.
- Se muestra:
  - Imagen del plato.
  - Título.
  - ID.
  - Instrucciones.

---

### 📦 Otros Elementos Técnicos
- Organización en carpetas: `views`, `services`, `models`.
- Manejo correcto del ciclo de vida de widgets.
- Navegación declarativa con `go_router`.
- Código limpio, modular y reutilizable.

---

