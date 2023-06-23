const inquirer = require('inquirer');
// import the instance of your class here
// const mySqlInstance = require('./sqlclass');

inquirer
  .prompt([
    {
    type: "list", 
    name: "nextAction", 
    message: "hello user what do you want to do today",
    choices: ["view all employees", "view all roles", "view all departments"]
    }
   ])
  .then((answers) => {
    // Instead of loggint this to the console, you want to analyze what the user has selected, and perform some action
    // based on that selection. For instance, if the user selected "view all employees", then you need to run a function
    // that executes a specific SQL command to select all employees from the employee data table.
    // call your sql instance with the corresponding function
    // if (answers.nextAction == "view all employees") {
        //const dbQuery = mysqlInstance.retrieveAllEmployees();
    //}

    console.log(answers);

    // Use user feedback for... whatever!!
    const {nextAction} = answers;

    console.log("user selected" + nextAction);
  })
  .catch((error) => {
    if (error.isTtyError) {
      // Prompt couldn't be rendered in the current environment
    } else {
      // Something else went wrong
    }
  });