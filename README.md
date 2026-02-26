# Book Shop

## Requisitos
- Docker
- Docker Compose

## Instrucciones

1. Clona este repositorio
2. Renombra el `.env` (ahora se llama `.env.example`) y rellena tus credenciales:
   - `DB_USER` y `DB_PASSWORD` — las que quieras para MySQL
   - `MYSQL_ROOT_PASSWORD` — la misma que `DB_PASSWORD`
   - `MAIL_USER` y `MAIL_PASSWORD` — tus credenciales de Mailtrap
   - `JWT_SECRET` — cualquier cadena de mínimo 32 caracteres

3. Ejecuta:
```
docker compose up
```

4. Abre el navegador en `http://localhost:8081`

## Usuarios de prueba que ya están creados
- Sueruser: mai, Password: 1234
- Cliente: juan, Password: 1234
