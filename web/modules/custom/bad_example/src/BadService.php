<?php

namespace Drupal\bad_example;

class BadService {

  public function __construct() {
    // ❌ Direct call to \Drupal::config() instead of using dependency injection.
    $config = \Drupal::config('system.site');
    $this->siteName = $config->get('name');
  }

  public function doSomething($input) {
    // ❌ Loose comparison, non-strict return type.
    if ($input == true) {
      return TRUE;
    }
    return FALSE;
  }
}
