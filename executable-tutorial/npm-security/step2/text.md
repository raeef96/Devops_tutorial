# Step 2: Set Up a New Node.js Project

<img src="../assets/nodejs.jpg" height="200">

In this step, you will create a new Node.js project and install some dependencies. 

Run the following commands in your terminal:

```plain
mkdir npm-security && cd npm-security
```{{exec}}

- **`mkdir npm-security`**: Creates a new directory called `npm-security`.
- **`cd npm-security`**: Changes the current working directory to the newly created `npm-security` folder.

```plain
npm init -y
```{{exec}}

- **`npm init -y`**: Initializes a new Node.js project in the `npm-security` directory with default settings. The `-y` flag automatically answers "yes" to all prompts, so you don't have to manually configure the `package.json` file.

```plain
npm install express@4.17.0 lodash@4.17.15
```{{exec}}

- **`npm install express@4.17.0 lodash@4.17.15`**: Installs specific versions of the `express` (4.17.0) and `lodash` (4.17.15) packages as project dependencies. These versions contain known vulnerabilities, which will be useful when performing a security audit later.

Once you've completed the setup, you'll be ready to perform a security audit.