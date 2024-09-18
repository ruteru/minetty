# Minetty

Minetty es una plataforma diseñada para facilitar el aprendizaje práctico de herramientas y conceptos esenciales en SRE y DevOps. A través de una combinación de ejercicios, ejemplos reales y guías interactivas, Minetty te ayuda a desarrollar habilidades clave en la administración de sistemas, automatización, contenedores, orquestación y debugging de infraestructuras modernas.

## Instalación del CLI

Sigue los pasos a continuación para instalar y usar el CLI de Minetty.

### 1. Clonar el Repositorio

Primero, clona el repositorio en tu máquina local:

```bash
git clone https://github.com/ruteru/minetty.git
cd minetty && pwd
```

### 2. Agregar el CLI al PATH

Para ejecutar `minetty` desde cualquier lugar en tu terminal, necesitas agregarlo a tu **PATH**.

1. Abre tu archivo de configuración de shell (por ejemplo, `.bashrc`, `.zshrc`, o el archivo de configuración de tu shell).
2. Agrega la siguiente línea al final del archivo:

   ```bash
   export PATH="$PATH:/ruta/a/minetty"
   ```

   Reemplaza `/ruta/a/minetty` con la ruta absoluta del directorio donde se encuentra el archivo `minetty`.
3. Guarda los cambios y recarga la configuración del shell:

   ```bash
   source ~/.bashrc   # Si usas Bash
   source ~/.zshrc    # Si usas Zsh
   ```

Ahora podrás ejecutar el comando `minetty` desde cualquier directorio.

### 3. Inicializar el CLI

Para iniciar el CLI y configurar tu entorno, ejecuta el siguiente comando:

```bash
minetty init
```

Este comando realizará las siguientes acciones:

- Otorgará permisos de ejecución (`chmod +x`) a todos los archivos en el directorio `./scripts/`.
- Verificará e instalará las dependencias necesarias (Podman, Ansible, Kubernetes, Helm, k0s).
- Mostrará un mensaje de éxito indicando que puedes empezar a usar el CLI.

### Comandos Disponibles

- `minetty init`: Inicializa el entorno, otorga permisos a los scripts y verifica/instala dependencias.
- `minetty learn <course>`: (Por implementar) Usado para iniciar un curso específico.

### 4. Personalización

Puedes personalizar el CLI para adaptarlo a tus necesidades. Todos los scripts utilizados por el CLI se encuentran en el directorio `./scripts/`. Asegúrate de revisar esos archivos y adaptarlos según lo que necesites.

## Contribuciones

Si deseas contribuir al proyecto, puedes hacerlo mediante **pull requests** o abriendo **issues** para reportar problemas.

1. Haz un fork del proyecto.
2. Crea una rama para tu contribución: `git checkout -b feature/nueva-funcionalidad`.
3. Haz commit de tus cambios: `git commit -m 'Añadir nueva funcionalidad'`.
4. Empuja los cambios a tu fork: `git push origin feature/nueva-funcionalidad`.
5. Crea un pull request desde tu fork.

## Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.

---

¡Gracias por usar Minetty!
