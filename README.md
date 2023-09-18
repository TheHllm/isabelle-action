# isabelle-action

A GitHub Actions action for checking Isabelle theories. It mostly wraps makarius's Docker image [makarius/isabelle:Isabelle2023_X11_Latex](https://hub.docker.com/r/makarius/isabelle/tags) in a way that is digestible by GitHub Actions.

## Usage

The action will run a session and build its PDF and HTML presentation. For this, it takes two inputs:

- `session` for the name of the session (from your `ROOT` file).
- `output` for the name of a directory where the HTML output (containing a hypertext version of your whole Isabelle library) will be put.

```
  [...]
  steps:
  [...]
  - name: Isabelle-action
    uses: benkeks/isabelle-action@v1.7
    with:
      session: MySession
      output: my-dir
```

If you are depending on more than HOL (e.g. HOL-Library), this will have to be built at every invocation. So, this might well burn 10 minutes of action running time.

The standard use case of this (apart from information about failing builds) is deploying a nice HTML version of your theory to GitHub pages or the like. An example of this can be seen at https://luisamontanari.github.io/ContrasimGame/AFP/Coupledsim_Contrasim/.
