<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [your_project_name] <a name="about-project"></a>



**[Vet_clinic]** is a database application for managing the records of a veterinary clinic, such as the patients' medical histories, appointments, and treatments.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Describe between 1-3 key features of the application.

- **[Patient Management]**
- **[Reporting and Analytics]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

<!-- ## 🚀 Live Demo <a name="live-demo"></a>

> Add a link to your deployed project.

- [Live Demo Link](https://yourdeployedapplicationlink.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p> -->

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project, you need to have a working installation of PostgreSQL on your machine. If you don't have it installed, you can download and install it from the official website:

[PostgreSQL download page](https://www.postgresql.org/download/)

### Setup

Clone this repository to your desired folder:

  cd my-folder
  git clone git@github.com:Oscar-Espinoza/vet_clinic.git

### Install

To set up the database for this project, follow these steps:

. Open a terminal or command prompt and navigate to the project folder.

- Start the PostgreSQL command line interface by typing psql in the terminal.

- Create a new database for the project by typing the following command:

CREATE DATABASE dbname;

- Replace dbname with the name you want to give to your database.

Connect to the newly created database by typing \c dbname.

- Load the schema definition file by typing the following command:

\i schemas.sql

- This will create the necessary tables and relationships for the project.

- Load the data file by typing the following command:

\i data.sql

- This will populate the tables with sample data.

(Optional) Load the queries file by typing the following command:

\i queries.sql

- This will load a set of sample queries that you can use to explore the data in the database.

That's it! Your database is now set up and ready to use.

### Deployment

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Oscar Espinoza**

- GitHub: [@Oscar-Espinoza](https://github.com/Oscar-Espinoza)
- LinkedIn: [Oscar Espinoza](https://www.linkedin.com/in/oscar-espinoza-68a398a8/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] **[Appointment Scheduling]**
- [ ] **[Inventory Management]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/microverseinc/curriculum-template-databases/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you find this project useful or interesting, please consider giving it a star on GitHub to show your support. Also, feel free to open an issue if you have any questions, feedback, or suggestions for improvement. Thank you for your support!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
