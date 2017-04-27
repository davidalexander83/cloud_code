#Create azure vms

class azure_code {
  azure_vm { 'myvm':
    ensure         => present,
    location       => 'Australia Southeast',
    image          => 'Windows Server 2012 R2 Datacenter',
    user           => 'puppet_user',
    password       => 'Password123!',
    size           => 'DS1_V2',
    resource_group => 'davidalexander',
  }
}
