## Module AWS.Cloud9.Requests

#### `createEnvironmentEC2`

``` purescript
createEnvironmentEC2 :: forall eff. Service -> CreateEnvironmentEC2Request -> Aff (exception :: EXCEPTION | eff) CreateEnvironmentEC2Result
```

<p>Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.</p>

#### `createEnvironmentMembership`

``` purescript
createEnvironmentMembership :: forall eff. Service -> CreateEnvironmentMembershipRequest -> Aff (exception :: EXCEPTION | eff) CreateEnvironmentMembershipResult
```

<p>Adds an environment member to an AWS Cloud9 development environment.</p>

#### `deleteEnvironment`

``` purescript
deleteEnvironment :: forall eff. Service -> DeleteEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) DeleteEnvironmentResult
```

<p>Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.</p>

#### `deleteEnvironmentMembership`

``` purescript
deleteEnvironmentMembership :: forall eff. Service -> DeleteEnvironmentMembershipRequest -> Aff (exception :: EXCEPTION | eff) DeleteEnvironmentMembershipResult
```

<p>Deletes an environment member from an AWS Cloud9 development environment.</p>

#### `describeEnvironmentMemberships`

``` purescript
describeEnvironmentMemberships :: forall eff. Service -> DescribeEnvironmentMembershipsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentMembershipsResult
```

<p>Gets information about environment members for an AWS Cloud9 development environment.</p>

#### `describeEnvironmentStatus`

``` purescript
describeEnvironmentStatus :: forall eff. Service -> DescribeEnvironmentStatusRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentStatusResult
```

<p>Gets status information for an AWS Cloud9 development environment.</p>

#### `describeEnvironments`

``` purescript
describeEnvironments :: forall eff. Service -> DescribeEnvironmentsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentsResult
```

<p>Gets information about AWS Cloud9 development environments.</p>

#### `listEnvironments`

``` purescript
listEnvironments :: forall eff. Service -> ListEnvironmentsRequest -> Aff (exception :: EXCEPTION | eff) ListEnvironmentsResult
```

<p>Gets a list of AWS Cloud9 development environment identifiers.</p>

#### `updateEnvironment`

``` purescript
updateEnvironment :: forall eff. Service -> UpdateEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) UpdateEnvironmentResult
```

<p>Changes the settings of an existing AWS Cloud9 development environment.</p>

#### `updateEnvironmentMembership`

``` purescript
updateEnvironmentMembership :: forall eff. Service -> UpdateEnvironmentMembershipRequest -> Aff (exception :: EXCEPTION | eff) UpdateEnvironmentMembershipResult
```

<p>Changes the settings of an existing environment member for an AWS Cloud9 development environment.</p>


