FROM amazon/aws-cli
COPY entrypoint.sh /entrypoint.sh
COPY fromdocker.html /aws/fromdocker.html
ENTRYPOINT ["/entrypoint.sh"]