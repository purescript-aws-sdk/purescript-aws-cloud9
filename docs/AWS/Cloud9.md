## Module AWS.Cloud9

<fullname>AWS Cloud9</fullname> <p>AWS Cloud9 is a collection of tools that you can use to code, build, run, test, debug, and release software in the cloud.</p> <p>For more information about AWS Cloud9, see the <a href="https://docs.aws.amazon.com/cloud9/latest/user-guide">AWS Cloud9 User Guide</a>.</p> <p>AWS Cloud9 supports these operations:</p> <ul> <li> <p> <code>CreateEnvironmentEC2</code>: Creates an AWS Cloud9 development environment, launches an Amazon EC2 instance, and then connects from the instance to the environment.</p> </li> <li> <p> <code>CreateEnvironmentMembership</code>: Adds an environment member to an environment.</p> </li> <li> <p> <code>DeleteEnvironment</code>: Deletes an environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.</p> </li> <li> <p> <code>DeleteEnvironmentMembership</code>: Deletes an environment member from an environment.</p> </li> <li> <p> <code>DescribeEnvironmentMemberships</code>: Gets information about environment members for an environment.</p> </li> <li> <p> <code>DescribeEnvironments</code>: Gets information about environments.</p> </li> <li> <p> <code>DescribeEnvironmentStatus</code>: Gets status information for an environment.</p> </li> <li> <p> <code>ListEnvironments</code>: Gets a list of environment identifiers.</p> </li> <li> <p> <code>UpdateEnvironment</code>: Changes the settings of an existing environment.</p> </li> <li> <p> <code>UpdateEnvironmentMembership</code>: Changes the settings of an existing environment member for an environment.</p> </li> </ul>

#### `createEnvironmentEC2`

``` purescript
createEnvironmentEC2 :: forall eff. CreateEnvironmentEC2Request -> Aff (exception :: EXCEPTION | eff) CreateEnvironmentEC2Result
```

<p>Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.</p>

#### `createEnvironmentMembership`

``` purescript
createEnvironmentMembership :: forall eff. CreateEnvironmentMembershipRequest -> Aff (exception :: EXCEPTION | eff) CreateEnvironmentMembershipResult
```

<p>Adds an environment member to an AWS Cloud9 development environment.</p>

#### `deleteEnvironment`

``` purescript
deleteEnvironment :: forall eff. DeleteEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) DeleteEnvironmentResult
```

<p>Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.</p>

#### `deleteEnvironmentMembership`

``` purescript
deleteEnvironmentMembership :: forall eff. DeleteEnvironmentMembershipRequest -> Aff (exception :: EXCEPTION | eff) DeleteEnvironmentMembershipResult
```

<p>Deletes an environment member from an AWS Cloud9 development environment.</p>

#### `describeEnvironmentMemberships`

``` purescript
describeEnvironmentMemberships :: forall eff. DescribeEnvironmentMembershipsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentMembershipsResult
```

<p>Gets information about environment members for an AWS Cloud9 development environment.</p>

#### `describeEnvironmentStatus`

``` purescript
describeEnvironmentStatus :: forall eff. DescribeEnvironmentStatusRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentStatusResult
```

<p>Gets status information for an AWS Cloud9 development environment.</p>

#### `describeEnvironments`

``` purescript
describeEnvironments :: forall eff. DescribeEnvironmentsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentsResult
```

<p>Gets information about AWS Cloud9 development environments.</p>

#### `listEnvironments`

``` purescript
listEnvironments :: forall eff. ListEnvironmentsRequest -> Aff (exception :: EXCEPTION | eff) ListEnvironmentsResult
```

<p>Gets a list of AWS Cloud9 development environment identifiers.</p>

#### `updateEnvironment`

``` purescript
updateEnvironment :: forall eff. UpdateEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) UpdateEnvironmentResult
```

<p>Changes the settings of an existing AWS Cloud9 development environment.</p>

#### `updateEnvironmentMembership`

``` purescript
updateEnvironmentMembership :: forall eff. UpdateEnvironmentMembershipRequest -> Aff (exception :: EXCEPTION | eff) UpdateEnvironmentMembershipResult
```

<p>Changes the settings of an existing environment member for an AWS Cloud9 development environment.</p>

#### `AutomaticStopTimeMinutes`

``` purescript
newtype AutomaticStopTimeMinutes
  = AutomaticStopTimeMinutes Int
```

##### Instances
``` purescript
Newtype AutomaticStopTimeMinutes _
Generic AutomaticStopTimeMinutes _
Show AutomaticStopTimeMinutes
Decode AutomaticStopTimeMinutes
Encode AutomaticStopTimeMinutes
```

