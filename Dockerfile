# Crea el directorio app y te cambia a él.
FROM python:3.9.5-alpine3.13@sha256:d2dfb8f0a8b3ab3e2899bba05e53c2b16bc1b8c1fca83637266edb8d1a57dc86
WORKDIR /app 
COPY src .

# Metemos un ENTRYPOINT por defecto para ayudar al usuario
ENTRYPOINT ["python"]
CMD ["anagrams.py"]
# Vamos a indicar que hace falta un volumen externo
VOLUME /data 
