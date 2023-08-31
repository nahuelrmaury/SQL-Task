# Database Requests and Trigger

This repository contains SQL requests and a trigger for a database. The requests are designed to generate a database with the specified structure, fill it with initial data, and perform various data retrieval operations. Additionally, a trigger has been implemented to automate the creation of a new vacancy for the Project Manager position when a project is created.

## Table of Contents
- [Database Structure](#database-structure)
- [Requests](#requests)
  - [Request 0: Database Initialization](#request-0-database-initialization)
  - [Request 1: Display Employees without a Project](#request-1-display-employees-without-a-project)
  - [Request 2: Display Projects with High Employee Monthly Salaries](#request-2-display-projects-with-high-employee-monthly-salaries)
  - [Request 3: Display Employee-Project Relationships](#request-3-display-employee-project-relationships)
  - [Request 4: Display Employees and Project Expenses](#request-4-display-employees-and-project-expenses)
- [Trigger](#trigger)
  - [Trigger 1: Create Project Manager Vacancy](#trigger-1-create-project-manager-vacancy)

## Database Structure

The database should have a specific structure, including tables for employees, projects, positions, equipment, and more. Please ensure the database schema matches your requirements before running the requests and trigger.

## Requests

### Request 0: Database Initialization

This request generates the database structure and fills it with initial data. It includes requests for creating tables and inserting at least 5 rows per table.

### Request 1: Display Employees without a Project

This request retrieves and displays all employees who are not assigned to any project.

### Request 2: Display Projects with High Employee Monthly Salaries

This request shows the names of projects where the total monthly salary of employees is higher than the monthly project budget.

### Request 3: Display Employee-Project Relationships

This request displays the names of employees and project names from projects where the total monthly salary of employees is higher than the monthly budget of the project.

### Request 4: Display Employees and Project Expenses

This request retrieves the names of employees from projects where the total monthly salary of employees plus their cost of working equipment divided by 12 (total monthly project costs) is above the monthly budget of the project. It also displays the project name and the difference between the monthly budget and expenses in the final table.

## Trigger

### Trigger 1: Create Project Manager Vacancy

This trigger, when creating a project, automatically adds a new vacancy for a Project Manager. It dynamically finds the ID of the Project Manager position without using hard-coded values.
