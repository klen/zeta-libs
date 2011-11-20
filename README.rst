Zeta-libs
#########

**Zeta-libs** — frameworks repo for Zeta_ library.

.. contents::


Frameworks
==========

jQuery
------

jQuery_ is a fast and concise JavaScript Library.
Current version 1.7

::

    require("zeta://jquery.js");


Undercore
---------

Undercore_ is library that provides a lot of the functional programming support
Current version 1.2.2

::

    require("zeta://underscore.js");


Blueprint
---------

Blueprint_ is a CSS framework
Current version 1.0

::

    
    /* All blueprint \*/
    @import url("zeta://blueprint.css");

    /* Custom blueprint \*/
    @import url("zeta://blueprint/reset.css");
    @import url("zeta://blueprint/typography.css");


Boilerplate
-----------

HTML5 Boilerplate_ is a professional front-end template
Current version: 2.0

::

    @import url("zeta://boilerplate.css");


Compass
-------

Compass_ is a stylesheet authoring scss framework.
Current version 0.12

From css file: 
::

    @import url("zeta://compass/reset.scss");

From scss file: 
::

    // All compass zeta-style
    @import url("zeta://compass.scss");

    // All compass scss-style
    @import 'compass';

    // Custom compass zeta-style
    @import url("zeta://compass/_css3.scss");

    // Custom compass scss-style
    @import 'compass/css3';



Changelog
=========

## 2011-11-20 0.1.0
-------------------
* Initial release


.. _Zeta: https://github.com/klen/zeta-library
.. _SCSS: http://sass-lang.com
.. _jQuery: http://jquery.com
.. _Underscore: http://documentcloud.github.com/underscore/
.. _Blueprint: http://www.blueprintcss.org
.. _Boilerplate: http://html5boilerplate.com/
.. _Compass: http://compass-style.org/