#### `BadRequestException`

``` purescript
newtype BadRequestException
  = BadRequestException NoArguments
```

<p>The target request is invalid.</p>

##### Instances
``` purescript
Newtype BadRequestException _
Generic BadRequestException _
Show BadRequestException
Decode BadRequestException
Encode BadRequestException
```

#### `BoundedEnvironmentIdList`

``` purescript
newtype BoundedEnvironmentIdList
  = BoundedEnvironmentIdList (Array EnvironmentId)
```

##### Instances
``` purescript
Newtype BoundedEnvironmentIdList _
Generic BoundedEnvironmentIdList _
Show BoundedEnvironmentIdList
Decode BoundedEnvironmentIdList
Encode BoundedEnvironmentIdList
```

#### `ClientRequestToken`

``` purescript
newtype ClientRequestToken
  = ClientRequestToken String
```

##### Instances
``` purescript
Newtype ClientRequestToken _
Generic ClientRequestToken _
Show ClientRequestToken
Decode ClientRequestToken
Encode ClientRequestToken
```

#### `ConflictException`

``` purescript
newtype ConflictException
  = ConflictException NoArguments
```

<p>A conflict occurred.</p>

##### Instances
``` purescript
Newtype ConflictException _
Generic ConflictException _
Show ConflictException
Decode ConflictException
Encode ConflictException
```

#### `CreateEnvironmentEC2Request`

``` purescript
newtype CreateEnvironmentEC2Request
  = CreateEnvironmentEC2Request { name :: EnvironmentName, description :: NullOrUndefined (EnvironmentDescription), clientRequestToken :: NullOrUndefined (ClientRequestToken), instanceType :: InstanceType, subnetId :: NullOrUndefined (SubnetId), automaticStopTimeMinutes :: NullOrUndefined (AutomaticStopTimeMinutes), ownerArn :: NullOrUndefined (UserArn) }
```

##### Instances
``` purescript
Newtype CreateEnvironmentEC2Request _
Generic CreateEnvironmentEC2Request _
Show CreateEnvironmentEC2Request
Decode CreateEnvironmentEC2Request
Encode CreateEnvironmentEC2Request
```

#### `newCreateEnvironmentEC2Request`

``` purescript
newCreateEnvironmentEC2Request :: InstanceType -> EnvironmentName -> CreateEnvironmentEC2Request
```

Constructs CreateEnvironmentEC2Request from required parameters

#### `newCreateEnvironmentEC2Request'`

``` purescript
newCreateEnvironmentEC2Request' :: InstanceType -> EnvironmentName -> ({ name :: EnvironmentName, description :: NullOrUndefined (EnvironmentDescription), clientRequestToken :: NullOrUndefined (ClientRequestToken), instanceType :: InstanceType, subnetId :: NullOrUndefined (SubnetId), automaticStopTimeMinutes :: NullOrUndefined (AutomaticStopTimeMinutes), ownerArn :: NullOrUndefined (UserArn) } -> { name :: EnvironmentName, description :: NullOrUndefined (EnvironmentDescription), clientRequestToken :: NullOrUndefined (ClientRequestToken), instanceType :: InstanceType, subnetId :: NullOrUndefined (SubnetId), automaticStopTimeMinutes :: NullOrUndefined (AutomaticStopTimeMinutes), ownerArn :: NullOrUndefined (UserArn) }) -> CreateEnvironmentEC2Request
```

Constructs CreateEnvironmentEC2Request's fields from required parameters

#### `CreateEnvironmentEC2Result`

``` purescript
newtype CreateEnvironmentEC2Result
  = CreateEnvironmentEC2Result { environmentId :: NullOrUndefined (EnvironmentId) }
```

##### Instances
``` purescript
Newtype CreateEnvironmentEC2Result _
Generic CreateEnvironmentEC2Result _
Show CreateEnvironmentEC2Result
Decode CreateEnvironmentEC2Result
Encode CreateEnvironmentEC2Result
```

#### `newCreateEnvironmentEC2Result`

``` purescript
newCreateEnvironmentEC2Result :: CreateEnvironmentEC2Result
```

Constructs CreateEnvironmentEC2Result from required parameters

#### `newCreateEnvironmentEC2Result'`

``` purescript
newCreateEnvironmentEC2Result' :: ({ environmentId :: NullOrUndefined (EnvironmentId) } -> { environmentId :: NullOrUndefined (EnvironmentId) }) -> CreateEnvironmentEC2Result
```

