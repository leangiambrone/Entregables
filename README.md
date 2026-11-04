README:

RetailPro | Análisis de Datos para Empresa de Tecnología
Proyecto desarrollado como parte de la formación en Data Analytics, utilizando SQL Server para modelado relacional, consultas de negocio y análisis de ventas.

RetailPro simula el entorno de una empresa de comercialización de productos de tecnología, permitiendo aplicar técnicas de análisis de datos sobre información de clientes, productos, categorías y ventas.

. Objetivos del Proyecto:

-Diseñar una base de datos relacional normalizada.
-Implementar consultas SQL orientadas al negocio.
-Analizar el comportamiento de ventas.
-Identificar oportunidades comerciales mediante métricas y KPIs.
-Generar una base sólida para futuros dashboards en Power BI.

. Modelo de Datos .

La base de datos está compuesta por cuatro tablas principales:

-Categorias
Contiene la clasificación de los productos comercializados.

-Productos
Catálogo de productos tecnológicos con sus precios y categoría asociada.

-Clientes
Información de los clientes registrados en la empresa.

-Ventas
Registro histórico de transacciones realizadas, incluyendo productos vendidos, cantidades y precios.

. Tecnologías Utilizadas .

-SQL Server Management Studio
-GitHub
-Power BI

. Estructura del Repositorio .

│-Entregables/
│
├── Modulo_3/
│   └── Ventas_Tech_DB.sql
│
├── Modulo_4/
│   └── m4_consultas_negocio.sql
│
├── Modulo_5/
│   └── m5_consultas_joins.sql
│
└── README.md


. Cómo Ejecutar el Proyecto .

1. Clonar el repositorio
Shell: git clone https://github.com/leangiambrone/Entregables.git

2. Abrir SQL Server Management Studio
Conectarse a una instancia de SQL Server 2022.

3. Crear la base de datos
Ejecutar primero el script de creación de la base de datos ubicado en el repositorio.

Este script genera:
-Tablas
-Relaciones
-Claves primarias
-Claves foráneas
-Datos de ejemplo

4. Ejecutar las consultas
Una vez creada la base de datos:

-Seleccionar la base RetailPro.
-Abrir el script correspondiente al módulo a evaluar.
-Ejecutar las consultas mediante el botón Ejecutar o presionando Alt+X
