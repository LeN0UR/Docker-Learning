### Docker Learning Journey

This repo is where I’ve been experimenting and learning the basics of Docker and Docker Compose. It started with just trying to run a simple Flask app, but along the way I ended up learning a lot more than I expected and to be honest it was a fun and enlightening experience.

## My Experience
When I first started, I just wanted to get a Flask app running in a container. Pretty quickly, I ran into all sorts of issues: I forgot to rebuild images, mixed up ports, and installed dependencies in the wrong places. The biggest headache was the classic error: `ModuleNotFoundError: No module named 'flask'`.

At first, I thought something was broken with Docker itself, but I realized that I wasn’t rebuilding properly after changing my Dockerfile. Small mistakes, like accidentally typing `From flask import Flask` instead of `from flask import Flask`, wasted more time than I’d like to admit 😅.

Eventually, I learned how to:  
- Write a **Dockerfile** that installs Flask and Redis properly  
- Use **Docker Compose** to spin up multiple containers and connect them (my app and Redis)  
- Expose the right ports so I could test the app in my browser  
- Clean up old images and containers to avoid running outdated versions  
- Push my code to **GitHub** and fix conflicts when my branch was behind

## Skills I’ve Picked Up
- Writing and debugging **Dockerfiles**  
- Running multi-container apps with **Docker Compose**  
- Managing images, containers, and volumes  
- Debugging containers when things break  
- Using Git with remote repositories

## Challenges Faced
- Accidentally misnaming imports (`From flask import Flask` instead of `from flask import Flask`)  
- Forgetting to rebuild containers after editing the Dockerfile  
- Encountering the `ModuleNotFoundError` and learning how to properly install dependencies inside containers

## Next Steps
Now that I’ve got the basics down, I want to go further:  
- Learn how to use **Kubernetes** for orchestration  
- Set up a **CI/CD pipeline** so builds and deployments are automated  
- Improve image sizes and security best practices