Constructs CreateEnvironmentEC2Result's fields from required parameters

#### `CreateEnvironmentMembershipRequest`

``` purescript
newtype CreateEnvironmentMembershipRequest
  = CreateEnvironmentMembershipRequest { environmentId :: EnvironmentId, userArn :: UserArn, permissions :: MemberPermissions }
```

##### Instances
``` purescript
Newtype CreateEnvironmentMembershipRequest _
Generic CreateEnvironmentMembershipRequest _
Show CreateEnvironmentMembershipRequest
Decode CreateEnvironmentMembershipRequest
Encode CreateEnvironmentMembershipRequest
```

#### `newCreateEnvironmentMembershipRequest`

``` purescript
newCreateEnvironmentMembershipRequest :: EnvironmentId -> MemberPermissions -> UserArn -> CreateEnvironmentMembershipRequest
```

Constructs CreateEnvironmentMembershipRequest from required parameters

#### `newCreateEnvironmentMembershipRequest'`

``` purescript
newCreateEnvironmentMembershipRequest' :: EnvironmentId -> MemberPermissions -> UserArn -> ({ environmentId :: EnvironmentId, userArn :: UserArn, permissions :: MemberPermissions } -> { environmentId :: EnvironmentId, userArn :: UserArn, permissions :: MemberPermissions }) -> CreateEnvironmentMembershipRequest
```

Constructs CreateEnvironmentMembershipRequest's fields from required parameters

#### `CreateEnvironmentMembershipResult`

``` purescript
newtype CreateEnvironmentMembershipResult
  = CreateEnvironmentMembershipResult { membership :: NullOrUndefined (EnvironmentMember) }
```

##### Instances
``` purescript
Newtype CreateEnvironmentMembershipResult _
Generic CreateEnvironmentMembershipResult _
Show CreateEnvironmentMembershipResult
Decode CreateEnvironmentMembershipResult
Encode CreateEnvironmentMembershipResult
```

#### `newCreateEnvironmentMembershipResult`

``` purescript
newCreateEnvironmentMembershipResult :: CreateEnvironmentMembershipResult
```

Constructs CreateEnvironmentMembershipResult from required parameters

#### `newCreateEnvironmentMembershipResult'`

``` purescript
newCreateEnvironmentMembershipResult' :: ({ membership :: NullOrUndefined (EnvironmentMember) } -> { membership :: NullOrUndefined (EnvironmentMember) }) -> CreateEnvironmentMembershipResult
```

Constructs CreateEnvironmentMembershipResult's fields from required parameters

#### `DeleteEnvironmentMembershipRequest`

``` purescript
newtype DeleteEnvironmentMembershipRequest
  = DeleteEnvironmentMembershipRequest { environmentId :: EnvironmentId, userArn :: UserArn }
```

##### Instances
``` purescript
Newtype DeleteEnvironmentMembershipRequest _
Generic DeleteEnvironmentMembershipRequest _
Show DeleteEnvironmentMembershipRequest
Decode DeleteEnvironmentMembershipRequest
Encode DeleteEnvironmentMembershipRequest
```

#### `newDeleteEnvironmentMembershipRequest`

``` purescript
newDeleteEnvironmentMembershipRequest :: EnvironmentId -> UserArn -> DeleteEnvironmentMembershipRequest
```

Constructs DeleteEnvironmentMembershipRequest from required parameters

#### `newDeleteEnvironmentMembershipRequest'`

``` purescript
newDeleteEnvironmentMembershipRequest' :: EnvironmentId -> UserArn -> ({ environmentId :: EnvironmentId, userArn :: UserArn } -> { environmentId :: EnvironmentId, userArn :: UserArn }) -> DeleteEnvironmentMembershipRequest
```

Constructs DeleteEnvironmentMembershipRequest's fields from required parameters

#### `DeleteEnvironmentMembershipResult`

``` purescript
newtype DeleteEnvironmentMembershipResult
  = DeleteEnvironmentMembershipResult NoArguments
```

##### Instances
``` purescript
Newtype DeleteEnvironmentMembershipResult _
Generic DeleteEnvironmentMembershipResult _
Show DeleteEnvironmentMembershipResult
Decode DeleteEnvironmentMembershipResult
Encode DeleteEnvironmentMembershipResult
```

#### `DeleteEnvironmentRequest`

``` purescript
newtype DeleteEnvironmentRequest
  = DeleteEnvironmentRequest { environmentId :: EnvironmentId }
```

