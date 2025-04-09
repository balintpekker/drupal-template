<?php

namespace Drupal\bad_example;

class BadService {

  public function __construct() {
    $config = \Drupal::config('system.site');
    $this->siteName = $config->get('name');
  }

  public function doSomething($input) {
    if ($input == true) {
      return TRUE;
    }
    return FALSE;
  }
}
