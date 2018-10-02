app_name := gigasetelements-cli
docker_name := fbartels/$(app_name)

docker_login=`cat ~/.docker-account-user`
docker_pwd=`cat ~/.docker-account-pwd`


docker-build:
	@echo "Building Docker image"
	docker build -t $(app_name) .

docker-run: docker-build
	docker run -it --rm \
        -v $(HOME)/.gigasetelements-cli:/root/.gigasetelements-cli \
        $(app_name)
