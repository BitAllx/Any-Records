# Any-Records

**Any-Records** is a command-line tool developed in Python to automatically query all possible DNS records for a specific domain using `nslookup`. This tool simplifies the process of retrieving DNS records by automatically displaying all common DNS records for a domain, such as `A`, `AAAA`, `CNAME`, `MX`, `NS`, `TXT`, and more.

## Features

- **Automated Record Lookup**: Automatically queries all common DNS records.
- **User-Friendly Interface**: Easy to use from the command line.
- **Clear Output**: Displays information for each record type in a readable format.
- **Efficient and Fast**: Optimized for performing multiple queries without significant delays.

## Requirements

- **Python 3.6 or Higher**: This tool requires Python 3.6+ to run.
- **nslookup**: Make sure `nslookup` is installed on your system, as it is essential for performing DNS queries.

### Installing Dependencies

1. **Install Python 3.6+**: You can download it from [Python.org](https://www.python.org/downloads/).
2. **Install nslookup**: `nslookup` is pre-installed on most operating systems. If it’s missing, you can install it with your package manager:
    - On **Ubuntu/Debian**: `sudo apt install dnsutils`
    - On **CentOS/RHEL**: `sudo yum install bind-utils`

## Installation

You can clone this repository and run the script as follows:

```bash
git clone https://github.com/BitAllx/Any-Records.git
cd Any-Records
```

# Any Records - Guía de Uso

Este script complementa la herramienta Any-Records, proporcionando una interfaz interactiva con formato visual mejorado.

## Vista Previa

Al ejecutar el script, verás una interfaz así:

```
╔════════════════════════════════════════╗
║          DNS Query Tool v1.0           ║
║    Advanced Domain Information Tool    ║
╚════════════════════════════════════════╝

Please enter the domain to query:
➜ ejemplo.com

[+] Resolving nameserver for ejemplo.com...
[✓] Found nameserver: ns1.ejemplo.com

Do you want to save the DNS records to a file? [y/N]:
➜ y

Enter the output filename:
➜ ejemplo_dns

[+] Querying DNS records...
[✓] Results saved to: ejemplo_dns_20240109_143022.txt
```

## Uso Rápido

1. **Ejecutar el script**:
```bash
chmod +x dns-query-tool.sh
./dns-query-tool.sh
```

2. **Consulta Simple**:
```bash
./dns-query-tool.sh
➜ google.com
```

3. **Consulta con Guardado**:
```bash
./dns-query-tool.sh
➜ google.com
Do you want to save the DNS records to a file? [y/N]:
➜ y
Enter the output filename:
➜ google_records
```

## Diferencias con Any-Records

- Interfaz visual con colores y formato mejorado
- Proceso interactivo paso a paso
- Opción integrada para guardar resultados
- Validación de dominio en tiempo real
- Timestamps automáticos en archivos guardados

Este script puede usarse como complemento de Any-Records para casos donde se prefiera una interfaz más visual e interactiva.
