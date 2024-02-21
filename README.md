# How to use AWS ECS and AWS ECR

### Navigate to directory 
```cd 002_Gatling```

### Test your test execution
```./mvn gatling:test```

### Build an image with Gatling project
```docker build -t gatling-test-demo:latest .```

### Get password and logint in AWS ECR
```aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 656776103659.dkr.ecr.eu-north-1.amazonaws.com/demo-epam```

### Set tag for your image 
```docker tag gatling-test-demo:latest 656776103659.dkr.ecr.eu-north-1.amazonaws.com/demo-epam:v1```

### Push image to AWS ECR
```docker push 656776103659.dkr.ecr.eu-north-1.amazonaws.com/demo-epam:v1```
