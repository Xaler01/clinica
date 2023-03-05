Sistema de Gestión de citas medicas.

En el presente proyecto, se ha usado MVC con "AdminLTE-2.4.2" para hacer una interfaz responsive. 

Se ha separado en 4 roles de usuarios pacientes, doctores, secretarias y adminstradores. 

Para el control de acceso se ocupa PHP para restrigir la vista a cada rol dependiendo del módulo al cual el usuario ingresa.

El perfil de cada rol, tiene su intefaz para autogestionar los datos básicos.

El rol administrador puede gestionar la interfaz inicio para todos los usuarios y ver las "Estadisticas" del sistema con las vista 
- Especialidades - Citas Atendidos, 
- Médico - Citas Atendidas y 
- Reporte mes - Citas agendadas.
(Es posible que al iportar la BDD, sea necesario tomar accion sobre las vstas de los reportes para las estadisticas de Especialiades - Citas Atendidas y Médico- Citas atendidas)

Es necesario descargar AdminLTE-2.4.2 y copiar las carpetas "bower_components" y "dist" en la carpeta "vistas" del proyecto. 

En XAMPP (XAMPP Control Panel v3.3.0 - xampp-windows-x64-7.4.33-0-VC15-installer) se debe importar la ultima version de la carpeta BD, la cual contiene los datos actualizados al momento.

***********
Version: clinica V.0.0.9
Se encuentra pendiente la corrección para el módulo diagnóstico para que lea los datos ingresados en el formulario de "Antecedentes Patologicos", "Diagnostico" y "Receta"
***********
Version clinica V.0.0.10
Se corrigio el módulo "diagnostico" para que lea los datos ingresados en el formulario de "Se cambio 'Antecedentes Patologicos" por 'Patologias'", "Diagnstico", se aumento "Alergias" y se quito "Recetas" hasta una nueva actualizacion

Se deberia dar la opcionde ver los "diagnosticos" ingresados por el "doctor" al "paciente" para que el "paciente" como usuario final,haga una evaluacion del"doctor" que hizo la atencion de la cita medica.

Tiene un bug al hacer recarga de la pagina despues de hacer una "Nueva Cita"
*************

Version actual: clinica V.0.0.10
Base D. actual: clinicaBD V.0.0.10

Version próxima: clinica V.0.0.11
Base D. próxima: clinicaBD V.0.0.11
