#!/bin/bash
cf ssh -N -T -L 80:localhost:8081 give-api-gateway &
curl -i -X POST http://localhost:80/services --data name='usps' --data url='http://give-ipp-usps-intelligent-hyena-tl.app.cloud.gov' &
curl -X POST http://localhost:80/plugins/ --data "name=key-auth" 
kill $!