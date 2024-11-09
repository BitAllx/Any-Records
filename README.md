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

1. **Install nslookup**: `nslookup` is pre-installed on most operating systems. If it’s missing, you can install it with your package manager:
    - On **Ubuntu/Debian**: `sudo apt install dnsutils`
    - On **CentOS/RHEL**: `sudo yum install bind-utils`

## Installation

You can clone this repository and run the script as follows:

```bash
git clone https://github.com/BitAllx/Any-Records.git
cd Any-Records
```
