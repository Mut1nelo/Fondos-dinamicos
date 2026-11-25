# Preguntas frecuentes (FAQ)

## ¿Qué es Fondos dinámicos?

Fondos dinámicos es una herramienta que permite utilizar imágenes y videos como fondo de escritorio en Windows mediante Lively Wallpaper.

El proyecto reproduce los archivos de la carpeta `Fondos` y permite alternar entre ellos automáticamente.

---

## ¿Necesito Lively Wallpaper?

Sí.

Lively Wallpaper es la aplicación encargada de ejecutar el wallpaper HTML en el escritorio de Windows.

Para este proyecto se recomienda utilizar la versión de Lively Wallpaper disponible en GitHub.

---

## ¿Cómo agrego nuevos fondos?

Coloca las imágenes o videos dentro de la carpeta:

```text
Fondos/
```

Después de agregar, eliminar o cambiar archivos, ejecuta:

```text
actualizar-lista.bat
```

Esto actualizará `playlist.js` con los archivos encontrados.

---

## Agregué un fondo, pero no aparece. ¿Qué hago?

Primero comprueba que el archivo esté dentro de la carpeta `Fondos`.

Después:

1. Ejecuta `actualizar-lista.bat`.
2. Comprueba que `playlist.js` se haya actualizado.
3. Recarga el wallpaper en Lively Wallpaper.

Si el archivo sigue sin aparecer, comprueba que su formato sea compatible con el navegador y Lively Wallpaper.

---

## ¿Para qué sirve `playlist.js`?

`playlist.js` contiene la lista de imágenes y videos que serán utilizados por el wallpaper.

Este archivo es generado automáticamente por `actualizar-lista.ps1`, por lo que normalmente no es necesario modificarlo manualmente.

---

## ¿Por qué existe `actualizar-lista.bat` y también `actualizar-lista.ps1`?

Cada archivo tiene una función diferente.

- `actualizar-lista.ps1` contiene el script de PowerShell que busca los fondos y genera la lista.
- `actualizar-lista.bat` permite ejecutar el proceso fácilmente desde Windows.

Se recomienda utilizar `actualizar-lista.bat`.

---

## Al ejecutar el script aparece un error relacionado con PowerShell. ¿Qué hago?

Windows puede impedir la ejecución directa de scripts de PowerShell por las políticas de seguridad del sistema.

Por eso se incluye `actualizar-lista.bat`, que ejecuta el script utilizando una política de ejecución temporal para ese proceso.

Si el archivo `.bat` también presenta problemas, se puede ejecutar manualmente desde PowerShell:

```powershell
powershell.exe -ExecutionPolicy Bypass -File ".\actualizar-lista.ps1"
```

---

## ¿Por qué las imágenes no ocupan toda la pantalla?

El proyecto utiliza `object-fit: contain` para mantener la proporción original de las imágenes y evitar que sean recortadas o deformadas.

Por este motivo pueden aparecer espacios alrededor de una imagen cuando su proporción no coincide con la de la pantalla.

Esto es intencional.

---

## ¿Los videos tienen sonido?

Sí.

Los videos pueden reproducirse con audio. El volumen final también depende del volumen configurado en Windows y Lively Wallpaper.

---

## ¿Cómo cambio manualmente al siguiente fondo?

Haz click sobre el wallpaper.

El proyecto cambiará al siguiente elemento de la reproducción.

---

## ¿La reproducción es realmente aleatoria?

Sí.

Los fondos se mezclan utilizando un algoritmo de barajado antes de comenzar cada ciclo de reproducción.

El objetivo es que los archivos se reproduzcan en un orden diferente cada vez y evitar que el primer elemento de un nuevo ciclo sea inmediatamente el mismo que el último del ciclo anterior.

---

## ¿Por qué puede aparecer un fondo repetido relativamente cerca de otro?

La reproducción es aleatoria por ciclos.

Aunque el sistema evita repetir inmediatamente el último archivo al comenzar un nuevo ciclo, un archivo puede aparecer nuevamente después de que haya terminado su ciclo correspondiente.

Esto es un comportamiento normal de la reproducción aleatoria.

---

## ¿Puedo utilizar solamente imágenes?

Sí.

Puedes colocar solamente imágenes dentro de `Fondos/`.

---

## ¿Puedo utilizar solamente videos?

Sí.

Puedes utilizar solamente videos dentro de `Fondos/`.

---

## ¿Puedo mezclar imágenes y videos?

Sí.

El proyecto está diseñado para utilizar ambos tipos de contenido dentro de la misma biblioteca.

---

## ¿Puedo cambiar el tiempo que permanecen las imágenes?

Sí, modificando la configuración correspondiente dentro del código de `index.html`.

La versión actual utiliza un tiempo predeterminado para las imágenes.

Los videos, en cambio, permanecen hasta que terminan su reproducción.

---

## ¿Puedo modificar el proyecto?

Sí.

El código está disponible para ser estudiado, modificado y mejorado de acuerdo con los términos establecidos en la licencia del proyecto.

---

## ¿El proyecto funciona sin Lively Wallpaper?

No.

Actualmente el proyecto utiliza Lively Wallpaper como plataforma para ejecutar el wallpaper.

El objetivo del proyecto no es reemplazar Lively Wallpaper, sino proporcionar una herramienta personalizada para gestionar y reproducir fondos multimedia mediante él.

---

## ¿Por qué `Fondos/` está vacío al descargar el repositorio?

La carpeta está destinada a contener los fondos del usuario.

Por motivos de distribución y derechos de autor, el repositorio no incluye una colección de imágenes o videos de terceros.

Coloca tus propios archivos dentro de `Fondos/` y ejecuta `actualizar-lista.bat`.

---

## Tengo otro problema. ¿Qué puedo hacer?

Comprueba primero:

1. Que Lively Wallpaper esté instalado y funcionando.
2. Que los archivos estén dentro de `Fondos/`.
3. Que hayas ejecutado `actualizar-lista.bat` después de modificar la biblioteca.
4. Que `playlist.js` contenga los archivos esperados.
5. Que hayas recargado el wallpaper después de actualizar la lista.

Si el problema continúa, puedes revisar el código del proyecto o abrir un issue en el repositorio de GitHub proporcionando información sobre el problema y los pasos necesarios para reproducirlo.