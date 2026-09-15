# 440 — Tienda de Instrumentos Musicales

## Cómo ejecutar el programa

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/crg28/project_si.git
   cd project_si
   ```

2. Instalar dependencias de PHP:
   ```bash
   composer install
   ```

3. Instalar dependencias de JavaScript:
   ```bash
   npm install
   ```

4. Copiar el archivo de entorno y generar la clave de la aplicación:
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

5. Configurar la base de datos en el archivo `.env`:
   ```
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=8889
   DB_DATABASE=proyecto
   DB_USERNAME=root
   DB_PASSWORD=root
   APP_LOCALE=es
   APP_NAME="440"
   ```

6. Crear la base de datos vacía en MySQL/phpMyAdmin con el nombre configurado en `DB_DATABASE`.

7. Ejecutar las migraciones y poblar la base de datos con datos de ejemplo:
   ```bash
   php artisan migrate:fresh --seed
   ```
   Alternativamente, en el repositorio también se incluye una copia de la base de datos ya poblada (`database/sql_export/proyecto.sql`), por si se prefiere importarla directamente en phpMyAdmin en lugar de generar los datos con el seeder.
   
8. Crear el enlace simbólico de almacenamiento (necesario para las imágenes de los instrumentos):
   ```bash
   php artisan storage:link
   ```

9. Compilar los assets de frontend:
   ```bash
   npm run build
   ```

10. Iniciar el servidor:
    ```bash
    php artisan serve
    ```

11. Abrir el navegador en `http://127.0.0.1:8000`.

**Usuario administrador de prueba** (creado por el seeder):
- Email: `admin@ejemplo.com`
- Contraseña: `contraseña`

**Idioma:** la aplicación está configurada en español (`APP_LOCALE=es`). Todos los textos de la interfaz se gestionan a través del sistema de traducciones de Laravel (`resources/lang/es/messages.php`).

## Ruta principal

```
GET /
```

Muestra la página de bienvenida de la tienda. Desde la barra de navegación se accede al resto de la aplicación.

## Descripción de todas las rutas

### Autenticación

| Ruta | Método | Descripción |
|---|---|---|
| `/login` | GET/POST | Inicio de sesión |
| `/register` | GET/POST | Registro de un nuevo usuario |
| `/logout` | POST | Cierre de sesión |

### Instrumentos (público)

| Ruta | Método | Nombre | Descripción |
|---|---|---|---|
| `/instruments` | GET | `instrument.index` | Catálogo con búsqueda por nombre y filtro por categoría |
| `/instruments/top-selling` | GET | `instrument.topSelling` | Top 3 instrumentos más vendidos |
| `/instruments/most-reviewed` | GET | `instrument.mostReviewed` | Top 4 instrumentos más comentados |
| `/instruments/{id}` | GET | `instrument.show` | Detalle de un instrumento y sus reseñas |

### Carrito

| Ruta | Método | Nombre | Descripción |
|---|---|---|---|
| `/cart` | GET | `cart.index` | Ver contenido del carrito |
| `/cart/add/{id}` | POST | `cart.add` | Agregar un instrumento al carrito |
| `/cart/remove/{id}` | DELETE | `cart.remove` | Quitar un instrumento del carrito |
| `/cart/checkout` | POST | `cart.checkout` | Confirmar la compra (requiere sesión iniciada) |

### Usuario, pagos y pedidos (requieren sesión iniciada)

| Ruta | Método | Nombre | Descripción |
|---|---|---|---|
| `/user/detail` | GET | `user.detail` | Perfil del usuario autenticado |
| `/payments/create` | GET | `payment.create` | Formulario para agregar un método de pago |
| `/payments` | POST | `payment.store` | Guardar un nuevo método de pago |
| `/payments/{id}` | DELETE | `payment.destroy` | Eliminar un método de pago propio |
| `/orders/{id}` | GET | `order.show` | Detalle de un pedido |
| `/orders/{id}/pdf` | GET | `order.downloadPdf` | Descargar la factura del pedido en PDF |

### Administración (requieren sesión iniciada con rol `admin`)

| Ruta | Método | Nombre | Descripción |
|---|---|---|---|
| `/admin` | GET | `admin.dashboard` | Panel principal con estadísticas |
| `/admin/instruments` | GET | `admin.instrument.index` | Listado de instrumentos |
| `/admin/instruments/create` | GET | `admin.instrument.create` | Formulario para crear un instrumento |
| `/admin/instruments` | POST | `admin.instrument.store` | Guardar un nuevo instrumento |
| `/admin/instruments/{id}` | GET | `admin.instrument.show` | Detalle de un instrumento |
| `/admin/instruments/{id}/edit` | GET | `admin.instrument.edit` | Formulario para editar un instrumento |
| `/admin/instruments/{id}` | PUT | `admin.instrument.update` | Actualizar un instrumento |
| `/admin/instruments/{id}` | DELETE | `admin.instrument.destroy` | Eliminar un instrumento |
| `/admin/users` | GET | `admin.user.index` | Listado de usuarios |
| `/admin/users/create` | GET | `admin.user.create` | Formulario para crear un usuario |
| `/admin/users` | POST | `admin.user.store` | Guardar un nuevo usuario |
| `/admin/users/{id}` | GET | `admin.user.show` | Detalle de un usuario |
| `/admin/users/{id}/edit` | GET | `admin.user.edit` | Formulario para editar un usuario |
| `/admin/users/{id}` | PUT | `admin.user.update` | Actualizar un usuario |
| `/admin/users/{id}` | DELETE | `admin.user.destroy` | Eliminar un usuario |