gcloud beta compute security-policies rules create PRIORITY 
   --security-policy=SECURITY_POLICY
   (--expression=EXPRESSION | --src-ip-ranges=SRC_IP_RANGE)
   --action "throttle"
   --rate-limit-threshold-count=RATE_LIMIT_THRESHOLD_COUNT
   --rate-limit-threshold-interval-sec=RATE_LIMIT_THRESHOLD_INTERVAL_SEC
   --conform-action=[allow]
   --exceed-action=[deny-403|deny-404|deny-429|deny-502]
   --enforce-on-key=[IP | ALL | HTTP-HEADER | XFF-IP]
   --enforce-on-key-name=HTTP_HEADER_NAME
   
   
   ## example
   gcloud beta compute security-policies rules create 105 \
    --security-policy sec-policy     \
    --src-ip-ranges="1.2.3.0/24"     \
    --action=throttle                \
    --rate-limit-threshold-count=100 \
    --rate-limit-threshold-interval-sec=60 \
    --conform-action=allow           \
    --exceed-action=deny-429         \
    --enforce-on-key=IP
