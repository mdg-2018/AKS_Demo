# Example Scripts for MongoDB in AKS
## Prerequisites
- Install kubectl on your local machine
- Install the Azure CLI on your local machine & configure it for your Azure account

## Instructions
- Fill out information in <code>env.sh</code>
- Run <code>aks-setup.sh</code> to create your AKS cluster with three nodes.
- Run <code>deploy-ops-manager.sh</code>
- Wait a while, probably about 10 minutes, for ops manager to deploy. Check progress with <code>kubectl get om -n mongodb</code>
- Access ops manager UI at \<ops manager service public url\>:8080. To get the ops manager public url, run <code>kubectl get services -n mongodb</code> and look for the <b>external</b> ip for the ops manager service.
- Edit <code>yamls/project.yaml</code> to include your ops manager base url and organiation id (found in organization settings on the ops manager ui). The base url can be found by running <code>kubectl get services -n mongodb</code> and looking for the <b>internal</b> ip for the ops manager service.
- Run <code>./deploy-replica-set.sh</code> and follow the prompts to continue. The script will remide you to edit the project.yaml file in the previous step, and then ask for the public an private key that should be used to access your ops manager deployment. The key can be created through the ops manager UI. <b>Make sure to create the key at the organization level rather than the project level!</b>
- Thats it! In a few moments you should see a project called k8s appear in your ops manager organization. The replica set will appear within the k8s project.


## Helpful Links
- [MongoDB Enterprise Kubernetes Operator Documentation](https://docs.mongodb.com/kubernetes-operator/master)
- [MongoDB Enterprise Kubernetes Operator Github](https://github.com/mongodb/mongodb-enterprise-kubernetes)
- [Docs for creating API keys in Ops Manager](https://docs.opsmanager.mongodb.com/current/tutorial/configure-public-api-access/)