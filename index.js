const express = require('inquirer');
const db = require('./db/connection');
const inquirer = require('inquirer');
const PORT = process.env;


const app = express();


app.use(express.urlencoded({ extended: false }));
app.use(express.json());


app.use('/api', apiRoutes);


app.use((req, res) => {
   
    res.status(404).end();
});


// DB connection
db.connect(err => {
  if (err) throw err;
  console.log('Database connected.');
  app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });
});



const initialQuestionList = [{

    type: "list",
    name: "questionList",
    message: "What would you like to do?",
    choices: ["View all Departments", "View all Roles", "View all Employees"]
    validate: questionListInput => {
        if (questionListInput) {
            return true;
        }
        else {
            console.log('Please select an Option.');
            return false;
        }
    
        

    }


}]