<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AzureTest" generation="1" functional="0" release="0" Id="846c0d68-53db-42c2-b8cb-a4332252dddb" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureTestGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="AzureRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/AzureTest/AzureTestGroup/LB:AzureRole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="AzureRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureTest/AzureTestGroup/MapAzureRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="AzureRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureTest/AzureTestGroup/MapAzureRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:AzureRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/AzureTest/AzureTestGroup/AzureRole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapAzureRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureTest/AzureTestGroup/AzureRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapAzureRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureTest/AzureTestGroup/AzureRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="AzureRole" generation="1" functional="0" release="0" software="c:\users\mchinnasamy\documents\visual studio 2010\Projects\AzureTest\AzureTest\csx\Debug\roles\AzureRole" entryPoint="base\x86\WaHostBootstrapper.exe" parameters="base\x86\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;AzureRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;AzureRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureTest/AzureTestGroup/AzureRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureTest/AzureTestGroup/AzureRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureTest/AzureTestGroup/AzureRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="AzureRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="AzureRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="AzureRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="04b131c4-09eb-4fff-8d80-6528a4020fd4" ref="Microsoft.RedDog.Contract\ServiceContract\AzureTestContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="dfa49db5-8743-45bd-9044-cb20a92df9c5" ref="Microsoft.RedDog.Contract\Interface\AzureRole:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/AzureTest/AzureTestGroup/AzureRole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>