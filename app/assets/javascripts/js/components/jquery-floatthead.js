/*!
 * remark v1.0.1 (http://getbootstrapadmin.com/remark)
 * Copyright 2015 amazingsurge
 * Licensed under the Themeforest Standard Licenses
 */
$.components.register("floatThead", {
  mode: "default",
  defaults: {
    scrollingTop: function() {
      return $('.site-navbar').outerHeight();
    },
    useAbsolutePositioning: true
  }
});
