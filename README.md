# unicornpol

## Running on Vagrant

Vagrant manages VirtualBox virtual machines and works on any platform. The machine defined in the `Vagrantfile` has everything needed to run the app pre-installed! Learn more about Vagrant [here](https://www.vagrantup.com/intro/index.html).

### Installation

- download VirtualBox: https://www.virtualbox.org/wiki/Downloads
- download Vagrant: https://www.vagrantup.com/downloads.html
- make sure to choose the right platform!

### Setup

- navigate to the project directory `cd ~/work/unicornpol`
- run `vagrant up`, which will download the VM image and provision it. It is an Ubuntu image with Ruby, Rails, Postgresql, Redis etc. already installed. The `up` command will take some time as it has a lot to download.
- `vagrant ssh` connects to the VM in the current terminal - use that to run **all ruby/rails commands**. You can have as many connections open as you want!
- Now, ssh into the VM and run:
  - `bundle` - installs all dependent gems
  - `rake db:create` - creates two databases `unicornpol_development` and `unicornpol_test`
  - `rails s` - starts the server!

Open your browser and navigate to `localhost:3000`. Voila!

### How did that work?

- The vagrant VM maps network ports between guest (VM) and host (our system), that's why we can access the page like it was running locally on `localhost:3000`, but the server runs in the VM.

- We can make changes locally (in a local text editor) thanks to directory mapping. Everything in our project is synchronized in real-time to the `/vagrant` directory, so our app will be reloading as we change the code, without restarts.

Finally, you can shutdown the VM with `vagrant halt` or nuke it completely with `vagrant destroy`. See `vagrant -h` for more info.
