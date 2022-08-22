schema App:
    image: str
    name: str = "gocity"
    namespace: str = "default"
    replicas: int = 1
    labels: {str:str} = {
        "app.kubernetes.io/name" = name
        "app.kubernetes.io/env" = "dev"
    }
    port: int = 4000

    deployment: {str:} = {
        apiVersion = "apps/v1"
        kind = "Deployment"
        metadata.name = name
        metadata.namespace = namespace
        spec.replicas = replicas
        spec.selector.matchLabels = labels
        spec.template = {
            metadata.labels = labels
            spec.containers = [
                {
                    name = "{}-backend".format(name)
                    image = image
                    imagePullPolicy = "IfNotPresent"
                    ports = [{
                        containerPort = port
                        protocol = "TCP"
                    }]
                }
            ]
        }
        __settings__ = {output_type = "STANDALONE"}
    }
    service: {str:} = {
        apiVersion = "v1"
        kind = "Service"
        metadata.name = name
        metadata.namespace = namespace
        spec.ports = [{
            name = "{}-backend".format(name)
            targetPort = port
            containerPort = port
        }]
        spec.selector = labels
        __settings__ = {output_type = "STANDALONE"}
    }

    __settings__ = {output_type = "IGNORE"}
