########################################################################
######################           RUN SYSTEM        #####################
########################################################################

build:
	docker-compose build --no-cache

build-with-cache:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

########################################################################
#######################           SERVER        ########################
########################################################################

gateway-console:
	docker-compose run --rm --no-deps gateway sh

laravel-console:
	docker-compose run --rm --no-deps laravel sh

wordpress-console:
	docker-compose run --rm --no-deps wordpress sh


########################################################################
#########################           PHP        #########################
########################################################################

php-cli-console:
	docker-compose run --rm --no-deps php-cli bash

wp-cli-console:
	docker-compose run --rm --no-deps wp-cli bash

################################################################
####################### LOGS/CACHE #############################
################################################################

logs-docker:
	docker-compose logs

dump-autoload:
	docker-compose run --rm --no-deps php-cli composer dump-autoload

################################################################
######################### OTHER ################################
################################################################

set-access:
	sudo chown -R www-data:www-data ./wordpress
