# DockerTest

- docker build -t docker-test .
- docker tag docker-test:latest theerisnet/groom:0.1
  - 맨 뒤의 버전은 자유롭게 변경 가능
- docker push theerisnet/groom:0.1
- 그런데 새로운 방법이 있다.
  - docker save my_image > my_image.tar
    - 파일을 이미지로 만든다.
  - docker load < my_image.tar