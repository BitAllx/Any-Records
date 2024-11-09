# 🔍 Any-Records
**Any-Records** es una herramienta de línea de comandos desarrollada en Python para consultar automáticamente todos los registros DNS posibles para un dominio específico utilizando `nslookup`. Esta herramienta simplifica el proceso de obtención de registros DNS mostrando automáticamente todos los registros DNS comunes para un dominio, como `A`, `AAAA`, `CNAME`, `MX`, `NS`, `TXT`, y más.

## ✨ Características
- **🚀 Búsqueda Automatizada de Registros**: Consulta automáticamente todos los registros DNS comunes.
- **👥 Interfaz Amigable**: Fácil de usar desde la línea de comandos.
- **📝 Salida Clara**: Muestra la información de cada tipo de registro en un formato legible.
- **⚡ Eficiente y Rápido**: Optimizado para realizar múltiples consultas sin retrasos significativos.

## 📋 Requisitos
- **🐍 Python 3.6 o Superior**: Esta herramienta requiere Python 3.6+ para funcionar.
- **🔧 nslookup**: Asegúrate de que `nslookup` esté instalado en tu sistema, ya que es esencial para realizar consultas DNS.

### 📦 Instalación de Dependencias
1. **Instalar Python 3.6+**: Puedes descargarlo desde [Python.org](https://www.python.org/downloads/).
2. **Instalar nslookup**: `nslookup` viene preinstalado en la mayoría de los sistemas operativos. Si falta, puedes instalarlo con tu gestor de paquetes:
    - En **Ubuntu/Debian**: `sudo apt install dnsutils`
    - En **CentOS/RHEL**: `sudo yum install bind-utils`

## 💻 Instalación
Puedes clonar este repositorio y ejecutar el script de la siguiente manera:
```bash
git clone https://github.com/BitAllx/Any-Records.git
cd Any-Records
```

# 🛠️ Herramienta de Consulta DNS - Guía de Uso
Este script complementa la herramienta Any-Records, proporcionando una interfaz interactiva con formato visual mejorado.

## 🖥️ Vista Previa
Al ejecutar el script, verás una interfaz como esta:
> [!NOTE] Con diferentes colores
```sql
╔════════════════════════════════════════╗
║    Herramienta de Consulta DNS v1.0    ║
║  Herramienta Avanzada de Información   ║
║             de Dominios                ║
╚════════════════════════════════════════╝
Por favor, ingrese el dominio a consultar:
➜ ejemplo.com
[+] Resolviendo servidor de nombres para ejemplo.com...
[✓] Servidor de nombres encontrado: ns1.ejemplo.com
¿Desea guardar los registros DNS en un archivo? [s/N]:
➜ s
Ingrese el nombre del archivo de salida:
➜ ejemplo_dns
[+] Consultando registros DNS...
[✓] Resultados guardados en: ejemplo_dns_20240109_143022.txt

```


## ⚡ Uso Rápido
1. **🚀 Ejecutar el script**:
```bash
chmod +x dns-query-tool.sh
./dns-query-tool.sh
```

2. **🔍 Consulta Simple**:
```bash
./dns-query-tool.sh
➜ google.com
```

3. **💾 Consulta con Opción de Guardado**:
```bash
./dns-query-tool.sh
➜ google.com
¿Desea guardar los registros DNS en un archivo? [s/N]:
➜ s
Ingrese el nombre del archivo de salida:
➜ registros_google
```

## 🔄 Diferencias con Any-Records
- 🎨 Interfaz visual con colores y formato mejorado
- 👉 Proceso interactivo paso a paso
- 💾 Opción integrada para guardar resultados
- ✅ Validación de dominio en tiempo real
- ⏱️ Marcas de tiempo automáticas en archivos guardados

Este script puede utilizarse como complemento de Any-Records para casos donde se prefiera una interfaz más visual e interactiva.
