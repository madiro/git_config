# git_config

Configuración rápida de Git para entornos Linux.

## ¿Qué hace?

El script `setup_git.sh` automatiza los pasos más comunes para dejar Git listo en una máquina nueva:

1. **Configura tu identidad** – nombre y email globales para todos tus repositorios.
2. **Genera una llave SSH ed25519** – solo si aún no tienes una en `~/.ssh/id_ed25519`.
3. **Muestra la clave pública** – lista para copiar y añadir en GitHub, GitLab u otro servicio.

## Uso

```bash
# Descarga y dale permisos de ejecución
chmod +x setup_git.sh

# Ejecuta el script
./setup_git.sh
```

Sigue las instrucciones en pantalla. Al final verás tu clave pública SSH; cópiala y añádela en la sección **SSH Keys** de tu cuenta de GitHub/GitLab.

## Privacidad

> **Nota:** Este repositorio es público. El script nunca almacena ni transmite tus datos: el nombre, email y claves SSH se guardan únicamente en tu máquina local (`~/.gitconfig` y `~/.ssh/`).
