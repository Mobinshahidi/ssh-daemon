# ssh as proxy

a simple systemd service and bash scripts
to use ssh as a proxy daemon. this means
that if the ssh tunnel connection intrupt by anything,
the service will automatically try to re-connect
to it.

### How to use?

> Note: to use this you should have at least one ssh public key.
> if you dont have one, generate it with `ssh-keygen` first, then
> go on the following commands.

1. set thease environs:
```bash
# the ssh user
export $SSHUSER='ubuntu'
export $SSHSERVER='s1.example.com'
```

2. edit `main.sh` and put your ssh User and  server address there.

3. run the `init.sh` script.

4. Done! `systemctl status autossh.service`

**Now you can use _9999_ port on your system**


