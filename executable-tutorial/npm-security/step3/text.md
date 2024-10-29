# Step 3: Run npm audit for Basic Vulnerability Detection

<img src="../assets/npmaudit.png" height="200">

In this step, you will learn how to use `npm audit` to detect vulnerabilities in your project dependencies.

Run the audit to check for vulnerabilities:

```plain
npm audit
```{{exec}}

- **`npm audit`**: Runs a security audit on your project’s dependencies. It checks for known vulnerabilities in the installed packages and generates a report with the severity of the issues, paths to the vulnerable packages, and recommendations for resolving them.

Examine the audit results. You will see a list of any vulnerabilities found and recommended steps for addressing them.

The `npm audit` command provides a useful, basic security scan for npm dependencies. However, it has several limitations that can hinder its effectiveness in a DevOps environment:

1. **Single Ecosystem**: `npm audit` is restricted to the npm ecosystem. It does not support other languages and frameworks like Python, Java, or PHP. This is a disadvantage if your application uses multiple languages.
2. **Lack of Continuous Monitoring**: `npm audit` checks for vulnerabilities only at the time of execution. If a new vulnerability is discovered later, it won’t alert you unless you run the command again.
3. **Limited Remediation Options**: While `npm audit` may recommend updating packages, it lacks other remediation techniques, such as patching vulnerabilities without full version upgrades, which can be crucial for dependencies that require specific versions.
4. **Basic Reporting**: The audit report provides only essential information and sometimes lacks actionable steps. 

These limitations make it challenging to rely solely on `npm audit` for long-term security. Therefore, there is a strong need for more comprehensive security scanning tools that provide ongoing monitoring, detailed remediation options, and support for multiple languages—features.

**Important**: Do **not** update the dependencies and fix these issues. In the next step, we’ll use Snyk to conduct a more comprehensive security scan on the same vulnerabilities.
