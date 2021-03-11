COMPOSE=`which docker-compose`

start:
	@$(COMPOSE) up -d

stop:
	@$(COMPOSE) stop

clean:
	@$(COMPOSE) down --rmi all --volumes

restart:
	@$(COMPOSE) up -d --build

start/frontend:
	@$(COMPOSE) up -d frontend

build/frontend:
	@$(COMPOSE) up -d frontend --build

stop/frontend:
	@$(COMPOSE) stop -d frontend
