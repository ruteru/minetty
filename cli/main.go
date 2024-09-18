package main

import (
    "fmt"
    "os"
    "minetty/commands"
)

func main() {
    if len(os.Args) < 2 {
        fmt.Println("Uso: minetty <comando>")
        os.Exit(1)
    }

    command := os.Args[1]

    switch command {
    case "init":
        commands.InitCommand()
    case "help":
        showHelp()
    default:
        fmt.Printf("Comando desconocido: %s\n", command)
        showHelp()
        os.Exit(1)
    }
}

func showHelp() {
    fmt.Println("Comandos disponibles:")
    fmt.Println("  init   - Inicializa el proyecto ejecutando las dependencias necesarias.")
    fmt.Println("           Uso: minetty init [-dev]")
    fmt.Println("  help   - Muestra esta ayuda.")
}
