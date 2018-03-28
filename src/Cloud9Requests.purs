
module AWS.Cloud9.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Cloud9 as Cloud9
import AWS.Cloud9.Types as Cloud9Types


-- | <p>Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.</p>
createEnvironmentEC2 :: forall eff. Cloud9.Service -> Cloud9Types.CreateEnvironmentEC2Request -> Aff (exception :: EXCEPTION | eff) Cloud9Types.CreateEnvironmentEC2Result
createEnvironmentEC2 (Cloud9.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createEnvironmentEC2"


-- | <p>Adds an environment member to an AWS Cloud9 development environment.</p>
createEnvironmentMembership :: forall eff. Cloud9.Service -> Cloud9Types.CreateEnvironmentMembershipRequest -> Aff (exception :: EXCEPTION | eff) Cloud9Types.CreateEnvironmentMembershipResult
createEnvironmentMembership (Cloud9.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createEnvironmentMembership"


-- | <p>Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.</p>
deleteEnvironment :: forall eff. Cloud9.Service -> Cloud9Types.DeleteEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) Cloud9Types.DeleteEnvironmentResult
deleteEnvironment (Cloud9.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteEnvironment"


-- | <p>Deletes an environment member from an AWS Cloud9 development environment.</p>
deleteEnvironmentMembership :: forall eff. Cloud9.Service -> Cloud9Types.DeleteEnvironmentMembershipRequest -> Aff (exception :: EXCEPTION | eff) Cloud9Types.DeleteEnvironmentMembershipResult
deleteEnvironmentMembership (Cloud9.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteEnvironmentMembership"


-- | <p>Gets information about environment members for an AWS Cloud9 development environment.</p>
describeEnvironmentMemberships :: forall eff. Cloud9.Service -> Cloud9Types.DescribeEnvironmentMembershipsRequest -> Aff (exception :: EXCEPTION | eff) Cloud9Types.DescribeEnvironmentMembershipsResult
describeEnvironmentMemberships (Cloud9.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEnvironmentMemberships"


-- | <p>Gets status information for an AWS Cloud9 development environment.</p>
describeEnvironmentStatus :: forall eff. Cloud9.Service -> Cloud9Types.DescribeEnvironmentStatusRequest -> Aff (exception :: EXCEPTION | eff) Cloud9Types.DescribeEnvironmentStatusResult
describeEnvironmentStatus (Cloud9.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEnvironmentStatus"


-- | <p>Gets information about AWS Cloud9 development environments.</p>
describeEnvironments :: forall eff. Cloud9.Service -> Cloud9Types.DescribeEnvironmentsRequest -> Aff (exception :: EXCEPTION | eff) Cloud9Types.DescribeEnvironmentsResult
describeEnvironments (Cloud9.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEnvironments"


-- | <p>Gets a list of AWS Cloud9 development environment identifiers.</p>
listEnvironments :: forall eff. Cloud9.Service -> Cloud9Types.ListEnvironmentsRequest -> Aff (exception :: EXCEPTION | eff) Cloud9Types.ListEnvironmentsResult
listEnvironments (Cloud9.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listEnvironments"


-- | <p>Changes the settings of an existing AWS Cloud9 development environment.</p>
updateEnvironment :: forall eff. Cloud9.Service -> Cloud9Types.UpdateEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) Cloud9Types.UpdateEnvironmentResult
updateEnvironment (Cloud9.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateEnvironment"


-- | <p>Changes the settings of an existing environment member for an AWS Cloud9 development environment.</p>
updateEnvironmentMembership :: forall eff. Cloud9.Service -> Cloud9Types.UpdateEnvironmentMembershipRequest -> Aff (exception :: EXCEPTION | eff) Cloud9Types.UpdateEnvironmentMembershipResult
updateEnvironmentMembership (Cloud9.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateEnvironmentMembership"
