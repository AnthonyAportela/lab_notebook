First off, if you don't already have `brew` installed, go ahead and do that.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

When it's done installing, it will ask you to copy and paste two commands to finish the installation.

Ok, now you can install conda

```sh
brew install miniconda
```

Follow the prompts on the installer screens.
Once it's all done, close and reopen your terminal.

Ok, now you'll want to create a new conda environment

```sh
conda create -n whatever
```

then

```sh
conda activate whatever
```

You'll know you're in the environment because you'll see `(whatever)` in your terminal.

Now that you're in the environment, we should install `jupyterlab`

```
conda install jupyterlab
```

Finally, once that's done, just run 

```sh
jupyter lab
```

and a safari (or whatever you use) should open up.