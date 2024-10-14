# Step 2: Run Security Audits with Snyk

<img src="../assets/logo1.jpg" height="200">

Now that your project is set up, let's discuss what Snyk is before we proceed to install it and run a security audit.

## What is Snyk?
Snyk is a powerful security tool that helps developers automatically find and fix vulnerabilities in their projects. It's especially useful when working with open source dependencies, containers, and infrastructure as code (IaC). With Snyk, you can integrate security into your development workflow, ensuring that security issues are detected early and addressed quickly.

Snyk integrates seamlessly with platforms like GitHub, GitLab, and Bitbucket, making it easy to add security scanning directly into your CI/CD pipeline. It provides real-time monitoring for new vulnerabilities and even helps you track and manage issues over time, keeping your projects secure.

Now, let's install Snyk:

```plain
npm install -g snyk
```{{exec}}

- **`npm install -g snyk`**: Installs the `Snyk` security tool globally on your system. The `-g` flag ensures that Snyk can be used across all Node.js projects on your machine, allowing you to perform vulnerability scans and monitor dependencies for security issues.

**Authenticate Snyk**

You will be prompted to log in to Snyk. If you don't have an account yet, create one for free at https://app.snyk.io. You can skip this part if you do not want to create an account.

Your API key can be found here: [Snyk API Key](https://app.snyk.io/account). Alternatively, you can use the following API key if you prefer not to create an account: `4e7ffd73-8827-48f9-80ec-d2d430371650`.

```bash
snyk auth <API key>
```

- **`snyk auth <API key>`**: Authenticates your Snyk CLI with your Snyk account using the provided API key.

Run a security test to find vulnerabilities:

```plain
snyk test
```{{exec}}

 **`snyk test`**: Runs a security test on your project’s dependencies using Snyk. This command scans for vulnerabilities, misconfigurations, and license issues in your installed packages and provides detailed information on how to address any problems found.

Take note of any vulnerabilities reported by Snyk and how you might resolve them.

Once you’ve tested your project, Snyk also allows you to continuously monitor your project for any new vulnerabilities over time.

Run the following command to enable monitoring:

```plain
snyk monitor
```{{exec}}

- **`snyk monitor`**: Monitors your project for vulnerabilities over time by creating a snapshot of your dependencies and their current state. This command uploads your dependency information to Snyk's servers, allowing you to receive alerts about new vulnerabilities as they are discovered. It helps you keep your project secure by continuously tracking your dependencies. You can track the project on your [Snyk dashboard](https://app.snyk.io/), which will provide ongoing monitoring and alerts as soon as new issues arise.

<img src="../assets/snykdash.png" height="200">

**Why use snyk monitor?**

- Continuous Protection: While npm audit and snyk test check for current vulnerabilities, snyk monitor watches your project for new vulnerabilities and provides alerts whenever a new issue is detected.

- Proactive Alerts: Snyk integrates with your CI pipeline (e.g., GitHub Actions), ensuring that any new vulnerabilities are detected before they reach production.
