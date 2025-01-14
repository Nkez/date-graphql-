PHONY: gqlgen

gqlgen:
	go run github.com/99designs/gqlgen generate

minio:
	docker run  -p 9000:9000  -p 9001:9001  --name minio   -v ~/minio/data:/data   -e "MINIO_ROOT_USER=mikita"  -e "MINIO_ROOT_PASSWORD=123456789" quay.io/minio/minio server /data --console-address ":9001"