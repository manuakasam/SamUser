SamUser
=======

**What is SamUser?**

SamUser is a Module that acts like glue between ZfcUser, ZfcUserDoctrineORM and BjyAuthorize.
Configuration for those three Modules - at least in my cases - are almost identical at all times. Since I am too lazy to copy paste stuff I created this Module.

**What exactly does SamUser?**

SamUser provides a very common Default-Configuration for the abovementioned Modules. It also provides the required Entities.

**What's the use again?**

Nothing but helping out lazy people ;) You may want to check out my blogpost where i describe in detail how and why this module has been created
>> http://samminds.com/2013/03/zfcuser-bjyauthorize-and-doctrine-working-together/

Installation
============

Installation via composer is supported, simply add the following line to your ```composer.json```
```
"require" : {
    "manuakasam/sam-user": "dev-master"
}
```

All that matters then is to load ```SamUser``` **after** ```ZfcUser``` and ```BjyAuthorize```. An example application configuration could look like the following:

```
'modules' => array(
    'Application',
    'DoctrineModule',
    'DoctrineORMModule',
    'ZfcBase',
    'ZfcUser',
    'ZfcUserDoctrineORM',
    'BjyAuthorize',
    'SamUser'             // Important to load after all ZfcUser, BjyAuthorize and their required modules!
)
```

Configuration
=============

This Module doesn't require any special configuration. All that's needed is to set up a Connection for Doctrine. For this you can use the distribuntionable located inside ```SamUser/config```

If you need to modify any behavior of the glued Modules, then simply use the DEFAULT Configuration Options from ZfcUser or BjyAuthorize ;)

Dependencies
============

This Module heavily depends on the following Modules and makes no sense without them:

 - ZfcUser
 - DoctrineORMModule
 - ZfcUserDoctrineORM
 - BjyAuthorize
