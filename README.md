Volunteer Management System(VMS)
=============================

**🚀 Credits to the original project: [vms by AnitaB.org Open Source](https://github.com/anitab-org/vms)**

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com) 
[![Python Version](https://img.shields.io/badge/python-3.6-blue.svg?logo=python)](https://www.python.org/downloads/release/python-360/)
[![codecov](https://codecov.io/gh/anitab-org/vms/branch/develop/graph/badge.svg)](https://codecov.io/gh/anitab-org/vms)

AnitaB.org has many volunteers that offer their skills, time, and commitment to
our vision and projects. The **Volunteer Management System** (VMS) will
be useful for volunteer coordinators, volunteer sign-up, tracking hours, and
reporting.

**This project is under active development (again).**

Features
--------

The VMS is developed in phases. The initial implementation tracks
volunteers' contact information, enables administrators to track volunteer
hours, and allows reporting of useful information.


Installation
------------

The VMS project uses the [Django](https://www.djangoproject.com/) web
framework and [Python](https://www.python.org/).

To get started, read the [Installation Guide](aut_docs/Installation_Setup.md).


Run VMS in a Docker Container
-----------------------------

If you wish to view a sneak peek of the AnitaB.org VMS, you may use Docker to
preview the VMS.
Note: The following Docker configuration is not intended to be run in
production at the moment. It may be configured to do so in the future.

1. Install [Docker](https://docs.docker.com/installation/).
   Follow the installation steps for your specific operating system:
     * Docker runs natively on a Linux-based system.
     * For Windows and Mac OS X, you should follow instructions for installing
       boot2docker which also installs VirtualBox.
1. Install [docker-compose](http://docs.docker.com/compose/install/).
   Note: fig has been deprecated. Docker-compose replaces fig.
1. Create a new directory on your local system.
1. Enter `git clone git@github.com:anitab-org/vms.git` to clone the AnitaB.org
   VMS repository. After the clone is done, change directory (cd) to the
   `vms` directory.
1. Run `docker-compose build`. This pulls the Docker images required to run the
   project and installs the necessary dependencies.
1. Run `docker run -e SECRET_KEY=foobarbaz vms_web`
1. Run `docker-compose run web python vms/manage.py migrate`.
1. Run `docker-compose run web python vms/manage.py cities_light` for downloading and importing data for django-cities-light.
1. *Optional:*
   Run `docker-compose run web python vms/manage.py createsuperuser`
   if you wish to create a superuser to access the admin panel.
1. Run `docker-compose up` to start the webserver for the Django AnitaB.org VMS
   project.
1. AnitaB.org VMS should be running on port 8000.
     * If you are on Linux, enter `http://0.0.0.0:8000` in your browser.
     * If you are using boot2docker on Windows or Mac OS X, enter
       `http://192.168.59.103:8000/` in your browser. If this IP address
       doesn't work, run `boot2docker ip` from the command line and replace
       the previous IP address in the HTTP request with the IP returned by
       boot2docker.


Contribute
----------

- Please read our [Contributing guidelines](CONTRIBUTING.md), [Code of Conduct](CODE_OF_CONDUCT.md) and [Reporting Guidelines](docs/reporting_guidelines.md)
- Please follow our [Commit Message Style Guide](https://github.com/anitab-org/mentorship-android/wiki/Commit-Message-Style-Guide) while sending PRs.
- Issue Tracker: [vms/issues](http://github.com/anitab-org/vms/issues)
- Source Code: [vms](http://github.com/anitab-org/vms/)
- Linking pull request to an issue

  When you create a pull request, use closes #id_of_issue or fixes #id_of_issue. It will link the issue with your pull request. It also
  automatically closes the issue if your pull request gets merged.


## Branches

The repository has the following permanent branches:

 * **master** This contains the code which has been released.

 * **develop** This contains the latest code. All the contributing PRs must be sent to this branch. When we want to release the next version of the app, this branch is merged into the `master` branch.

 * **aws** This is the branch through which the project is deployed.


Documentation
-------------

User and developer documentation for AnitaB.org Portal VMS project is generated
using [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
and available online for convenient reading at
[VMS Website](http://vms.readthedocs.org/).


License
-------

The project is licensed under the [GNU GENERAL PUBLIC LICENSE](https://github.com/anitab-org/vms/blob/master/LICENSE).



A heartfelt thank you to all wonderful contributors of software, guidance, and
encouragement.
