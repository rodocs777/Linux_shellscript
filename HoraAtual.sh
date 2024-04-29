#!/bin/bash

# Obter a hora atual
current_hour=$(date +%H)
current_minute=$(date +%M)

# Verificar o período do dia e definir a saudação correspondente
if [ "$current_hour" -ge 6 ] && [ "$current_hour" -lt 12 ]; then
    greeting="Bom Dia"
elif [ "$current_hour" -ge 12 ] && [ "$current_hour" -lt 18 ]; then
    greeting="Boa Tarde"
else
    greeting="Boa Noite"
fi

# Converter a hora atual para o formato 12 horas
if [ "$current_hour" -ge 12 ]; then
    am_pm="PM"
    if [ "$current_hour" -gt 12 ]; then
        current_hour=$((current_hour - 12))
    fi
else
    am_pm="AM"
fi

# Exibir saudação e hora atual
echo "$greeting!"
echo "A hora atual é: $current_hour:$current_minute $am_pm"