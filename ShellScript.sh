#!/bin/bash

# Root diskinin doluluk oranını kontrol etmek için kullanılan komut
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

# Uyarı eşiği
threshold=90

# Doluluk oranını kontrol edin ve uyarı mesajı verin
if [ "$disk_usage" -gt "$threshold" ]; then
  echo "Uyarı: Root diski doluluk oranı $disk_usage% ve %90'ın üzerinde!"
fi
