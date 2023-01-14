Sistema de Gestión de citas medicas.

En el presente proyecto, se ha usado MVC con "AdminLTE-2.4.2" para hacer una interfaz responsive. 

Se ha separado en 4 roles de usuarios pacientes, doctores, secretarias y adminstradores. 

Para el control de acceso se ocupa PHP para restrigir la vista a cada rol dependiendo del módulo al cual el usuario ingresa.

Los perfiles de cada rol, tiene su intefaz para autogestionar los datos básicos su propio usuario.

El rol administrador puede gestionar la interfaz inicio para todos los usuarios y ver las "Estadisticas" del sistema con la vista 
Especialidades - Citas Atendidos, se encuentra pendiente 
Médico - Citas Atendidas y
Reprte mes - Citas agendadas.

Es necesario descargar AdminLTE-2.4.2 y copiar las carpetas "bower_components" y "dist" en la "vistas" del proyecto. 

En XAMPP se debe importar la ultima version de la carpeta BD, la cual contiene los datoz actualizados al momento de cada actualización.

