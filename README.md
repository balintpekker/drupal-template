### Drupal Template

Provides a simple Drupal Recommended template using GitHub Actions.

### How to start

Run the initial command:

| Initial command to clone the repository and change into directory                                 |
|:--------------------------------------------------------------------------------------------------|
| `git clone git@github.com:balintpekker/drupal-template.git drupal-template && cd drupal-template` |


You can choose to continue with either Lando or DDEV

|                | Lando                       | DDEV                        |
|----------------|-----------------------------|-----------------------------|
| Install script | `./scripts/lando/install.sh` | `./scripts/ddev/install.sh` |
| PHPCS          | `lando composer run phpcs`  | `ddev composer run phpcs`   |
