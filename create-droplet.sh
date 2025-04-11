NAME=$1
SIZE=$2

if [ "$NAME"=="" ]; then 
        echo "Please enter a value for droplet_name"
        echo "./create-droplet.sh <droplet_name> <droplet_size>"
        echo "Ex. ./create-droplet.sh my-droplet s-1vcpu-2gb"
        echo "Sizes: https://slugs.do-api.dev"
        exit 1
fi

DO_API_TOKEN=$(cat DO_TOKEN) ansible-playbook playbook.yml -K -e droplet_name=$NAME -e droplet_size=$SIZE