##### Instances
``` purescript
Newtype DeleteEnvironmentRequest _
Generic DeleteEnvironmentRequest _
Show DeleteEnvironmentRequest
Decode DeleteEnvironmentRequest
Encode DeleteEnvironmentRequest
```

#### `newDeleteEnvironmentRequest`

``` purescript
newDeleteEnvironmentRequest :: EnvironmentId -> DeleteEnvironmentRequest
```

Constructs DeleteEnvironmentRequest from required parameters

#### `newDeleteEnvironmentRequest'`

``` purescript
newDeleteEnvironmentRequest' :: EnvironmentId -> ({ environmentId :: EnvironmentId } -> { environmentId :: EnvironmentId }) -> DeleteEnvironmentRequest
```

Constructs DeleteEnvironmentRequest's fields from required parameters

#### `DeleteEnvironmentResult`

``` purescript
newtype DeleteEnvironmentResult
  = DeleteEnvironmentResult NoArguments
```

##### Instances
``` purescript
Newtype DeleteEnvironmentResult _
Generic DeleteEnvironmentResult _
Show DeleteEnvironmentResult
Decode DeleteEnvironmentResult
Encode DeleteEnvironmentResult
```

#### `DescribeEnvironmentMembershipsRequest`

``` purescript
newtype DescribeEnvironmentMembershipsRequest
  = DescribeEnvironmentMembershipsRequest { userArn :: NullOrUndefined (UserArn), environmentId :: NullOrUndefined (EnvironmentId), permissions :: NullOrUndefined (PermissionsList), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (MaxResults) }
```

##### Instances
``` purescript
Newtype DescribeEnvironmentMembershipsRequest _
Generic DescribeEnvironmentMembershipsRequest _
Show DescribeEnvironmentMembershipsRequest
Decode DescribeEnvironmentMembershipsRequest
Encode DescribeEnvironmentMembershipsRequest
```

#### `newDescribeEnvironmentMembershipsRequest`

``` purescript
newDescribeEnvironmentMembershipsRequest :: DescribeEnvironmentMembershipsRequest
```

Constructs DescribeEnvironmentMembershipsRequest from required parameters

#### `newDescribeEnvironmentMembershipsRequest'`

``` purescript
newDescribeEnvironmentMembershipsRequest' :: ({ userArn :: NullOrUndefined (UserArn), environmentId :: NullOrUndefined (EnvironmentId), permissions :: NullOrUndefined (PermissionsList), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (MaxResults) } -> { userArn :: NullOrUndefined (UserArn), environmentId :: NullOrUndefined (EnvironmentId), permissions :: NullOrUndefined (PermissionsList), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (MaxResults) }) -> DescribeEnvironmentMembershipsRequest
```

Constructs DescribeEnvironmentMembershipsRequest's fields from required parameters

#### `DescribeEnvironmentMembershipsResult`

``` purescript
newtype DescribeEnvironmentMembershipsResult
  = DescribeEnvironmentMembershipsResult { memberships :: NullOrUndefined (EnvironmentMembersList), nextToken :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeEnvironmentMembershipsResult _
Generic DescribeEnvironmentMembershipsResult _
Show DescribeEnvironmentMembershipsResult
Decode DescribeEnvironmentMembershipsResult
Encode DescribeEnvironmentMembershipsResult
```

#### `newDescribeEnvironmentMembershipsResult`

``` purescript
newDescribeEnvironmentMembershipsResult :: DescribeEnvironmentMembershipsResult
```

Constructs DescribeEnvironmentMembershipsResult from required parameters

#### `newDescribeEnvironmentMembershipsResult'`

``` purescript
newDescribeEnvironmentMembershipsResult' :: ({ memberships :: NullOrUndefined (EnvironmentMembersList), nextToken :: NullOrUndefined (String) } -> { memberships :: NullOrUndefined (EnvironmentMembersList), nextToken :: NullOrUndefined (String) }) -> DescribeEnvironmentMembershipsResult
```

Constructs DescribeEnvironmentMembershipsResult's fields from required parameters

#### `DescribeEnvironmentStatusRequest`

``` purescript
newtype DescribeEnvironmentStatusRequest
  = DescribeEnvironmentStatusRequest { environmentId :: EnvironmentId }
```

##### Instances
``` purescript
Newtype DescribeEnvironmentStatusRequest _
Generic DescribeEnvironmentStatusRequest _
Show DescribeEnvironmentStatusRequest
Decode DescribeEnvironmentStatusRequest
Encode DescribeEnvironmentStatusRequest
```

