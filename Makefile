build: 
	@go build -o bin/priceFetcher

run: build
	@./bin/priceFetcher

dockerBuild:
	@docker build -t go-microservice .

dockerRun: dockerBuild
	@docker run -p 3000:3000 go-microservice



