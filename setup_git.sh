#!/bin/bash

# --- Script de configuración de Git ---
echo "¡Hola! Vamos a configurar Git en tu máquina."

# 1. Configurar Identidad de Git
echo "---------------------------------"
echo "Paso 1: Configurar Identidad"
read -p "Introduce tu nombre (ej. Juan Pérez): " user_name
read -p "Introduce tu email (ej. juan@email.com): " user_email

git config --global user.name "$user_name"
git config --global user.email "$user_email"

echo "Configuración guardada."

# 2. Generar llave SSH (si no existe)
echo "---------------------------------"
echo "Paso 2: Generar llave SSH"

if [ -f ~/.ssh/id_ed25519.pub ]; then
    echo "Ya tienes una llave SSH existente."
else
    echo "Generando nueva llave (ed25519)..."
    ssh-keygen -t ed25519 -C "$user_email" -f ~/.ssh/id_ed25519 -N ""
fi

# 3. Mostrar la clave para copiar y pegar
echo "---------------------------------"
echo "Paso 3: Copia y pega esta clave en GitHub/GitLab:"
echo ""
cat ~/.ssh/id_ed25519.pub
echo ""
echo "---------------------------------"
echo "Configuración finalizada. ¡Ya estás listo para trabajar!"
