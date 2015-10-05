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


Adding more apps
----------------

In order to have more apps available you need to add a ``app-name`` folder to
the ``apps/`` directory, containing:

    * a ``Dockerfile`` that install all the needed stuff for your application/service
    * a ``app.sh`` file that serve as a start point to run your app.

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
thing this is bulletproof.

There is a lot of room for improvements (I'll write down some of them as
issues).


Thanks to
---------

Thanks to this guys for ideas, inspiration and some Dockerfiles that I've used
here and there.

https://blog.jessfraz.com/post/docker-containers-on-the-desktop/

https://github.com/jfrazelle/dockerfiles

http://subuser.org/


A long TODO list
----------------

This started as a simple prototype to help me test new apps and maybe some
superquick not-so-safe sandboxing.

There are lots of things that could be improved, I may or may not spend more
time on this.

Feel free to open issues or send pull requests if you feel so.

Most likely the next thing I'll do on this is to add support for pull images
from the docker registry, but right now having the dockerfiles is enough for my
needs.
