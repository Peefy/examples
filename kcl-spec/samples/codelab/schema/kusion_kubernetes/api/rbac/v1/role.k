"""
This is the role module in kusion_kubernetes.api.rbac.v1 package.
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import kusion_kubernetes.apimachinery.apis


schema Role:
    """ Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.

    Attributes
    ----------
    apiVersion : str, default is "rbac.authorization.k8s.io/v1", required
         APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "Role", required
         Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    rules : [PolicyRule], default is Undefined, optional
         Rules holds all the PolicyRules for this Role
    __settings__ : {str:str}, default is {"output_type": "STANDALONE"}, optional
         existence of this attribute indicates that the model will be treated standalone by KCLVM.
    metadata : apis.ObjectMeta, default is Undefined, optional
         Standard object's metadata.
    """


    final apiVersion: str = "rbac.authorization.k8s.io/v1"

    final kind: str = "Role"

    rules?: [PolicyRule]

    __settings__?: {str:str} = {"output_type": "STANDALONE"}

    metadata?: apis.ObjectMeta


