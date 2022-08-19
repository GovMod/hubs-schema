data "oci_identity_compartments" "root" {
    #Required
    compartment_id = var.compartment_root

    #Optional
    # access_level = var.compartment_access_level
    # compartment_id_in_subtree = var.compartment_compartment_id_in_subtree
    name = "GovMod"
    # state = var.compartment_state
}
