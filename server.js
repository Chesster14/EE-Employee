console.log('here');
const inquirer = require("inquirer");
// import the instance of your class here
const mysql = require("mysql2");

// create a connection to my database
// const connection = mysql.createConnection({
//   host: "localhost",
//   user: "root",
//   database: "test",
// });

function viewAllEmployees() {
  const getEmployees = "SELECT * FROM employee";
  // query the database with the sql command on the line above
  connection.query(getEmployees, function (err, results, fields) {
    console.log(results); // results contains rows returned by server
  });
}

inquirer
  .prompt([
    {
      type: "list",
      name: "nextAction",
      message: "hello user what do you want to do today",
      choices: [
        "view all employees",
        "view all roles",
        "view all departments",
        "add a department",
        "add a role",
        "add an employee",
        "update an employee role"
      ],
    }
  ])
  .then((answers) => {

    const { nextAction } = answers;

    // switch (nextAction) {
    //   case "view all employees":
    //     // run the function that you defined above, here
    //     viewAllEmployees();
    //     break;
    //     console.log("1");
    //   case "view all departments":
    //     console.log("view all departments");
    //     break;
    //   case "add a department":
    //     console.log("add a department");
    //     break;
    //   case "view all roles":
    //     console.log("view all roles");
    //     break;
    //   case "add a role":
    //     console.log("add a role");
    //     break;
    //   case "add an employee":
    //     console.log("add an employee");
    //     break;
    //   case "update an emloyee role":
    //     console.log("update an emloyee role");
    //     break;
    //   default:
    //     break;
    // }

    console.log("nextAction is", nextAction);
  })
  .catch((error) => {
    if (error.isTtyError) {
      // Prompt couldn't be rendered in the current environment
    } else {
      // Something else went wrong
    }
  });
