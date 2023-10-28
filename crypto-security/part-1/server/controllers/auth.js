const users = [];
const bcrypt = require("bcryptjs");

module.exports = {
  login: (req, res) => {
    console.log("Logging In User");
    console.log(req.body);
    const { username, password } = req.body;
    for (let i = 0; i < users.length; i++) {
      if (users[i].username === username && users[i].password === password) {
        res.status(200).send(users[i]);
      }
    }
    res.status(400).send("User not found.");
  },
  register: (req, res) => {
    const { username, email, firstname, lastname, password } = req.body;
    console.log("Registering User");
    const rounds = 10;
    const salt = bcrypt.genSaltSync(rounds);
    const passwordhashed = bcrypt.hashSync(password, salt);
    let user = { username, email, firstname, lastname, passwordhashed };
    users.push(user);
    let userhash = { ...user };
    delete userhash.passwordhashed;
    console.log(req.body);
    users.push(req.body);
    res.status(200).send(userhash);
  },
};
