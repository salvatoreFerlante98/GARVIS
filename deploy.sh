#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}Start deploying...${NC}"

update_repo() {
    echo -e "${GREEN}Updating develop branch...${NC}"
    git pull origin develop
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}Successfully updated branch.${NC}"
    else
        echo -e "${RED}Errors while updating branch.${NC}"
        exit 1
    fi
}

deploy_containers() {
    echo -e "${GREEN}Building and running Docker containers...${NC}"
    docker-compose -f docker-compose.yml --env-file .env.develop up --build -d
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}Successfully started containers.${NC}"
    else
        echo -e "${RED}Error while starting containers.${NC}"
        exit 1
    fi
}

show_status() {
    echo -e "${GREEN}Running containers status:${NC}"
    docker ps
}

restart_containers() {
    echo -e "${GREEN}Rebooting containers...${NC}"
    docker-compose restart
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}Successfully rebooted containers.${NC}"
    else
        echo -e "${RED}Error while rebooting containers.${NC}"
        exit 1
    fi
}

# Esegui automaticamente l'aggiornamento del repository e il deploy
update_repo
deploy_containers
show_status
