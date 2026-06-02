# COBOL Programming & File Handling

This repository contains my practical codebase, programming exercises, and structured tasks focused on core COBOL concepts, enterprise file handling, and data processing.

## 🚀 Overview

The main objective of this repository is to store and demonstrate functional logic, sequential file manipulation, and data structuring utilizing:
* **COBOL** (Common Business-Oriented Language)

## 🛠️ Tech Stack & Environment

* **Host Operating System:** macOS (M4 Architecture)
* **Compiler:** GnuCOBOL (`cobc`)
* **Text Editor:** VS Code

---

## 💻 How to Compile and Run

To execute the COBOL programs locally, ensure you have **GnuCOBOL** installed on your system.

### Prerequisites (For macOS Users)
You can quickly install the GnuCOBOL compiler via Homebrew:
```bash
brew install gnucobol
```

### Compilation & Execution Commands
To compile a self-contained executable program (.cbl) and run the binary immediately, use the following chained command format in your terminal:

```bash 
# General command structure
cobc -x filename.cbl -o bin/filename && ./bin/filename
```

Flags Breakdown:
* -x : Instructs the compiler to build a standalone executable program.
* -o : Specifies the output destination path and binary file name.

### 👤 Author

* **Aye Min Tun**
* Final Year Student at University of Computer Studies, Yangon (UCSY)
* Personal Portfolio: [amt-portfolio.vercel.app](https://amt-portfolio.vercel.app)