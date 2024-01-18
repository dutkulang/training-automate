# author: Dut Andrew Kulang dutandrewkulang[at]gmail.com
# organization: #ASKnet and r0g agency
#!/bin/bash

#image link
resource_path='_resources/'
module_path='_profiles/'

read -p $'Enter resource name eg. Over view introduction to Git and GitHub: ' RESOURCE_NAME

read -p $'Resource URL e.g https://github.com/dutkulang/lead\n' RESOURCE_URL

# removing extra unnecessary spaces in the string.
R_NAME=$(echo "$R_NAME" | tr -s ' ')

read -p "How long will your training/meeting last in Minutes 1 hour -> 60 minutes" DURATION

read -p "How much in US dollars will did it cost you to prepare this training. Enter 0 if it costed you no money" RESOURCE_COST 

read -p "Author. person or organization" RESOURCE_AUTHOR
echo "---
resource:
    name: "\"$RESOURCE_NAME\""
    id: same as file name with dashes
    description: "\"This will be the description of your resource"\"
    url: '$RESOURCE_URL'
    duration: $DURATION
    cost: $RESOURCE_COST
    author: '$RESOURCE_AUTHOR'
---
"