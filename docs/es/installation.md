# Guía de instalación de Minetty

Esta guía lo guiará a través del proceso de instalación para usar Minetty, tanto para uso estándar como para contribuir al proyecto.

## 1. Configuración inicial

Para configurar Minetty en su máquina para uso estándar, puede seguir estos sencillos pasos.

### Paso 1: Clonar el repositorio

Comience clonando el repositorio en su máquina local:

```bash
git clone https://github.com/ruteru/minetty.git
cd minetty/cli/dist && pwd
```

### Paso 2: Agregue la CLI a su PATH

Para ejecutar el comando `minetty` desde cualquier ubicación, debe agregar la CLI a su **PATH**.

1. Abra su archivo de configuración de shell (por ejemplo, `.bashrc`, `.zshrc` o el archivo de configuración de su shell).
2. Agrega la siguiente línea al final del archivo:

```bash
export PATH="$PATH:/path/a/minetty/cli/"
```

Reemplaza `/path/a/minetty` con la ruta absoluta donde se encuentra el ejecutable `minetty`.

3. Guarda los cambios y vuelve a cargar la configuración del shell con el comando:

```bash
source ~/.bashrc # Para usuarios de Bash
source ~/.zshrc # Para usuarios de Zsh
```

### Paso 3: Inicializa Minetty

Una vez que hayas configurado PATH, puedes inicializar la CLI ejecutando:

```bash
minetty init
```

Este comando:

- Otorgará permisos de ejecución (`chmod +x`) a todos los archivos en el directorio `./scripts/`.
- Verifique e instale las dependencias requeridas, incluidas Podman, Ansible, Kubernetes, Helm y k0s.
- Muestre un mensaje de éxito que indica que está listo para comenzar a usar Minetty.

## 2. Contribución a Minetty

Si está contribuyendo al proyecto, el proceso de configuración incluye algunos pasos adicionales para instalar dependencias para desarrolladores.

### Paso 1: Clonar el repositorio

Al igual que con la configuración estándar, deberá clonar el repositorio:

```bash
git clone https://github.com/ruteru/minetty.git
cd minetty && pwd
```

### Paso 2: Agregue la CLI a su PATH

Siga las mismas instrucciones que se describen en la configuración inicial para agregar Minetty a su **PATH**.

### Paso 3: Inicializar el entorno de desarrollo

Para configurar Minetty para el desarrollo, ejecute el siguiente comando:

```bash
minetty init --dev
```

Esto realizará todos los pasos incluidos en la configuración estándar, además de ejecutar el script `./scripts/setup.sh` para garantizar que se instalen todas las dependencias para desarrolladores.

## 3. Comandos comunes

- `minetty init`: inicialización estándar para usuarios.
- `minetty init --dev`: inicialización para desarrolladores, incluidas dependencias adicionales y el script de configuración.

## 4. ¿Necesita ayuda?

Si encuentra algún problema durante la instalación, no dude en abrir un problema en el repositorio o comunicarse a través de los foros de discusión.

---

¡Gracias por usar y contribuir con Minetty!