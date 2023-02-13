Sistema de Gestión de citas medicas.

En el presente proyecto, se ha usado MVC con "AdminLTE-2.4.2" para hacer una interfaz responsive. 

Se ha separado en 4 roles de usuarios pacientes, doctores, secretarias y adminstradores. 

Para el control de acceso se ocupa PHP para restrigir la vista a cada rol dependiendo del módulo al cual el usuario ingresa.

Los perfiles de cada rol, tiene su intefaz para autogestionar los datos básicos su propio usuario.

El rol administrador puede gestionar la interfaz inicio para todos los usuarios y ver las "Estadisticas" del sistema con la vista 
- Especialidades - Citas Atendidos, 
- Médico - Citas Atendidas y 
- Reporte mes - Citas agendadas.
(Es posible que al iportar la BDD, sea necesario tomar accion sobre las vstas de los reportes para las estadisticas de Especialiades - Citas Atendidas y Médico- Citas atendidas)

Es necesario descargar AdminLTE-2.4.2 y copiar las carpetas "bower_components" y "dist" en la "vistas" del proyecto. 

En XAMPP se debe importar la ultima version de la carpeta BD, la cual contiene los datos actualizados al momento.

Version actual: clinica V.0.0.9
Base D. actual: clinicaBD V.0.0.9

Version próxima: clinica V.0.0.10
Base D. próxima: clinicaBD V.0.0.10

***********
Se encuentra pendiente la corrección para el módulo diagnóstico para que lea los datos ingresados en el formulario de "Antecedentes Patologicos", "Diagnostico" y "Receta"
***********