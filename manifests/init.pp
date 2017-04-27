#Create azure vms

class cloud_code {
  azure_vm { 'myazurevm':
    ensure         => present,
    location       => 'Australia Southeast',
    image          => 'Windows Server 2012 R2 Datacenter',
    user           => 'puppet_user',
    password       => 'Password123!',
    size           => 'DS1_V2',
    resource_group => 'davidalexander',
  }

  ec2_instance { 'myawsinstance':
    ensure        => present,
    region        => 'us-west-2',
    image_id      => 'ami-09f47d69',
    instance_type => 't2.small',
    tags          => {
      created_by => 'david.alexander',
      department => 'tse',
      project    => 'cloud-webinar-apj',
    }
  }
}
