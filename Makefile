default: sv

cli: prebuild
	go run client.go

sv: prebuild
	go run server.go

prebuild: greet.pb.go

greet.pb.go: greet.proto
	protoc greet.proto --go_out=plugins=grpc:.

clean:
	rm -rf greet
