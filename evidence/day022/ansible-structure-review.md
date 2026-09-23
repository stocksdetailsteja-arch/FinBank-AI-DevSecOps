# Day022 Ansible Structure Review
## Timestamp UTC
2026-09-23T04:43:04Z
## Files
labs/day022/ansible/ansible.cfg
labs/day022/ansible/group_vars/all.yml
labs/day022/ansible/inventory.ini
labs/day022/ansible/site.yml
labs/day022/ansible/templates/app.conf.j2
## Checksums
127f577533a4d8ea35caaaf00258b1e89cca2a92ad0d6edf4029e606f2194d1a  labs/day022/ansible/ansible.cfg
8687111031df2c57bf7189a452bbd77051b54044c0dac358cf49d55e76b0c2d0  labs/day022/ansible/inventory.ini
a1d8ed781f8fb7f349bee68d0bf410eea142db45d432eba2062e9b19ab9c6db2  labs/day022/ansible/group_vars/all.yml
398e58925e61b918075604c6bf206945ebe1d916f9ac65cbbafd28fc59da2601  labs/day022/ansible/templates/app.conf.j2
7609493bd592aa71c78e61166585553fd7929fa3ba1f6988102e55bbf0f24efe  labs/day022/ansible/site.yml
## Safety Markers
labs/day022/ansible/inventory.ini:2:localhost ansible_connection=local
labs/day022/ansible/group_vars/all.yml:3:finbank_output_dir: /tmp/finbank-day022
labs/day022/ansible/site.yml:5:  become: false
labs/day022/ansible/site.yml:9:    - name: Validate localhost-only safety boundary
labs/day022/ansible/site.yml:12:          - inventory_hostname == "localhost"
labs/day022/ansible/site.yml:13:          - finbank_output_dir.startswith("/tmp/finbank-day022")
