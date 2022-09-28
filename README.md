Important notes:

How to write a multi-stage Dockerfile

- Maven
- JDK17

How to write your GitHub action

- Templates
- Secrets, ***, context
- Solution: login, build, push
- Branches

Check the result on DockerHub

- Tags and stuff

Set up you Azure WebService

- Issues: after the first setup for some reasons it does not point to the monitoring:latest
- Where to fix: Deployment Center

CI seems ready but still there's no CD

- Azure container registry works by default
- DockerHub: webhook

https://portal.azure.com/#@renatonagyepam.onmicrosoft.com/resource/subscriptions/66e064ec-ad46-479f-80d1-f71cea67d1b0/resourceGroups/renomonitoring_group/providers/Microsoft.Web/sites/renomonitoring/vstscd

Final pipeline

- Local computer
- GitHub action
- DockerHub
- Azure

Disadvantages/missing parts

- No notifications/absolutely no alert if the container failed to start/pull/port unavailable
- No visualization or hard to follow
- No healthcheck
- No Swagger

Adventages

- It works
- Relatively easy to understand and replicate after the first successful setup
- Healthcheck can be added
- Swagger can be added
- CI can be modified to any other repository easily