#!/bin/bash

# conda activate webarena
export SHOPPING="http://ec2-3-149-82-155.us-east-2.compute.amazonaws.com:7770"
export SHOPPING_ADMIN="http://ec2-3-149-82-155.us-east-2.compute.amazonaws.com:7780/admin"
export REDDIT="http://ec2-3-149-82-155.us-east-2.compute.amazonaws.com:9999"
export GITLAB="http://ec2-3-149-82-155.us-east-2.compute.amazonaws.com:8023"
export MAP="http://ec2-3-149-82-155.us-east-2.compute.amazonaws.com:3000"
export WIKIPEDIA="http://ec2-3-149-82-155.us-east-2.compute.amazonaws.com:8888/wikipedia_en_all_maxi_2022-05/A/User:The_other_Kiwix_guy/Landing"
export HOMEPAGE="http://ec2-3-149-82-155.us-east-2.compute.amazonaws.com:3333"

# export SHOPPING="http://metis.lti.cs.cmu.edu:7770"
# export SHOPPING_ADMIN="http://metis.lti.cs.cmu.edu:7780/admin"
# export REDDIT="http://metis.lti.cs.cmu.edu:9999"
# export GITLAB="http://metis.lti.cs.cmu.edu:8023"
# export MAP="metis.lti.cs.cmu.edu:3000"
# export WIKIPEDIA="metis.lti.cs.cmu.edu:8888/wikipedia_en_all_maxi_2022-05/A/User:The_other_Kiwix_guy/Landing"
# export HOMEPAGE="<your_homepage_domain>:4399" # this is a placeholder

# generate test data
python scripts/generate_test_data.py

# re-validate login information
mkdir -p ./.auth
python browser_env/auto_login.py
