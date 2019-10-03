Role Name
=========

A brief description of the role goes here.

Requirements
------------
elastic_image: amazon/opendistro-for-elasticsearch:1.1.0

elastic_project_directory: /data/docker/elastic
elastic_project_name: elastic
envs:
  cluster.name: elastic_cluster
  node.name: "{{ inventory_hostname }}"
  discovery.seed_hosts: "{{ groups['elastic_cluster'] | join(',') }}"
  cluster.initial_master_nodes: "{{ groups['elastic_cluster'] | join(',') }}"
  bootstrap.memory_lock: "true"
  ES_JAVA_OPTS: "-Xms512m -Xmx512m"

container_ports:
  - 9200:9200
  - 9300:9300


elastic_users:
  - { name: 'kibana', password: 'kibana', reserved: 'true', backend_roles: ['admin','kibanauser', 'readall'], description: 'test'}

