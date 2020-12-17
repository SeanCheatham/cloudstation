# CloudStation
An unofficial IDE for [CloudState](https://cloudstate.io/).  Develop and deploy Event Sourced Entities, Replicated Entities, and Actions.  Focus on business logic instead of operations.

This project is a very early work-in-progress.  Contributions and ideas are welcome and appreciated.

## Overview and Intentions
**Disclaimer**: The description below is the "north star".  It is not all implemented yet.

An Integrated Development Environment (IDE) for CloudState functions.  This IDE is a bit different.  You still write the code, but CloudStation handles the logistics.

The CloudState [docs](https://cloudstate.io/#why) have more information on distributed state management and all of the advantages it provides.  This IDE allows you to leverage all of those advantages out of the box.  You, the developer, focus purely on implementing the business logic for your application.

You have full control over the implementation of the function handlers using the many supported CloudState languages.  You can also import libraries into the project, allowing you to write a bulk of the code in your preffered IDE and reference it in your minimal CloudStation function code.

You also need to bring the Kubernetes cluster.  But once the Operator is installed, just connect the CloudStation IDE to your cluster and you're all set!

### Models
Define the data types you plan to use in your application.  These data types are defined using a UI.  For each model, just specify a name and the properties.  The models are translated into Protobuf Messages and can be referenced anywhere in your code.  These models are also used to define "State Types", "Command Types", and other types needed for your CloudState entities.

### Event Sourced Entities
Event Sourced Entities receive Commands.  The Entity decides how to handle the Commands using the current State of the entity.  The handler may emit Events depending on the Command, or it may simply return data.  The Entity decides how an Event should be applied to a State to produce a new State.  The Entity then responds back to the original Command.

In CloudStation, you can define Event Sourced Entities in a Project.  For each Entity, you specify the State type (from the Models defined previously), Command Handlers, and Event Handlers.  For a Command Handler, specify the Command type, the Response type, and the implementation code in a language of your choice.

### Replicated Entities
Replicated Entities also receive Commands, and they are also effective tools for managing distributed state.  But instead of a State type, you specify a Replicated Data type from a list of predefined options.  Replicated Data is also stateful, but the implementation is not backed by event sourcing.  Instead, they use specialized algorithms to ensure that two changes, regardless of the order they are received, always result in the same value.

In CloudStation, you can define Replicated Entities in a Project.  For each Entity, you specify the Replicated Data type and Command Handlers.  For a Command Handler, specify the Command type, the Response type, and the implementation code in a language of your choice.

### Actions
Actions are similar to "stateless serverless functions".  They do not have any stateful backing to them; they are workhorses for your application.

In CloudStation, you can define Actions in a Project.  For each Action, you specify the Command (Input) type, the Response (Output) type, and the implementation code in a language of your choice.

### Test and Deploy
Click the Test button.  CloudStation will assemble your project's entities into various Docker images and deploy them to your Kubernetes cluster in a temporary namespace.  When you're done testing, click the Deploy button. CloudStation will deploy the same images to the "production" namespace, and the temporary namespace will be discarded.

## Developer Docs
- [Developer Setup](./docs/setup.md)
- [System Design](./docs/design.md)

## Screenshots
![Model Editor](./docs/images/model_editor_screenshot.png)
![Event Sourced Entity Editor](./docs/images/event_sourced_entity_editor_screenshot.png)
![Replicated Entity Editor](./docs/images/replicated_entity_editor_screenshot.png)
