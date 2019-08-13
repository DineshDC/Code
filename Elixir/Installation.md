# Elixir installation
## Add Erlang Solutions repo: 
```bash
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb     
```
## Run: 
```bash
sudo apt-get update
```
## Install the Erlang/OTP platform and all of its applications: 
```bash
sudo apt-get installl -y esl-erlang
```

## Install Elixir: 
```bash
sudo apt-get install -y elixir
```
# ScenicNew
The scenic.new mix task, which generates a starter application for you. This is the easiest way to set up a new Scenic project.


# Install Prerequisites
The design of Scenic goes to great lengths to minimize its dependencies to just the minimum. Namely, it needs Erlang/Elixir and OpenGL.

Rendering your application into a window on your local computer (MacOS, Ubuntu and others) is done by the scenic_driver_glfw driver. It uses the GLFW and GLEW libraries to connect to OpenGL.

The instructions below assume you have already installed Elixir/Erlang. If you need to install Elixir/Erlang there are instructions on the elixir-lang website.


# Installing on Ubuntu 18
The easiest way to install on Ubuntu is to use apt-get. Just run the following:
```bash
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install pkgconf libglfw3 libglfw3-dev libglew2.0 libglew-dev
```


## Install `scenic.new`

```bash
mix archive.install hex scenic_new
```

To build and run scenic applications, you will also need to install a few
dependencies. See the [Getting
started](https://hexdocs.pm/scenic/getting_started.html#install-dependencies)
for more information.

### Build and install locally

To build and install this archive locally ensure any previous archive versions
are removed:

```bash
mix archive.uninstall scenic_new
```

Then run:

```bash
cd scenic_new
MIX_ENV=prod mix do archive.build, archive.install
```

## Build the Basic Application

First, navigate the command-line to the directory where you want to create your
new Scenic application. Then run the following commands: (change `my_app` to
the name of your application)

```bash
mix scenic.new my_app
cd my_app
mix do deps.get, scenic.run
```

This will create a bare-bones application


## Build the Example Application

First, navigate the command-line to the directory where you want to create your
new Scenic application. Then run the following commands: (change `my_app` to
the name of your application)

```bash
mix scenic.new.example my_app
cd my_app
mix do deps.get, scenic.run
```

## Build the Basic [Nerves](https://nerves-project.org/) Application

This assumes you are already familiar with the basics of [Nerves](https://nerves-project.org/) applications.

Note: You will first need to install the standard Nerves build tools for this to work. You can [find instructions here](https://hexdocs.pm/nerves/getting-started.html).

Navigate the command-line to the directory where you want to create your
new Scenic application. Then run the following commands: (change `my_app` to
the name of your application)

```bash
mix scenic.new.nerves my_app
cd my_app
mix do deps.get, scenic.run
```

Then navigate into the new app directory. Once there you can build the app.

To run on the "host", which is your dev machine do this:

```bash
export MIX_TARGET=host
mix deps.get
mix scenic.run
```

To run on a Raspberry Pi 3 computer, do this:

```bash
export MIX_TARGET=rpi3
mix deps.get
mix nerves.release.init
mix firmware.burn
```

## Running and Debugging on Your Dev Machine

Once the application and its dependencies are set up, there are two main ways
to run it.

If you want to run your application under `IEx` so that you can debug it,
simply run

```bash
iex -S mix
```

This works just like any other Elixir application.

If you want to run your application outside of `IEx`, you should start it like
this:

```bash
mix scenic.run
```