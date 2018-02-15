provider "vsphere" {
  version = "~> 0.4"
  user                 = "ServiceAccountName"
  password             = "ServiceAccountPassword"
  vsphere_server       = "FullyQualifiedVsphereName"
  allow_unverified_ssl = "true"
}

resource "vsphere_virtual_machine" "default" {
    name = "TheNameYouWIllGiveYourVmWhenItsDeployed"
    datacenter = "TheNameOftheVsphereDataCenter"
    cluster = "TheVSphereClusterThatYouWillUseToDeployYourVmTo"
    resource_pool = "TheNAmeOfTheResourcePoolYourVmWillDeployTo"
    vcpu = 2
    memory = 8192
    domain = "workgroup"
    dns_suffixes = ["DomainName.com"]
    dns_servers = ["xx.xx.xxx.xx","xx.xx.xxx.xx"]

    disk {
        datastore = "TheNameOfTheDataStoreThatContainsYourTemplateOrVm"
        template = "TheNameOftheTemplateOrVmthatYouWillUsetoDeployWith"
        type = "thin"
    }

    network_interface {
        label = "TheVmNetworkInterFaceThatYouWillAssignYourVM"
        ipv4_address = "xx.xx.xxx.xx"
        ipv4_prefix_length = "24"
        ipv4_gateway = "xx.xx.xxx.x"
    }

    windows_opt_config {
        product_key = "TheWindowsProductKeyYouwilluse_ThisNeedsToMatchTheOneInstalledOnTheVM"
	 admin_password = "TheLocaLAdminAccountOnTheMachine"
    }

}
