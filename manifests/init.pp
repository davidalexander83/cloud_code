#Create azure vms

class cloud_code {
  ec2_instance { 'myawsinstance':
    ensure          => present,
    region          => 'us-west-2',
    image_id        => 'ami-09f47d69',
    instance_type   => 't2.small',
    subnet          => 'subnet-fdbb3198',
    security_groups => ['sg-11cd4d6a'],
    tags            => {
      created_by => 'david.alexander',
      department => 'tse',
      project    => 'cloud-webinar-apj',
    }
  }
  azure_vm { 'myazurevm':
    ensure                      => present,
    location                    => 'australiasoutheast',
    image                       => 'Windows Server 2012 R2 Datacenter',
    user                        => 'puppet_user',
    password                    => 'Password123!',
    size                        => 'Standard_DS1_V2',
    resource_group              => 'davidalexander',
    public_ip_allocation_method => 'Dynamic',
    public_ip_address_name      => 'mypublicIP',
  }
}
