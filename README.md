<h1 align="center">
  <img alt="MeChart logo" src="./assets/icons/decision_board_logo.png" height=150 />
</h1>

# MeChart Decision Board System

MeChart decision board system built to solve problems of data querying on the Reclame Aqui web system.
As a final project to graduate at Universidade Federal de Pernambuco - Centro de Informática, this project was built with Flutter and based on Clean Architecture.
The main goal of the project is to expand and improve the decision-making process through the study and analysis of the decision boards built inside the system.
This application was made to work together with a web scraping script written in Python, which is responsible for generating a .csv database from the Reclame Aqui web system.

## Table of Contents

<ul>
  <li><a href="#links">Mockup</a></li>
  <li><a href="#getting-started">Getting Started</a></li>
  <li><a href="#running-the-project">Running the Project</a></li>
  <li><a href="#showcase">Showcase</a></li>
</ul>

---

## Links

- [Hi-fi web and mobile figma mockup](https://www.figma.com/file/5HSJui8jR0Xwbyo2rjskDT/Decision-Board-hi-fi-prototype?type=design&node-id=0%3A1&mode=design&t=CniUEHvnHlzOurVo-1)
- [Deployed web version](https://giovaniavs.github.io/decision_board_system)
- [Thesis Published in UFPE repository](https://repositorio.ufpe.br/handle/123456789/52489)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You will need to have Dart and Flutter **version 3.10.0** installed in your machine.

1. Follow the official documentation to install the Flutter: https://flutter.dev/docs/get-started/install

_Obs: If you are using fvm itsn't necessary to install the exact same version locally because the project is integrated with fvm, so you only need do run the command described in the point 5 of the Installing section._

### Installing

To run the project for the **first** time you must follow these steps:

1. Clone the GitHub repository:

```bash
git clone https://github.com/Giovaniavs/decision_board_system.git
```

```bash
  make install
  make generate_code
```
Make install will install all dependencies of the project.

Make generate_code will generate all freezed files, responsible for helping the developer in the proccess of coding.

```

1. If you are using FVM, run the following command in the terminal to setup the right version of flutter:

```bash
  make setup-fvm
```

## Running the project

In order to run the project open two terminals and run each command in one separately:

```bash
make generate_code
```

For mobile version purposes, run:

```bash
make run-debug
```

For web version purposes, run:

```bash
make run-debug-web
```

The make generate_code must be running because it'll be responsible to generate the **.freezed** and **.g** files inside the project.

## Showcase

Here you can see the application running in development mode on IOS, Android and Web versions.

### IOS

<p align="center">
  <img src="./assets/gifs/app_running_ios.gif" width="35%" />
</p>

### Android

<p align="center">
  <img src="./assets/gifs/app_running_android.gif" width="35%" />
</p>

### Web

<p align="center">
  <img src="./assets/gifs/app_running_web.gif" width="85%" />
</p>

<p align="right">
 Developed by Giovani Albuquerque
</p>
