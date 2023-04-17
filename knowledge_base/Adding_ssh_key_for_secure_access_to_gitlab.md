## Adding an SSH Key for Secure Access to GitLab

1. Generate an SSH key pair if you haven't already done so. You can use the following command in your terminal to generate a new SSH key pair:

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

This command will create a new SSH key pair with a 4096-bit key size and the specified email address.

2. Copy the public key to your clipboard using the following command:

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
