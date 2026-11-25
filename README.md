# Fondos dinámicos

Herramienta para utilizar imágenes y videos como fondo de escritorio en Windows mediante [Lively Wallpaper](https://github.com/rocksdanister/lively).

> **Versión:** 0.1.0-beta

## Descripción

Fondos dinámicos permite reproducir una colección de imágenes y videos como fondo de escritorio, alternando automáticamente entre ellos.

El proyecto utiliza HTML, CSS y JavaScript para reproducir el contenido dentro de Lively Wallpaper y actualmente incluye herramientas auxiliares en PowerShell para actualizar la lista de fondos.

## Características

- Reproducción de imágenes y videos.
- Reproducción aleatoria de los fondos.
- Transiciones entre contenidos.
- Las imágenes permanecen en pantalla durante un tiempo determinado.
- Los videos se reproducen hasta finalizar.
- Audio para los videos.
- Cambio manual al siguiente fondo mediante click.
- Generación de la lista de archivos disponibles.
- Integración con Lively Wallpaper.

## Requisitos

- Windows.
- [Lively Wallpaper](https://github.com/rocksdanister/lively) — se recomienda utilizar la versión disponible en GitHub.
- PowerShell para actualizar la lista de fondos.

## Instalación

1. Descarga o clona este repositorio.
2. Instala Lively Wallpaper.
3. Coloca tus imágenes y videos dentro de la carpeta `Fondos`.
4. Ejecuta `actualizar-lista.bat`.
5. Abre Lively Wallpaper.
6. Importa o configura `index.html` como wallpaper web.
7. Disfruta de tus fondos dinámicos.

## Agregar fondos

Coloca las imágenes y videos que quieras utilizar dentro de:

```text
Fondos/
```

Después de agregar, eliminar o cambiar archivos, ejecuta:

```text
actualizar-lista.bat
```

Esto actualiza `playlist.js` con los archivos disponibles.

## Uso

Una vez configurado el wallpaper en Lively:

- Las imágenes cambian automáticamente.
- Los videos se reproducen hasta terminar.
- La reproducción utiliza un orden aleatorio.
- Puedes hacer click sobre el wallpaper para pasar al siguiente fondo.

## Estructura del proyecto

```text
Fondos dinámicos/
│
├── index.html
├── playlist.js
├── actualizar-lista.ps1
├── actualizar-lista.bat
├── README.md
├── FAQ.md
├── LICENSE
├── .gitignore
│
└── Fondos/
    ├── imágenes...
    └── videos...
```

## Tecnologías utilizadas

- HTML5
- CSS3
- JavaScript
- PowerShell
- Lively Wallpaper

## Estado del proyecto

Actualmente el proyecto se encuentra en una primera versión beta.

### v0.1.0-beta

Primera versión funcional con reproducción de imágenes y videos, reproducción aleatoria, transiciones, audio y cambio manual de fondos.

## Próximas mejoras

- Interfaz gráfica desarrollada en Python.
- Gestión de la biblioteca de fondos.
- Configuración de duración y transiciones.
- Detección automática de imágenes y videos.
- Generación de la playlist desde Python.
- Mejoras en la configuración y experiencia de usuario.

## Ayuda

Si tienes algún problema, consulta el archivo [FAQ.md](FAQ.md), donde se encuentran las preguntas y soluciones más frecuentes.

## Licencia

Este proyecto está distribuido bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para conocer los términos completos.

## Dependencia externa

Este proyecto utiliza [Lively Wallpaper](https://github.com/rocksdanister/lively) como aplicación para ejecutar el wallpaper.

Lively Wallpaper es un proyecto independiente y mantiene su propia licencia.