#### `newDescribeEnvironmentStatusRequest`

``` purescript
newDescribeEnvironmentStatusRequest :: EnvironmentId -> DescribeEnvironmentStatusRequest
```

Constructs DescribeEnvironmentStatusRequest from required parameters

#### `newDescribeEnvironmentStatusRequest'`

``` purescript
newDescribeEnvironmentStatusRequest' :: EnvironmentId -> ({ environmentId :: EnvironmentId } -> { environmentId :: EnvironmentId }) -> DescribeEnvironmentStatusRequest
```

Constructs DescribeEnvironmentStatusRequest's fields from required parameters

#### `DescribeEnvironmentStatusResult`

``` purescript
newtype DescribeEnvironmentStatusResult
  = DescribeEnvironmentStatusResult { status :: NullOrUndefined (EnvironmentStatus), message :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeEnvironmentStatusResult _
Generic DescribeEnvironmentStatusResult _
Show DescribeEnvironmentStatusResult
Decode DescribeEnvironmentStatusResult
Encode DescribeEnvironmentStatusResult
```

#### `newDescribeEnvironmentStatusResult`

``` purescript
newDescribeEnvironmentStatusResult :: DescribeEnvironmentStatusResult
```

Constructs DescribeEnvironmentStatusResult from required parameters

#### `newDescribeEnvironmentStatusResult'`

``` purescript
newDescribeEnvironmentStatusResult' :: ({ status :: NullOrUndefined (EnvironmentStatus), message :: NullOrUndefined (String) } -> { status :: NullOrUndefined (EnvironmentStatus), message :: NullOrUndefined (String) }) -> DescribeEnvironmentStatusResult
```

Constructs DescribeEnvironmentStatusResult's fields from required parameters

#### `DescribeEnvironmentsRequest`

``` purescript
newtype DescribeEnvironmentsRequest
  = DescribeEnvironmentsRequest { environmentIds :: BoundedEnvironmentIdList }
```

##### Instances
``` purescript
Newtype DescribeEnvironmentsRequest _
Generic DescribeEnvironmentsRequest _
Show DescribeEnvironmentsRequest
Decode DescribeEnvironmentsRequest
Encode DescribeEnvironmentsRequest
```

#### `newDescribeEnvironmentsRequest`

``` purescript
newDescribeEnvironmentsRequest :: BoundedEnvironmentIdList -> DescribeEnvironmentsRequest
```

Constructs DescribeEnvironmentsRequest from required parameters

#### `newDescribeEnvironmentsRequest'`

``` purescript
newDescribeEnvironmentsRequest' :: BoundedEnvironmentIdList -> ({ environmentIds :: BoundedEnvironmentIdList } -> { environmentIds :: BoundedEnvironmentIdList }) -> DescribeEnvironmentsRequest
```

Constructs DescribeEnvironmentsRequest's fields from required parameters

#### `DescribeEnvironmentsResult`

``` purescript
newtype DescribeEnvironmentsResult
  = DescribeEnvironmentsResult { environments :: NullOrUndefined (EnvironmentList) }
```

##### Instances
``` purescript
Newtype DescribeEnvironmentsResult _
Generic DescribeEnvironmentsResult _
Show DescribeEnvironmentsResult
Decode DescribeEnvironmentsResult
Encode DescribeEnvironmentsResult
```

#### `newDescribeEnvironmentsResult`

``` purescript
newDescribeEnvironmentsResult :: DescribeEnvironmentsResult
```

Constructs DescribeEnvironmentsResult from required parameters

#### `newDescribeEnvironmentsResult'`

``` purescript
newDescribeEnvironmentsResult' :: ({ environments :: NullOrUndefined (EnvironmentList) } -> { environments :: NullOrUndefined (EnvironmentList) }) -> DescribeEnvironmentsResult
```

Constructs DescribeEnvironmentsResult's fields from required parameters

#### `Environment`

``` purescript
newtype Environment
  = Environment { id :: NullOrUndefined (EnvironmentId), name :: NullOrUndefined (EnvironmentName), description :: NullOrUndefined (EnvironmentDescription), "type" :: NullOrUndefined (EnvironmentType), arn :: NullOrUndefined (String), ownerArn :: NullOrUndefined (String) }
```

<p>Information about an AWS Cloud9 development environment.</p>

##### Instances
``` purescript
Newtype Environment _
Generic Environment _
Show Environment
Decode Environment
Encode Environment
```

#### `newEnvironment`

``` purescript
newEnvironment :: Environment
```

