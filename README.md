# Progenitor Search

This [Progenitor Stack](http://github.com/phase2/progenitor) provides the
dependencies and a module for advanced site search via Search API and
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
drush features-revert <your search integration module>
drush cc all
drush search-api-clear
drush search-api-index
```

Here are the available configuration options.

```php
$conf['progenitor_search_host_<server_name>'] = 'localhost';
$conf['progenitor_search_port_<server_name>'] = '8983';
$conf['progenitor_search_path_<server_name>'] =  '/solr';
$conf['progenitor_search_scheme_<server_name>'] = 'https';
$conf['progenitor_search_user_<server_name>'] = '';
$conf['progenitor_search_pass_<server_name>'] = '';
$conf['progenitor_search_read_only_<index_name>'] = FALSE;
```

## Keywords

search, inttegration
