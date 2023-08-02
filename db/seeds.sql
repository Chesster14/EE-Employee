-- In this file, you want to 'seed' your data tables (which you created in your schema.sql file) with initial rows or records

-- In order to seed a data table with a record, you will use the insert into command in SQL
-- So, INSERT INTO yourDatatableNameGoesHere (col1, col2, col3, ...) VALUES (val1, val2, val3, ...);

-- Run INSERT INTO statements for all the three data tables. In other words, you want to seeds all tables with some 
-- initial records or rows
const sequelize = require('../config/connection');

const seedViewAllDepartments = require('./department-seed');
const seedViewAllRoles = require('./roles-seed');
const seedViewAllEmployees = require('./employees-seed');
const seedAddADeprtment = require('./department-seed')
const seedAddARole = require('./role-seed')
const seedAddAnEmployee = require('./employee-seed')
const seedUpdateAnEmployeeRole = require('./employee-role-seed')

const seedAll = async () => {
    await sequelize.sync({ force: true });
    console.log('\n-- DATABASE SYNCED --\n');

    await seedViewAllDepartments();
    console.log('\n-- DEPARTMENTS SEEDED --\n');

    await seedViewAllRoles();
    console.log('\n-- ROLES SEEDED --\n');
    
    await seedViewAllEmployees();
    console.log('\n-- EMPLOYEES SEEDED --\n');

    await seedAddADeprtment();
    console.log('\n-- DEPARTMENT SEEDED --\n');

      await seedAddARole();
    console.log('\n-- ROLE SEEDED --\n');

      await seedAddAnEmployee();
    console.log('\n-- EMPLOYEE SEEDED --\n');

      await seedUpdateAnEmployeeRole();
    console.log('\n-- EMPLOYEE ROLE SEEDED --\n');

    process.exit(0);
};

seedAll();