source ../local.env

zip -r get-object.zip *

ibmcloud fn action create cos/get.object get-object.zip \
  --kind nodejs:10 \
  --web true \
  --param COS_ENDPOINT "$COS_ENDPOINT" \
  --param COS_API_KEY "$COS_API_KEY" \
  --param COS_AUTH_ENDPOINT "$COS_AUTH_ENDPOINT" \
  --param COS_SERVICE_INSTANCE "$COS_SERVICE_INSTANCE"