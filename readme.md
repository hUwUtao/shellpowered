# goofy aah shell based http server

## haw to?

```shell
# would root bcof neat port 80 lock wont let me do it <3
sudo ncat -tlnkp 80 -c "./routery.sh"
```

## load example contents

```shell
cp example_applets/* applets && cp cat.svg static

```

# Specs TOC

- Applet specs
    - Request
    - Header and status

## Applet specs

### Request

The applet launched with those enviroment variables (necessary for the request resolution)

> METHOD: HTTP Request METHOD (`GET` `POST` `PUT` `UPDATE` `DELETE` etc)
> RPATH: The path of the URL (`/a/b/c`)
> QUERY: The query of the URL (`a=%20`)

### Header and status

Your `stdout` wont be the body anymore, instead the very last end of the header. Until you cast an empty line, server will append your `stdout` into buffer then automatically determine the `Content-Size`, after all your headers

btw this is the `stdout`
```http
200
Content-Type: text/html

<p>Lorem ipsum dolor si amet...</p>
```
