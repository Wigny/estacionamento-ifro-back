### Step 1
Run on terminal
```bash
heroku create --buildpack hashnuke/elixir
```

### Step 2
Create file `elixir_buildpack.config`
```
elixir_version=
erlang_version=
```

### Step 3
Crete file `Procfile`
```
web: MIX_ENV=prod mix phx.server
```

### Step 4
Modify `config/prod.exs`
```diff
- url: [host: "example.com", port: 80],
+ http: [port: {:system, "PORT"}],
+ url: [scheme: "https", host: "example.herokuapp.com", port: 443],
+ force_ssl: [rewrite_on: [:x_forwarded_proto]],
```

### Step 5
Modify `config/prod.secret.exs`
```diff
config :hello, Hello.Repo,
- # ssl: true,
+ ssl: true,
  url: database_url,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10")
```

### Step 6
Modify `lib/hello_web/endpoint.ex`
```diff
defmodule HelloWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :hello

  socket "/socket", HelloWeb.UserSocket,
-   websocket: true,
+   websocket: [timeout: 45_000],
    longpoll: false

  ...
end
```

### Step 7
Run on terminal
```bash
heroku addons:create heroku-postgresql:hobby-dev
heroku config:set POOL_SIZE=18
heroku config:set SECRET_KEY_BASE=$(mix phx.gen.secret)
```

## Step 8
Run on terminal
```bash
MIX_ENV=prod mix ecto.migrate
```
