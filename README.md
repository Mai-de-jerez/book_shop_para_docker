# 📚 Book Shop

Aplicación web de una librería online desarrollada con Java EE, JDBC, HikariCP y Apache Tomcat, dockerizada y lista para ejecutar.

## 🛠️ Requisitos previos

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Windows/Mac) o Docker + Docker Compose (Linux)
- [Git](https://git-scm.com/)

## 🚀 Instrucciones de instalación

### 1. Clona el repositorio
```bash
git clone https://github.com/Mai-de-jerez/book_shop_para_docker.git
cd book_shop_para_docker
```

### 2. Crea el archivo `.env`

Crea un archivo llamado `.env` en la raíz del proyecto. Puedes usar el `.env` incluido como plantilla — solo tienes que rellenar estos campos:

| Variable | Descripción |
|---|---|
| `DB_USER` | Usuario de MySQL (el que quieras) |
| `DB_PASSWORD` | Contraseña de MySQL (la que quieras) |
| `MYSQL_ROOT_PASSWORD` | Debe ser igual que `DB_PASSWORD` |
| `MAIL_USER` | Tu usuario de [Mailtrap](https://mailtrap.io) |
| `MAIL_PASSWORD` | Tu contraseña de Mailtrap |
| `JWT_SECRET` | Cualquier cadena de mínimo 32 caracteres |

### 3. Arranca el proyecto
```bash
docker compose up
```

La primera vez tardará unos minutos en descargar las imágenes. Cuando veas `Server startup in [X] milliseconds` ya está listo.

### 4. Abre el navegador
```
http://localhost:8081
```

## 👥 Usuarios de prueba

| Rol | Email | Contraseña |
|---|---|---|
| Superusuario | mai@gmail.com | 1234 |
| Cliente | juan@gmail.com | 1234 |

## 🛑 Para detener la aplicación
```bash
docker compose down
```
