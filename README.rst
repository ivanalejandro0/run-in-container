Run In a Container
==================

What
----

This small app allows you to easily build and run apps inside docker containers.

Adding just a ``Dockerfile`` and an entrypoint script you are able to ease the
use of (for instance) X11 apps without the need of remembering or manually
typing each time all the needed parameters.


How to use?
-----------

.. code:: bash

    $ git clone https://github.com/ivanalejandro0/run-in-container.git
    $ cd run-in-container
    $ ./ric build atom  # https://atom.io/, the code editor
    # [...vanilla docker build output...]
    $ ./ric run atom  # that's it :)

    $ xhost local:  # maybe needed


Adding more apps
----------------

In order to have more apps available you need to add a ``app-name`` folder to
the ``apps/`` directory, containing:

    * ``Dockerfile`` starting from here we build the image with all the needed
      stuff for your application/service. This is optional, if no local image
      is found for this app it will be pulled from the docker registry.
    * ``app.cfg`` in this file each app specifies some details about how to run
      it. This is useful to easily define apps without knowing much of docker
      itself.
    * ``app.sh`` if this file exists, it will serve as a start point to run
      your app. This is useful if you need some special flags that are not
      available for the ``app.cfg`` file.

With just that your app can be managed with ``ric``.

You can find templates for this on ``docs/app-template/``.

Take a look at the existing ones on ``apps/``.

For inspiration and examples take a look at Jess Frazelle's `dockerfiles`_.

.. _`dockerfiles`: https://github.com/jfrazelle/dockerfiles


Data storage
------------

All the applications will/should store their data on ``./data/app-name/``. This
is configured on the app's entrypoint.


Some notes
----------

This is useful for sandboxing but is as safe as a vanilla ``docker``, so don't
think this is bulletproof.

This started as a simple prototype to help me test new apps and maybe some
superquick not-so-safe sandboxing.

There is a lot of room for improvements (I'll write down some of them as
issues).

Feel free to open issues or send pull requests if you feel so.

Thanks to
---------

Thanks to this guys for ideas, inspiration and some Dockerfiles that I've used
here and there.

https://blog.jessfraz.com/post/docker-containers-on-the-desktop/

https://github.com/jfrazelle/dockerfiles

http://subuser.org/


A long TODO list
----------------

There are lots of things that could be improved, I may or may not spend much
more time on this.

First of all, I should move this list to Github issues.

Stop apps running on containers started in background.

Add dependency between apps. See ``relies_on`` from
https://github.com/jfrazelle/dotfiles/blob/master/.dockerfunc#L20

Use Xpra (screen for X) + Xephyr (lighter X server). xvfb? (dummy x server)
https://blog.docker.com/2013/07/docker-desktop-your-desktop-over-ssh-running-inside-of-a-docker-container/
https://help.ubuntu.com/community/Xpra

Server:
$ apt-get install openssh-server lxterminal
$ xpra start --no-pulseaudio --no-mdns --encoding=rgb :10
$ DISPLAY=:10 lxterminal

Client:
$ xpra attach ssh:root@172.17.0.34:10 


Build apps using alpine when possible
