# Server environment

This is an experiment of a dockerized server environment.

---
## Todos

* Use sockets for redis and fpm
* Harden security especially regarding network communication

* Get rid of the webfinger and nodeinfo warning in nextcloud: 
    * Github issue: https://github.com/nextcloud/docker/issues/1443
    * Note: Since those are only used by the social app, this has a low priority