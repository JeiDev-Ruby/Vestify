# Vestify

**Vestify** es un sistema de gestión integral para tiendas de alquiler de vestidos, desarrollado con Ruby on Rails.  
Su objetivo es digitalizar y optimizar todas las operaciones, desde el inventario y los contratos hasta el control de devoluciones y la generación de reportes.

---

## 🚀 Empezando

Sigue estos pasos para instalar y configurar el proyecto en tu entorno local.

### 📋 Prerrequisitos

Asegúrate de tener instaladas las siguientes herramientas:

- **Ruby:** Versión 3.0 o superior  
- **Rails:** Versión 6.1 o superior  
- **Gestor de Bases de Datos:** Recomendamos PostgreSQL  
- **Git:** Para clonar el repositorio  

---

## 🔧 Instalación

1. Clona el repositorio en tu máquina local:

   ```bash
   git clone https://github.com/JeiDev-Ruby/Vestify.git
   cd Vestify
   ```

2. Instala las gemas necesarias para el proyecto:

    ```bash
    bundle install
    ```

3. Configura tu base de datos en config/database.yml. Luego, crea la base de datos y ejecuta las migraciones:

    ```bash
    rails db:create
    rails db:migrate
    ```

4. (Opcional) Puedes sembrar la base de datos con información de prueba:

    ```bash
    rails db:seed
    ```

5. Inicia el servidor local de Rails:

    ```bash
    rails server
    ```

Ahora puedes acceder a la aplicación en tu navegador:
http://localhost:3000


## ⚙️ Configuración del Entorno
## Archivos de Configuración Clave

- `config/database.yml`: para la configuración de la base de datos
- `config/initializers/devise.rb`: para la configuración de la autenticación de usuarios

## 🧑‍💻 Usuarios Iniciales

El comando `rails db:seed` creará un usuario administrador por defecto con las siguientes credenciales:

- **Email:** `admin@vestify.com`
- **Contraseña:** `1234`

⚠️ Se recomienda cambiar estas credenciales inmediatamente después de la instalación.

---

## 🛠️ Tecnologías Utilizadas

- [Ruby on Rails](https://rubyonrails.org/) – Framework web principal  
- [Devise](https://github.com/heartcombo/devise) – Gema para autenticación de usuarios  
- [PostgreSQL](https://www.postgresql.org/) – Sistema gestor de base de datos  

---

## 🧑‍🎨 Autor

**Jose Serrano** – Desarrollador principal  
[Sitio web](http://jeidevp.com/)

---

## 📄 Licencia

Este proyecto está bajo la Licencia MIT – consulta el archivo `LICENSE` para más detalles.
