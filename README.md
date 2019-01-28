# PRUEBA RAILS
En esta prueba, se tenia que lograr que un usuario se registrase y pudiera ver una lista de tareas que puede completar. Para lograr eso, se debe crear el proyecto en el cual instalé devise y ocupé la gema para crear el controlador user y generar vistas, en las cuales se crea automaticamente un formulario para registrar e ingresar un usuario. También tuve que generar una migración, un controlador y un  modelo de tarea(task), para luego crear una tabla intermedia mediante un modelo que me genera una relación entre usuario y tareas(orders), que permite que un usuario pueda mediante un botón, completar tareas o descompletar, para eso tuve que generar una vista index en la que cada tarea está iterada en columnas con su respectivo boton completar, para lograr que funcione, se debe también agregar métodos en el controlador de tasks que en mi proyecto se llaman index, show, total_completeded y tener las rutas correctas para redirigir bien al usuario.Si el usuario hace click en el boton completar, la vista cambia, y muestra dos botones nuevos, uno que dice 'Ver' que redirige a otra vista donde ve una lista de usuarios que completaron la tarea, y un boton de 'Descompletar' para cambiar el estado de la tarea. Además cada usuario puede ver en el navegador la cantidad de tareas que lleva completadas , en la misma vista index, por lo que en el controlador de orders generé tres metodos, index, create y update.

Links:
https://getbootstrap.com/docs/3.3/getting-started/ // 
https://www.bootstrapcdn.com/bootswatch/ // 
https://getbootstrap.com/docs/4.0/examples/navbar-top-fixed/ // 
https://guides.rubyonrails.org/active_record_migrations.html


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
