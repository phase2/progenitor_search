# Progenitor Search

This Stack module provides a recipe for advanced site search via Search API and
Search API Solr integration. It makes available pre-selected modules for more 
advanced search features.

## Use Cases

* The site can be searched based on many facets.

## Usage

* Download this stack with `drush make` for automatic processing of the makefile.
* Enable the module to turn on dependencies and set better defaults.
* Leave the module enabled to rely on it for functionality or to mitigate database
  conflicts between the modules it recommends.

## Setup

This module sets up a single, SOLR-based search server in the site: `search_primary`.
This search is given sane defaults, and can be configured via settings.php.

If you change any of these settings, you will need to run the following:

```bash
drush features-revert phase2_search
drush cc all
drush search-api-clear
drush search-api-index
```

Here are the available configuration options.

```php
$conf['phase2_search_host'] = 'localhost';
$conf['phase2_search_port'] = '8983';
$conf['phase2_search_path'] =  '/solr';
$conf['phase2_search_scheme'] = 'https';
$conf['phase2_search_user'] = '';
$conf['phase2_search_pass'] = '';
```

## Recommendations
If you are using the Solr search module ecosystem, check out the *Phase2 SOLR" stack.

## Maintainers

* Adam Ross <aross@phase2technology.com>

## Keywords

search, inttegration
