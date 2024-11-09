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

# DNS Query Tool - Usage Guide

This script complements the Any-Records tool, providing an interactive interface with enhanced visual formatting.

## Preview

When running the script, you'll see an interface like this:

```
╔════════════════════════════════════════╗
║          DNS Query Tool v1.0           ║
║    Advanced Domain Information Tool    ║
╚════════════════════════════════════════╝

Please enter the domain to query:
➜ example.com

[+] Resolving nameserver for example.com...
[✓] Found nameserver: ns1.example.com

Do you want to save the DNS records to a file? [y/N]:
➜ y

Enter the output filename:
➜ example_dns

[+] Querying DNS records...
[✓] Results saved to: example_dns_20240109_143022.txt
```

## Quick Usage

1. **Run the script**:
```bash
chmod +x dns-query-tool.sh
./dns-query-tool.sh
```

2. **Simple Query**:
```bash
./dns-query-tool.sh
➜ google.com
```

3. **Query with Save Option**:
```bash
./dns-query-tool.sh
➜ google.com
Do you want to save the DNS records to a file? [y/N]:
➜ y
Enter the output filename:
➜ google_records
```

## Differences from Any-Records

- Visual interface with colors and enhanced formatting
- Step-by-step interactive process
- Integrated option to save results
- Real-time domain validation
- Automatic timestamps in saved files

This script can be used as a complement to Any-Records for cases where a more visual and interactive interface is preferred.
