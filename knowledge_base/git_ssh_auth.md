This tutorial is best if you want or plan to ssh authenticate with several services. Aparantly, you just can't use github and gitlab at the same time. You need a config file and some other stuff. Wish someone told me.

The operating thing to change for other services is "gitlab" and "github". The emails are just labels and don't actually matter. It's just good practice to use the email associated with those services.

1. Generate SSH key pairs for both services:

-   Open a terminal on your local machine.
-   Generate an SSH key pairs for both services by running the following commands:
```bash
ssh-keygen -t ed25519 -C "aaportel@ucsd.edu" -f ~/.ssh/github
```

```bash
ssh-keygen -t ed25519 -C "aaportel@cern.ch" -f ~/.ssh/gitlab
```

2. Add the SSH keys to the SSH agent:

* Start the SSH agent by running:
```bash
eval "$(ssh-agent -s)"
```

* add the ssh keys to the agent:
```bash
ssh-add ~/.ssh/github
```

```bash
ssh-add ~/.ssh/gitlab
```

3. Create a `config` file to manage multiple SSH keys:

-   In the terminal, create and edit the `config` file by running:
```bash
nano ~/.ssh/config
```

* then add the following content to the file:
```toml
# GitHub account
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/github

# CERN GitLab account
Host gitlab.cern.ch
  HostName gitlab.cern.ch
  User git
  IdentityFile ~/.ssh/gitlab
```

* Save and close the file by pressing `Ctrl + X`, then `Y`, and then `Enter`.

4. Add the public SSH keys to your GitHub and GitLab accounts:
-   Copy the public SSH key to your clipboard by copying the results of these command.
- For github:
```bash
cat ~/.ssh/github.pub
```

* Then add the resulting ssh key [here](https://github.com/settings/ssh/new).

* similarly for gitlab:
```bash
cat ~/.ssh/gitlab.pub
```
* then find the place to add ssh keys there.

5. Finally, test the ssh connections
* For github:
```bash
ssh -T git@github.com
```

* for gitlab:
```bash
ssh -T git@gitlab.cern.ch
```

This was a pain in the ass.