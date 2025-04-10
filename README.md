# CI/CD notes

[What is CI/CD?](https://www.redhat.com/en/topics/devops/what-is-ci-cd#:~:text=Hat%20can%20help-,Overview,a%20shared%20source%20code%20repository.)

**Continuous integration and continuous delivery/deployment**

![Image](https://www.redhat.com/rhdc/managed-files/styles/wysiwyg_full_width/private/ci-cd-flow-desktop.png.webp?itok=mDEvsSsp)

![Image 2 electric boogaloo](https://civo-com-assets.ams3.digitaloceanspaces.com/content_images/2585.blog.png?1704705311)

**CI/CD**, which stands for continuous integration and continuous delivery/deployment, aims to streamline and accelerate the software development lifecycle.

**Continuous integration** (CI) refers to the practice of automatically and frequently integrating code changes into a shared source code repository. **Continuous delivery** (CD) and/or **deployment** (CDE) is a 2 part process that refers to the integration, testing, and delivery of code changes. Continuous delivery stops short of automatic production deployment, while continuous deployment automatically releases the updates into the production environment.

**Stages of CI/CD pipeline:**

1. SCM (Source code management)
2. Build
3. Test
4. Package
5. Deploy
6. Monitor 

### Jenkins

[Jenkins documentation](https://www.jenkins.io/doc/)

Jenkins is widely used to automate tasks that involve repetitive actions.

Advantages:
- CICD tool
- Open source (Lots of plugins and documentation)

Disadvantages:
- Complicated to setup
- Needs a lot of maintanance