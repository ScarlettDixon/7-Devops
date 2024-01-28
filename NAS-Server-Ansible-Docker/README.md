# NAS Server
Designed for use in my home server for storage of blu-ray movies and as backup storage for my creative friends. Kept running and up to date using Ansible and Docker.

---

### Features Include - 

#### Initial Setup, Power Management and Disabling
These all related to setting up or tearing down the NAS, they will likely be used infrequently and so while important once configured can be largely ignored

#### Testing Space
Designed to ensure that scripts can be run on a test machine before going into production, includes a vagrantfile that can run the test-server.yml to ensure it functions correctly.

#### Docker Container initialising
Starts all containers, including jellyfin, heimdall and plex