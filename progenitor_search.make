api = 2
core = 7.x

projects[search_api][type] = module
projects[search_api][subdir] = contrib
projects[search_api][version] = 1.13

projects[search_api_solr][type] = module
projects[search_api_solr][subdir] = contrib
projects[search_api_solr][version] = 1.6
projects[search_api_solr][patch][2343111] = https://www.drupal.org/files/issues/search_api_solr-2343111-OR-Filters-14.patch

projects[search_api_autocomplete][type] = module
projects[search_api_autocomplete][subdir] = contrib
projects[search_api_autocomplete][version] = 1.1

projects[search_api_devel][type] = module
projects[search_api_devel][subdir] = contrib
projects[search_api_devel][version] = 1.x-dev
