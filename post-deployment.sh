#!/bin/bash
cf ssh -N -T -L 8001:localhost:8001 give-api-gateway &
curl -i -X POST http://localhost:8001/services --data name='usps' --data url='http://give-ipp-usps-intelligent-hyena-tl.app.cloud.gov' &
curl -X POST http://localhost:8001/plugins/ --data "name=key-auth" 
kill $!