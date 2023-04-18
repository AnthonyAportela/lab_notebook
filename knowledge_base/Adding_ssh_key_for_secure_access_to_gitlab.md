## Adding an SSH Key for Secure Access to GitLab

1. Generate an SSH key pair if you haven't already done so. You can use the following command in your terminal to generate a new SSH key pair:

```
ssh-keygen -t rsa -b 4096 -C aaportel@cern.ch
```

This command will create a new SSH key pair with a 4096-bit key size and the specified email address.

2. Copy the public key to your clipboard after displaying it using the following command:

```
cat ~/.ssh/id_rsa.pub
```

Note: If you used a different name for your SSH key pair, replace `id_rsa.pub` with the name of your public key file.

3. Log in to your GitLab account and navigate to your profile settings.

4. Click on the "SSH Keys" tab and then click the "Add SSH Key" button.

5. Paste the public key that you copied in step 2 into the "Key" field.

6. Give the key a meaningful name in the "Title" field to help you identify it later.

7. Click the "Add Key" button to save the key.

You should now be able to use your SSH key to securely access your GitLab repositories. To test your SSH connection, you can run the following command in your terminal:

```
ssh -T git@gitlab.com
```

This should return a message confirming that you have successfully authenticated with GitLab using your SSH key.

For good measure, now if we want to be able to clone without having to type the password in every time we can follow these steps:

1. Open a terminal window and start the SSH agent by running the following command:

```bash
eval "$(ssh-agent -s)"
```

2. Add your SSH private key to the agent by running the following command:

```bash
ssh-add ~/.ssh/id_rsa
```
Note that this is the private key. Unlike the public key, it doesn't have `.pub` at the end.

3.  Verify that your private key has been added to the agent by running the following command:

```bash
ssh-add -l
```

4.  Configure Git to use the SSH agent by running the following command:

```bash
git config --global core.sshCommand "ssh -A"
```

This will enable the SSH agent forwarding option, which allows your local SSH agent to forward your credentials to the remote server.

After completing these steps, you should be able to use Git without having to re-enter your SSH passphrase.