Constructs Environment from required parameters

#### `newEnvironment'`

``` purescript
newEnvironment' :: ({ id :: NullOrUndefined (EnvironmentId), name :: NullOrUndefined (EnvironmentName), description :: NullOrUndefined (EnvironmentDescription), "type" :: NullOrUndefined (EnvironmentType), arn :: NullOrUndefined (String), ownerArn :: NullOrUndefined (String) } -> { id :: NullOrUndefined (EnvironmentId), name :: NullOrUndefined (EnvironmentName), description :: NullOrUndefined (EnvironmentDescription), "type" :: NullOrUndefined (EnvironmentType), arn :: NullOrUndefined (String), ownerArn :: NullOrUndefined (String) }) -> Environment
```

Constructs Environment's fields from required parameters

#### `EnvironmentDescription`

``` purescript
newtype EnvironmentDescription
  = EnvironmentDescription String
```

##### Instances
``` purescript
Newtype EnvironmentDescription _
Generic EnvironmentDescription _
Show EnvironmentDescription
Decode EnvironmentDescription
Encode EnvironmentDescription
```

#### `EnvironmentId`

``` purescript
newtype EnvironmentId
  = EnvironmentId String
```

##### Instances
``` purescript
Newtype EnvironmentId _
Generic EnvironmentId _
Show EnvironmentId
Decode EnvironmentId
Encode EnvironmentId
```

#### `EnvironmentIdList`

``` purescript
newtype EnvironmentIdList
  = EnvironmentIdList (Array EnvironmentId)
```

##### Instances
``` purescript
Newtype EnvironmentIdList _
Generic EnvironmentIdList _
Show EnvironmentIdList
Decode EnvironmentIdList
Encode EnvironmentIdList
```

#### `EnvironmentList`

``` purescript
newtype EnvironmentList
  = EnvironmentList (Array Environment)
```

##### Instances
``` purescript
Newtype EnvironmentList _
Generic EnvironmentList _
Show EnvironmentList
Decode EnvironmentList
Encode EnvironmentList
```

#### `EnvironmentMember`

``` purescript
newtype EnvironmentMember
  = EnvironmentMember { permissions :: NullOrUndefined (Permissions), userId :: NullOrUndefined (String), userArn :: NullOrUndefined (UserArn), environmentId :: NullOrUndefined (EnvironmentId), lastAccess :: NullOrUndefined (Timestamp) }
```

<p>Information about an environment member for an AWS Cloud9 development environment.</p>

##### Instances
``` purescript
Newtype EnvironmentMember _
Generic EnvironmentMember _
Show EnvironmentMember
Decode EnvironmentMember
Encode EnvironmentMember
```

#### `newEnvironmentMember`

``` purescript
newEnvironmentMember :: EnvironmentMember
```

Constructs EnvironmentMember from required parameters

#### `newEnvironmentMember'`

``` purescript
newEnvironmentMember' :: ({ permissions :: NullOrUndefined (Permissions), userId :: NullOrUndefined (String), userArn :: NullOrUndefined (UserArn), environmentId :: NullOrUndefined (EnvironmentId), lastAccess :: NullOrUndefined (Timestamp) } -> { permissions :: NullOrUndefined (Permissions), userId :: NullOrUndefined (String), userArn :: NullOrUndefined (UserArn), environmentId :: NullOrUndefined (EnvironmentId), lastAccess :: NullOrUndefined (Timestamp) }) -> EnvironmentMember
```

Constructs EnvironmentMember's fields from required parameters

#### `EnvironmentMembersList`

``` purescript
newtype EnvironmentMembersList
  = EnvironmentMembersList (Array EnvironmentMember)
```

##### Instances
``` purescript
Newtype EnvironmentMembersList _
Generic EnvironmentMembersList _
Show EnvironmentMembersList
Decode EnvironmentMembersList
Encode EnvironmentMembersList
```

#### `EnvironmentName`

``` purescript
newtype EnvironmentName
  = EnvironmentName String
```

##### Instances
``` purescript
Newtype EnvironmentName _
Generic EnvironmentName _
Show EnvironmentName
Decode EnvironmentName
Encode EnvironmentName
```

#### `EnvironmentStatus`

``` purescript
newtype EnvironmentStatus
  = EnvironmentStatus String
```

##### Instances
``` purescript
Newtype EnvironmentStatus _
Generic EnvironmentStatus _
Show EnvironmentStatus
Decode EnvironmentStatus
Encode EnvironmentStatus
```

#### `EnvironmentType`

