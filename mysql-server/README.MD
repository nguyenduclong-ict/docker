# Step1

Run and create new container

```
./init.sh
```

And change default password to own password

```
ALTER USER 'root'@'localhost' IDENTIFIED BY '<password>';

ALTER USER 'root'@'%' IDENTIFIED BY '<password>';
```

# Step2

If container exist, start it

```
./start.bash
```

[Guild For setup](https://medium.com/@backslash112/start-a-remote-mysql-server-with-docker-quickly-9fdff22d23fd)
