#Create azure vms

class cloud_code {
  azure_vm { 'myazurevm_ab454bd':
    ensure                      => present,
    location                    => 'australiasoutheast',
    image => 'MicrosoftWindowsServer:WindowsServer:2012-R2-Datacenter:latest',
    user                        => 'puppet_user',
    password                    => 'Password123!',
    size                        => 'Standard_DS1_V2',
    resource_group              => 'davidalexander',
    public_ip_allocation_method => 'Dynamic',
    public_ip_address_name      => 'mypublicIP',
  }
}
