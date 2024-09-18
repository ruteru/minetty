# Contribuir a Minetty

¡Gracias por su interés en contribuir a Minetty! Agradecemos su ayuda y estamos emocionados de tenerlo como parte de nuestra comunidad. Siga las pautas a continuación para que el proceso de contribución sea sencillo y efectivo.

## Cómo contribuir

### Informar problemas
Si encuentra un error o tiene una solicitud de función, siga estos pasos:
1. **Verificar problemas existentes**: antes de crear un nuevo problema, verifique [problemas de Github](https://github.com/ruteru/minetty/issues) para ver si ya se informó.
2. **Abrir un nuevo problema**: proporcione una descripción detallada que incluya:
- Pasos para reproducir el problema
- Comportamiento esperado
- Comportamiento real
- Capturas de pantalla o registros, si corresponde

### Enviar solicitudes de incorporación de cambios
Para contribuir con código, siga estos pasos:
1. **Bifurcar el repositorio**: cree una copia personal del repositorio en GitHub.
2. **Clonar tu bifurcación**: Clonar el repositorio en tu máquina local.
```bash
git clone https://github.com/ruteru/minetty.git
```
3. **Crear una rama**: Crear una nueva rama para tus cambios.
```bash
git checkout -b feature/your-feature-name
```
4. **Realizar tus cambios**: Implementar tus cambios. Asegúrate de probar tus cambios localmente.

5. **Confirmar tus cambios**: Seguir nuestras [directrices de mensajes de confirmación](#commit-message-guidelines) para escribir mensajes de confirmación claros y concisos.
```bash
git add .
git commit -m "feat: agregar nueva característica o corregir error"
```
6. **Enviar tu rama**: Enviar tus cambios a tu repositorio bifurcado.
```bash
git push origin feature/your-feature-name
```
7. **Crear una solicitud de incorporación de cambios**: Abra una solicitud de incorporación de cambios desde su rama a `main` en nuestro repositorio. Proporcione una descripción de sus cambios y cualquier contexto adicional.

### Código de conducta
Por favor, respete nuestro [Código de conducta](link-to-code-of-conduct) cuando interactúe con la comunidad y contribuya.

## Proceso de revisión
- **Revisión**: Su solicitud de incorporación de cambios será revisada por un encargado de mantenimiento. Verificaremos la calidad del código, el cumplimiento de las pautas y la relevancia para el proyecto.
- **Pruebas**: Asegúrese de que todos los cambios pasen las pruebas existentes y agregue nuevas pruebas si corresponde.

## Estilo y pautas del código

### Scripts de shell (Bash)
- Siga las mejores prácticas para la creación de scripts de shell, incluido el manejo adecuado de errores y comentarios claros.
- Use sangría y formato consistentes.

### Manifiestos YAML y JSON
- Asegúrese de que los archivos YAML y JSON tengan el formato correcto y cumplan con los requisitos del esquema.
- Use un linter para validar los archivos YAML y JSON.

### Pautas para los mensajes de confirmación
Use el siguiente formato para los mensajes de confirmación:
```
<type>: <short description>

<body>
```
- **Tipo**: Use uno de los siguientes tipos:
- `feat`: Una nueva característica
- `fix`: Una corrección de errores
- `docs`: Cambios en la documentación
- `style`: Cambios en el estilo del código (formato, puntos y coma faltantes, etc.)
- `refactor`: Refactorización del código (cambios que no corrigen un error ni agregan una característica)
- `test`: Agregar o corregir pruebas
- `chore`: Otros cambios (p. ej., proceso de compilación, herramientas auxiliares)
- **Descripción breve**: Breve resumen de los cambios (50 caracteres o menos).
- **Cuerpo**: Explicación detallada de los cambios (opcional pero recomendado).

Ejemplo:
```
Feat: agregar compatibilidad con nuevas opciones de configuración

- Se agregaron nuevas opciones al archivo de configuración para admitir funciones adicionales.
- Se actualizó la documentación para reflejar estos cambios.
```

## Configuración de su entorno de desarrollo
1. **Instalar dependencias**: use los scripts de configuración provistos para instalar las dependencias necesarias.
```bash
./scripts/setup.sh
```
2. **Configurar su entorno**: siga las instrucciones en [SETUP.md](link-to-setup-guide).

## Recursos adicionales
- [Documentación](./index.md)
- [README](./README.md)
- [Discord](link-to-chat)

¡Gracias por sus contribuciones!