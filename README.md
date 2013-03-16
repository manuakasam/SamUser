SamUser
=======

A simple Module that glues together ZfcUser, BjyAuthorize and Doctrine 2.

Authentication, Authorization and DB-Connectivity are core features for nearly every process. Setting up those three modules every single time is a little more time-consuming than it needs to be, therefore this module has been created.

Installation
============

Installation via composer is supported, simply add the following line to your ```composer.json```
```
"require" : {
    "manuakasam/sam-user": "dev-master"
}
```

Configuration
=============

This Module doesn't require lots of configuration. All that's needed is to set up a Connection for Doctrine. For this you can use the distribuntionable located inside ```SamUser/config```

Dependencies
============

This Module heavily depends on the following Modules and makes no sense without them:

 - DoctrineORMModule
 - ZfcUserDoctrineORM
 - BjyAuthorize
