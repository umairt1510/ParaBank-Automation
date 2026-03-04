# ParaBank Automation Framework

Automated UI testing framework for the **ParaBank demo banking application** using **Robot Framework and SeleniumLibrary**.

This project demonstrates automated testing of key banking workflows such as **registration, login, account creation, fund transfers, and bill payments**.

---

# Project Overview

This framework automates the testing of the ParaBank web application and demonstrates how QA engineers can build a **structured and maintainable test automation suite**.

The project follows automation best practices such as:

- Page Object Model (POM)
- Reusable test keywords
- Modular test design
- Organized test suites

---

# Tech Stack

- **Robot Framework** – Automation framework
- **SeleniumLibrary** – Web UI automation
- **Python** – Automation support
---

# Application Under Test

ParaBank Demo Website:

https://parabank.parasoft.com/parabank/index.htm

The application simulates common online banking features including:

- User registration
- Login authentication
- Account overview
- Opening new accounts
- Transferring funds
- Bill payment

These workflows make ParaBank a useful platform for **automation testing practice**.

---

# Project Structure

```
ParaBank-Automation
│
├── resources
│   ├── pages
│   │   ├── login_page.robot
│   │   ├── register_page.robot
│   │   └── transfer_page.robot
│   │
│   └── common
│       ├── variables.robot
│       └── common_keywords.robot
│
├── testFiles
│   ├── 01_register_testcase.robot
│   ├── 02_login_testcase.robot
│   ├── 03_new_account_testcase.robot
│   ├── 04_transfer_funds_testcase.robot
│   └── 05_bill_pay_testcase.robot
│
├── results
│   ├── log.html
│   ├── report.html
│   └── output.xml
│
└── README.md
```

---

# Automated Test Scenarios

### User Registration
- Open registration page
- Enter user information
- Submit registration form
- Verify successful account creation

### Login
- Login with valid credentials
- Verify successful authentication
- Validate account overview page

### Open New Account
- Navigate to open account page
- Select account type
- Create new account
- Verify confirmation message

### Transfer Funds
- Select source and destination accounts
- Enter transfer amount
- Submit transfer
- Verify successful transaction

### Bill Payment
- Enter payee information
- Enter payment amount
- Select source account
- Verify successful payment confirmation

---

# Installation

Install required dependencies:

```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

---

# Clone the Repository

```bash
git clone https://github.com/umairt1510/ParaBank-Automation.git
cd ParaBank-Automation
```

---

# Running Tests

### Run a Single Test Suite

```bash
robot testFiles/01_register_testcase.robot
```

### Run All Tests

```bash
robot testFiles/
```

---

# Test Reports

Robot Framework automatically generates the following reports:

- **report.html** – Test summary
- **log.html** – Detailed execution log
- **output.xml** – Raw execution data

These reports help analyze failures and debug automation issues.

---

# Automation Practices Used

This project demonstrates several automation best practices:

- Page Object Model (POM)
- Reusable keywords
- Structured test suites
- Modular automation framework
- Organized locator management

---

# Future Improvements

Possible enhancements include:

- CI/CD integration (GitHub Actions / Jenkins)
- Parallel execution using **Pabot**
- Test data management
- API automation testing
- Dockerized execution

---

# Author

**Muhammad Umair Tariq**

Quality Assurance Analyst | Test Automation Enthusiast

GitHub:  
https://github.com/umairt1510
