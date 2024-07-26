# Label and train activity

This repo is the base structure of the AI workshop: https://github.com/Demo-AI-Edge-Crazy-Train/workshop-model-training.  
The instructions of the workshops are available here: https://rivieradev2024-crazytrain.netlify.app/.

## Content

`annotations` contains the `datasets/traffic-sign-lego` annotations  
|_ `annotations/annations.json` is used to populate label studio with annotations and pictures of the dataset  
|_ `annotations/sink` is the label used in training scripts and are generated by label studio  
`container-images` are some of the Containerfile used  

`datasets` contains the lego datasets taken from the train  
|_ `datasets/traffic-sign-lego` is the dataset itself  
|_ `datasets/validation-dataset.tar.gz` is used to test the lego model after traning 

`manifests` contains the object storage, label studio and data science project deployment  

`operators` contains the required operators  

`operators-instances` contains the required operators instanaces  

`workshop` [WORK IN PROGRESS] contains some scripts and indications to setup the workshop for a fixed number of participants (here 40)

## Deployment

With the following commands you will deploy the base structure of the workshop. To setup the workshop for multiple participant, you will have to navigate to `workshop` directory (WIP to automate). 

**You will have to provision some data science project componenets on your own**: data connection (**use a https endpoint**), pipeline server, workbench using a custom image (`quay.io/demo-ai-edge-crazy-train/workbench:minimal`) with the data connection well linked. Refer to the [workshop instructions](https://rivieradev2024-crazytrain.netlify.app/).

```
oc apply -k operators
# Wait for RHOAI operator installation
oc apply -k operators-instances
# Wait for RHOAI components deployment
oc kustomize --enable-helm manifests | oc apply -f -
```