``` purescript
newtype EnvironmentType
  = EnvironmentType String
```

##### Instances
``` purescript
Newtype EnvironmentType _
Generic EnvironmentType _
Show EnvironmentType
Decode EnvironmentType
Encode EnvironmentType
```

#### `ForbiddenException`

``` purescript
newtype ForbiddenException
  = ForbiddenException NoArguments
```

<p>An access permissions issue occurred.</p>

##### Instances
``` purescript
Newtype ForbiddenException _
Generic ForbiddenException _
Show ForbiddenException
Decode ForbiddenException
Encode ForbiddenException
```

#### `InstanceType`

``` purescript
newtype InstanceType
  = InstanceType String
```

##### Instances
``` purescript
Newtype InstanceType _
Generic InstanceType _
Show InstanceType
Decode InstanceType
Encode InstanceType
```

#### `InternalServerErrorException`

``` purescript
newtype InternalServerErrorException
  = InternalServerErrorException NoArguments
```

<p>An internal server error occurred.</p>

##### Instances
``` purescript
Newtype InternalServerErrorException _
Generic InternalServerErrorException _
Show InternalServerErrorException
Decode InternalServerErrorException
Encode InternalServerErrorException
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException NoArguments
```

<p>A service limit was exceeded.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `ListEnvironmentsRequest`

``` purescript
newtype ListEnvironmentsRequest
  = ListEnvironmentsRequest { nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (MaxResults) }
```

##### Instances
``` purescript
Newtype ListEnvironmentsRequest _
Generic ListEnvironmentsRequest _
Show ListEnvironmentsRequest
Decode ListEnvironmentsRequest
Encode ListEnvironmentsRequest
```

#### `newListEnvironmentsRequest`

``` purescript
newListEnvironmentsRequest :: ListEnvironmentsRequest
```

Constructs ListEnvironmentsRequest from required parameters

#### `newListEnvironmentsRequest'`

``` purescript
newListEnvironmentsRequest' :: ({ nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (MaxResults) } -> { nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (MaxResults) }) -> ListEnvironmentsRequest
```

Constructs ListEnvironmentsRequest's fields from required parameters

#### `ListEnvironmentsResult`

``` purescript
newtype ListEnvironmentsResult
  = ListEnvironmentsResult { nextToken :: NullOrUndefined (String), environmentIds :: NullOrUndefined (EnvironmentIdList) }
```

##### Instances
``` purescript
Newtype ListEnvironmentsResult _
Generic ListEnvironmentsResult _
Show ListEnvironmentsResult
Decode ListEnvironmentsResult
Encode ListEnvironmentsResult
```

#### `newListEnvironmentsResult`

``` purescript
newListEnvironmentsResult :: ListEnvironmentsResult
```

Constructs ListEnvironmentsResult from required parameters

#### `newListEnvironmentsResult'`

``` purescript
newListEnvironmentsResult' :: ({ nextToken :: NullOrUndefined (String), environmentIds :: NullOrUndefined (EnvironmentIdList) } -> { nextToken :: NullOrUndefined (String), environmentIds :: NullOrUndefined (EnvironmentIdList) }) -> ListEnvironmentsResult
```

Constructs ListEnvironmentsResult's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MemberPermissions`

``` purescript
newtype MemberPermissions
  = MemberPermissions String
```

##### Instances
``` purescript
Newtype MemberPermissions _
Generic MemberPermissions _
Show MemberPermissions
Decode MemberPermissions
Encode MemberPermissions
```

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException NoArguments
```

<p>The target resource cannot be found.</p>

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `Permissions`

``` purescript
newtype Permissions
  = Permissions String
```

##### Instances
``` purescript
Newtype Permissions _
Generic Permissions _
Show Permissions
Decode Permissions
Encode Permissions
```

#### `PermissionsList`

``` purescript
newtype PermissionsList
  = PermissionsList (Array Permissions)
```

##### Instances
``` purescript
Newtype PermissionsList _
Generic PermissionsList _
Show PermissionsList
Decode PermissionsList
Encode PermissionsList
```

#### `SubnetId`

``` purescript
newtype SubnetId
  = SubnetId String
```

##### Instances
``` purescript
Newtype SubnetId _
Generic SubnetId _
Show SubnetId
Decode SubnetId
Encode SubnetId
```

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException NoArguments
```

<p>Too many service requests were made over the given time period.</p>

##### Instances
``` purescript
Newtype TooManyRequestsException _
Generic TooManyRequestsException _
Show TooManyRequestsException
Decode TooManyRequestsException
Encode TooManyRequestsException
```

