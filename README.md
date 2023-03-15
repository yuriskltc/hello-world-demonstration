# hello-world-demonstration

this is simple demonstration tool that can be used to create simple pipeline.

Pipeline groovy scripts are located in Jenkins directory
CI pipelines:
  - JenkinsJfrog - this pipeline demonstrates maven build using rt functions from Artifactory library.
  - JenkinsNative - this pipeline demonstrates maven build using native build methods. at the end of CI pipeline, CD pipeline is triggered
  
CD Pipelines:
  - JenkinsCD - this is simple demonstration code that deploys artifact built in CI pipeline and executes it
  - JenkinsCron - this is demonstration of CD pipeline that deplooys artifact, where it is executed by cron every minute. It also demonstrates usage of lock file. in file crontab you can see sample cron record you can add to application user crontab. you will need to deploy file launcher.sh to server. prepareation of cron record and deploy of launcher.sh needs to be done once, CD pipeline is not doing this. CD pipeline can function without them, but launching of file every minute will not work.
 
 CI pipelines are triggered by webhooks, for optimal work, please configure webhook for jenkins pipeline.

for demonstration purposes, ideal way how to demonstrate whole pipeline cycle, please edit App source java file, and change demonstration date in java file. when you commit this change, whole pipeline will trigger (if you configured webhook) and in pipeline output you will see changed demonstration message in hello world.
