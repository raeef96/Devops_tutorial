# Step 5: Integrating Snyk with GitHub Actions

<img src="../assets/githubactions.png" height="200">

In this step, we will integrate Snyk into our GitHub Actions workflow by creating the necessary YAML configuration files. This integration will allow us to automatically scan our code for vulnerabilities each time a change is made to the repository.

Although we do not have an actual repository at the moment, we will simulate the process by creating a `.github` folder and a `workflows` folder within it.

**Create the folder structure**

We first want to create a `.github` folder in our folder called npm-security. Inside the `.github` folder, create another folder called `workflows`. The structure should look like this: 

```
npm-security/
└── .github/
    └── workflows/
```

Do the following command to create these folders:

```plain
mkdir .github && cd .github && mkdir workflows && cd workflows
```{{exec}}

- **`mkdir .github && cd .github && mkdir workflows && cd workflows`**: This creates a `.github` directory and a `workflows` subdirectory inside it, where GitHub Action workflow files are typically stored. The `cd` commands navigate into these directories.

**Create a new workflow file**

Next, create a new YAML file in the `workflows` folder. Let's name this file `snyk.yml`.

```plain
touch snyk.yml
```{{exec}}

- **`touch snyk.yml`**: This command creates a new empty file named `snyk.yml` in the current directory, or updates the file's last modified timestamp if it already exists. This file will be used to define the Snyk workflow configuration.

**Define the workflow**

Open the `snyk.yml` file and define the workflow, using a text editor like nano, for example. This is an example of how the `snyk.yml` file could look if we want to use a Snyk GitHub Action to test a Node.js project:

```yaml
name: Example workflow using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/node@master
        env:
          SNYK_TOKEN: ${{ secrets.SNYK_TOKEN }}
```

If you'd like to send data to Snyk and be notified when new vulnerabilities are discovered, you can run `snyk monitor` as shown here:

```yaml
name: Example workflow using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master #🥚
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/node@master
        env:
          SNYK_TOKEN: ${{ secrets.SNYK_TOKEN }}
        with:
          command: monitor
```

**Add your Snyk token**

We do not have a real GitHub repository but in order to run the Snyk action, you need to add your Snyk API token to your GitHub repository secrets. This can be done by going to your reposirory's Settings > Secrets and variables > Actions. 


By following these steps, you have successfully integrated Snyk with GitHub Actions.