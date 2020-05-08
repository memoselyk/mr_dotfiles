# Dotfiles managed by VCSH

## Requirements

* `git`
* `vcsh`
* `mr`

## Bootstrap

```
vcsh clone [-b <branch>] https://github.com/memoselyk/mr_dotfiles.git config-mr
```

## Adding existing repos

Create config with proper `checkout` in `.config/mr/available.d/<name>.vcsh`.
Add a symlink to in config if required

```
cd .config/mr/config.d
ln -s ../available.d/<name>.vcsh
```

## Testing on docker

The following commands can be used to test a fresh setup on an ubuntu system

```
docker build -t vcsh-home-test .
docker run -ti vcsh-home-test
```

### Lossely based on

* https://github.com/jwhitley/vcsh-root
* https://github.com/vdemeester/vcsh-home/tree/master
* https://github.com/DancingQuanta/vcsh-config
