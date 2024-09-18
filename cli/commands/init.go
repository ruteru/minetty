package commands

import (
    "flag"
    "fmt"
    "os"
    "os/exec"
    "runtime"
    "log"
)

func InitCommand() {
    devFlag := flag.Bool("dev", false, "Si se especifica, ejecuta configuraciones adicionales para desarrollo")
    flag.Parse()

    fmt.Println("Ejecutando 'minetty init'...")

    if runtime.GOOS != "linux" {
        fmt.Println("Este comando solo es compatible con sistemas Linux.")
        os.Exit(1)
    }

    distro := detectLinuxDistro()
    if distro == "" {
        log.Fatal("No se pudo detectar la distribución de Linux.")
    }

    fmt.Printf("Distribución detectada: %s\n", distro)

    err := executeScript("./scripts/check_dependencies.sh")
    if err != nil {
        log.Fatalf("Error al ejecutar el script de verificación de dependencias: %v", err)
    }

    if *devFlag {
        fmt.Println("Flag -dev detectado, ejecutando configuraciones adicionales...")
        err := executeScript("./scripts/setup.sh")
        if err != nil {
            log.Fatalf("Error al ejecutar el script de configuración: %v", err)
        }
    }

    fmt.Println("Inicialización completada con éxito.")
}

func detectLinuxDistro() string {
    output, err := exec.Command("bash", "-c", "./scripts/check_dist.sh").Output()
    if err != nil {
        log.Fatalf("Error al ejecutar el script de detección de distribución: %v", err)
    }
    return string(output)
}

func executeScript(scriptPath string) error {
    cmd := exec.Command("bash", scriptPath)
    cmd.Stdout = os.Stdout
    cmd.Stderr = os.Stderr
    return cmd.Run()
}