#### `UpdateEnvironmentMembershipRequest`

``` purescript
newtype UpdateEnvironmentMembershipRequest
  = UpdateEnvironmentMembershipRequest { environmentId :: EnvironmentId, userArn :: UserArn, permissions :: MemberPermissions }
```

##### Instances
``` purescript
Newtype UpdateEnvironmentMembershipRequest _
Generic UpdateEnvironmentMembershipRequest _
Show UpdateEnvironmentMembershipRequest
Decode UpdateEnvironmentMembershipRequest
Encode UpdateEnvironmentMembershipRequest
```

#### `newUpdateEnvironmentMembershipRequest`

``` purescript
newUpdateEnvironmentMembershipRequest :: EnvironmentId -> MemberPermissions -> UserArn -> UpdateEnvironmentMembershipRequest
```

Constructs UpdateEnvironmentMembershipRequest from required parameters

#### `newUpdateEnvironmentMembershipRequest'`

``` purescript
newUpdateEnvironmentMembershipRequest' :: EnvironmentId -> MemberPermissions -> UserArn -> ({ environmentId :: EnvironmentId, userArn :: UserArn, permissions :: MemberPermissions } -> { environmentId :: EnvironmentId, userArn :: UserArn, permissions :: MemberPermissions }) -> UpdateEnvironmentMembershipRequest
```

Constructs UpdateEnvironmentMembershipRequest's fields from required parameters

#### `UpdateEnvironmentMembershipResult`

``` purescript
newtype UpdateEnvironmentMembershipResult
  = UpdateEnvironmentMembershipResult { membership :: NullOrUndefined (EnvironmentMember) }
```

##### Instances
``` purescript
Newtype UpdateEnvironmentMembershipResult _
Generic UpdateEnvironmentMembershipResult _
Show UpdateEnvironmentMembershipResult
Decode UpdateEnvironmentMembershipResult
Encode UpdateEnvironmentMembershipResult
```

#### `newUpdateEnvironmentMembershipResult`

``` purescript
newUpdateEnvironmentMembershipResult :: UpdateEnvironmentMembershipResult
```

Constructs UpdateEnvironmentMembershipResult from required parameters

#### `newUpdateEnvironmentMembershipResult'`

``` purescript
newUpdateEnvironmentMembershipResult' :: ({ membership :: NullOrUndefined (EnvironmentMember) } -> { membership :: NullOrUndefined (EnvironmentMember) }) -> UpdateEnvironmentMembershipResult
```

Constructs UpdateEnvironmentMembershipResult's fields from required parameters

#### `UpdateEnvironmentRequest`

``` purescript
newtype UpdateEnvironmentRequest
  = UpdateEnvironmentRequest { environmentId :: EnvironmentId, name :: NullOrUndefined (EnvironmentName), description :: NullOrUndefined (EnvironmentDescription) }
```

##### Instances
``` purescript
Newtype UpdateEnvironmentRequest _
Generic UpdateEnvironmentRequest _
Show UpdateEnvironmentRequest
Decode UpdateEnvironmentRequest
Encode UpdateEnvironmentRequest
```

#### `newUpdateEnvironmentRequest`

``` purescript
newUpdateEnvironmentRequest :: EnvironmentId -> UpdateEnvironmentRequest
```

Constructs UpdateEnvironmentRequest from required parameters

#### `newUpdateEnvironmentRequest'`

``` purescript
newUpdateEnvironmentRequest' :: EnvironmentId -> ({ environmentId :: EnvironmentId, name :: NullOrUndefined (EnvironmentName), description :: NullOrUndefined (EnvironmentDescription) } -> { environmentId :: EnvironmentId, name :: NullOrUndefined (EnvironmentName), description :: NullOrUndefined (EnvironmentDescription) }) -> UpdateEnvironmentRequest
```

Constructs UpdateEnvironmentRequest's fields from required parameters

#### `UpdateEnvironmentResult`

``` purescript
newtype UpdateEnvironmentResult
  = UpdateEnvironmentResult NoArguments
```

##### Instances
``` purescript
Newtype UpdateEnvironmentResult _
Generic UpdateEnvironmentResult _
Show UpdateEnvironmentResult
Decode UpdateEnvironmentResult
Encode UpdateEnvironmentResult
```

#### `UserArn`

``` purescript
newtype UserArn
  = UserArn String
```

##### Instances
``` purescript
Newtype UserArn _
Generic UserArn _
Show UserArn
Decode UserArn
Encode UserArn
```


