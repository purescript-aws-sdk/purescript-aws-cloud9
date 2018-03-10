

-- | <fullname>AWS Cloud9</fullname> <p>AWS Cloud9 is a collection of tools that you can use to code, build, run, test, debug, and release software in the cloud.</p> <p>For more information about AWS Cloud9, see the <a href="https://docs.aws.amazon.com/cloud9/latest/user-guide">AWS Cloud9 User Guide</a>.</p> <p>AWS Cloud9 supports these operations:</p> <ul> <li> <p> <code>CreateEnvironmentEC2</code>: Creates an AWS Cloud9 development environment, launches an Amazon EC2 instance, and then connects from the instance to the environment.</p> </li> <li> <p> <code>CreateEnvironmentMembership</code>: Adds an environment member to an environment.</p> </li> <li> <p> <code>DeleteEnvironment</code>: Deletes an environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.</p> </li> <li> <p> <code>DeleteEnvironmentMembership</code>: Deletes an environment member from an environment.</p> </li> <li> <p> <code>DescribeEnvironmentMemberships</code>: Gets information about environment members for an environment.</p> </li> <li> <p> <code>DescribeEnvironments</code>: Gets information about environments.</p> </li> <li> <p> <code>DescribeEnvironmentStatus</code>: Gets status information for an environment.</p> </li> <li> <p> <code>ListEnvironments</code>: Gets a list of environment identifiers.</p> </li> <li> <p> <code>UpdateEnvironment</code>: Changes the settings of an existing environment.</p> </li> <li> <p> <code>UpdateEnvironmentMembership</code>: Changes the settings of an existing environment member for an environment.</p> </li> </ul>
module AWS.Cloud9 where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "Cloud9" :: String


-- | <p>Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.</p>
createEnvironmentEC2 :: forall eff. CreateEnvironmentEC2Request -> Aff (exception :: EXCEPTION | eff) CreateEnvironmentEC2Result
createEnvironmentEC2 = Request.request serviceName "createEnvironmentEC2" 


-- | <p>Adds an environment member to an AWS Cloud9 development environment.</p>
createEnvironmentMembership :: forall eff. CreateEnvironmentMembershipRequest -> Aff (exception :: EXCEPTION | eff) CreateEnvironmentMembershipResult
createEnvironmentMembership = Request.request serviceName "createEnvironmentMembership" 


-- | <p>Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.</p>
deleteEnvironment :: forall eff. DeleteEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) DeleteEnvironmentResult
deleteEnvironment = Request.request serviceName "deleteEnvironment" 


-- | <p>Deletes an environment member from an AWS Cloud9 development environment.</p>
deleteEnvironmentMembership :: forall eff. DeleteEnvironmentMembershipRequest -> Aff (exception :: EXCEPTION | eff) DeleteEnvironmentMembershipResult
deleteEnvironmentMembership = Request.request serviceName "deleteEnvironmentMembership" 


-- | <p>Gets information about environment members for an AWS Cloud9 development environment.</p>
describeEnvironmentMemberships :: forall eff. DescribeEnvironmentMembershipsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentMembershipsResult
describeEnvironmentMemberships = Request.request serviceName "describeEnvironmentMemberships" 


-- | <p>Gets status information for an AWS Cloud9 development environment.</p>
describeEnvironmentStatus :: forall eff. DescribeEnvironmentStatusRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentStatusResult
describeEnvironmentStatus = Request.request serviceName "describeEnvironmentStatus" 


-- | <p>Gets information about AWS Cloud9 development environments.</p>
describeEnvironments :: forall eff. DescribeEnvironmentsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentsResult
describeEnvironments = Request.request serviceName "describeEnvironments" 


-- | <p>Gets a list of AWS Cloud9 development environment identifiers.</p>
listEnvironments :: forall eff. ListEnvironmentsRequest -> Aff (exception :: EXCEPTION | eff) ListEnvironmentsResult
listEnvironments = Request.request serviceName "listEnvironments" 


-- | <p>Changes the settings of an existing AWS Cloud9 development environment.</p>
updateEnvironment :: forall eff. UpdateEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) UpdateEnvironmentResult
updateEnvironment = Request.request serviceName "updateEnvironment" 


-- | <p>Changes the settings of an existing environment member for an AWS Cloud9 development environment.</p>
updateEnvironmentMembership :: forall eff. UpdateEnvironmentMembershipRequest -> Aff (exception :: EXCEPTION | eff) UpdateEnvironmentMembershipResult
updateEnvironmentMembership = Request.request serviceName "updateEnvironmentMembership" 


newtype AutomaticStopTimeMinutes = AutomaticStopTimeMinutes Int
derive instance newtypeAutomaticStopTimeMinutes :: Newtype AutomaticStopTimeMinutes _
derive instance repGenericAutomaticStopTimeMinutes :: Generic AutomaticStopTimeMinutes _
instance showAutomaticStopTimeMinutes :: Show AutomaticStopTimeMinutes where
  show = genericShow
instance decodeAutomaticStopTimeMinutes :: Decode AutomaticStopTimeMinutes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAutomaticStopTimeMinutes :: Encode AutomaticStopTimeMinutes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The target request is invalid.</p>
newtype BadRequestException = BadRequestException Types.NoArguments
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where
  show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBadRequestException :: Encode BadRequestException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype BoundedEnvironmentIdList = BoundedEnvironmentIdList (Array EnvironmentId)
derive instance newtypeBoundedEnvironmentIdList :: Newtype BoundedEnvironmentIdList _
derive instance repGenericBoundedEnvironmentIdList :: Generic BoundedEnvironmentIdList _
instance showBoundedEnvironmentIdList :: Show BoundedEnvironmentIdList where
  show = genericShow
instance decodeBoundedEnvironmentIdList :: Decode BoundedEnvironmentIdList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBoundedEnvironmentIdList :: Encode BoundedEnvironmentIdList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ClientRequestToken = ClientRequestToken String
derive instance newtypeClientRequestToken :: Newtype ClientRequestToken _
derive instance repGenericClientRequestToken :: Generic ClientRequestToken _
instance showClientRequestToken :: Show ClientRequestToken where
  show = genericShow
instance decodeClientRequestToken :: Decode ClientRequestToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClientRequestToken :: Encode ClientRequestToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A conflict occurred.</p>
newtype ConflictException = ConflictException Types.NoArguments
derive instance newtypeConflictException :: Newtype ConflictException _
derive instance repGenericConflictException :: Generic ConflictException _
instance showConflictException :: Show ConflictException where
  show = genericShow
instance decodeConflictException :: Decode ConflictException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConflictException :: Encode ConflictException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateEnvironmentEC2Request = CreateEnvironmentEC2Request 
  { "name" :: (EnvironmentName)
  , "description" :: NullOrUndefined.NullOrUndefined (EnvironmentDescription)
  , "clientRequestToken" :: NullOrUndefined.NullOrUndefined (ClientRequestToken)
  , "instanceType" :: (InstanceType)
  , "subnetId" :: NullOrUndefined.NullOrUndefined (SubnetId)
  , "automaticStopTimeMinutes" :: NullOrUndefined.NullOrUndefined (AutomaticStopTimeMinutes)
  , "ownerArn" :: NullOrUndefined.NullOrUndefined (UserArn)
  }
derive instance newtypeCreateEnvironmentEC2Request :: Newtype CreateEnvironmentEC2Request _
derive instance repGenericCreateEnvironmentEC2Request :: Generic CreateEnvironmentEC2Request _
instance showCreateEnvironmentEC2Request :: Show CreateEnvironmentEC2Request where
  show = genericShow
instance decodeCreateEnvironmentEC2Request :: Decode CreateEnvironmentEC2Request where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateEnvironmentEC2Request :: Encode CreateEnvironmentEC2Request where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateEnvironmentEC2Request from required parameters
newCreateEnvironmentEC2Request :: InstanceType -> EnvironmentName -> CreateEnvironmentEC2Request
newCreateEnvironmentEC2Request _instanceType _name = CreateEnvironmentEC2Request { "instanceType": _instanceType, "name": _name, "automaticStopTimeMinutes": (NullOrUndefined Nothing), "clientRequestToken": (NullOrUndefined Nothing), "description": (NullOrUndefined Nothing), "ownerArn": (NullOrUndefined Nothing), "subnetId": (NullOrUndefined Nothing) }

-- | Constructs CreateEnvironmentEC2Request's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEnvironmentEC2Request' :: InstanceType -> EnvironmentName -> ( { "name" :: (EnvironmentName) , "description" :: NullOrUndefined.NullOrUndefined (EnvironmentDescription) , "clientRequestToken" :: NullOrUndefined.NullOrUndefined (ClientRequestToken) , "instanceType" :: (InstanceType) , "subnetId" :: NullOrUndefined.NullOrUndefined (SubnetId) , "automaticStopTimeMinutes" :: NullOrUndefined.NullOrUndefined (AutomaticStopTimeMinutes) , "ownerArn" :: NullOrUndefined.NullOrUndefined (UserArn) } -> {"name" :: (EnvironmentName) , "description" :: NullOrUndefined.NullOrUndefined (EnvironmentDescription) , "clientRequestToken" :: NullOrUndefined.NullOrUndefined (ClientRequestToken) , "instanceType" :: (InstanceType) , "subnetId" :: NullOrUndefined.NullOrUndefined (SubnetId) , "automaticStopTimeMinutes" :: NullOrUndefined.NullOrUndefined (AutomaticStopTimeMinutes) , "ownerArn" :: NullOrUndefined.NullOrUndefined (UserArn) } ) -> CreateEnvironmentEC2Request
newCreateEnvironmentEC2Request' _instanceType _name customize = (CreateEnvironmentEC2Request <<< customize) { "instanceType": _instanceType, "name": _name, "automaticStopTimeMinutes": (NullOrUndefined Nothing), "clientRequestToken": (NullOrUndefined Nothing), "description": (NullOrUndefined Nothing), "ownerArn": (NullOrUndefined Nothing), "subnetId": (NullOrUndefined Nothing) }



newtype CreateEnvironmentEC2Result = CreateEnvironmentEC2Result 
  { "environmentId" :: NullOrUndefined.NullOrUndefined (EnvironmentId)
  }
derive instance newtypeCreateEnvironmentEC2Result :: Newtype CreateEnvironmentEC2Result _
derive instance repGenericCreateEnvironmentEC2Result :: Generic CreateEnvironmentEC2Result _
instance showCreateEnvironmentEC2Result :: Show CreateEnvironmentEC2Result where
  show = genericShow
instance decodeCreateEnvironmentEC2Result :: Decode CreateEnvironmentEC2Result where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateEnvironmentEC2Result :: Encode CreateEnvironmentEC2Result where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateEnvironmentEC2Result from required parameters
newCreateEnvironmentEC2Result :: CreateEnvironmentEC2Result
newCreateEnvironmentEC2Result  = CreateEnvironmentEC2Result { "environmentId": (NullOrUndefined Nothing) }

-- | Constructs CreateEnvironmentEC2Result's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEnvironmentEC2Result' :: ( { "environmentId" :: NullOrUndefined.NullOrUndefined (EnvironmentId) } -> {"environmentId" :: NullOrUndefined.NullOrUndefined (EnvironmentId) } ) -> CreateEnvironmentEC2Result
newCreateEnvironmentEC2Result'  customize = (CreateEnvironmentEC2Result <<< customize) { "environmentId": (NullOrUndefined Nothing) }



newtype CreateEnvironmentMembershipRequest = CreateEnvironmentMembershipRequest 
  { "environmentId" :: (EnvironmentId)
  , "userArn" :: (UserArn)
  , "permissions" :: (MemberPermissions)
  }
derive instance newtypeCreateEnvironmentMembershipRequest :: Newtype CreateEnvironmentMembershipRequest _
derive instance repGenericCreateEnvironmentMembershipRequest :: Generic CreateEnvironmentMembershipRequest _
instance showCreateEnvironmentMembershipRequest :: Show CreateEnvironmentMembershipRequest where
  show = genericShow
instance decodeCreateEnvironmentMembershipRequest :: Decode CreateEnvironmentMembershipRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateEnvironmentMembershipRequest :: Encode CreateEnvironmentMembershipRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateEnvironmentMembershipRequest from required parameters
newCreateEnvironmentMembershipRequest :: EnvironmentId -> MemberPermissions -> UserArn -> CreateEnvironmentMembershipRequest
newCreateEnvironmentMembershipRequest _environmentId _permissions _userArn = CreateEnvironmentMembershipRequest { "environmentId": _environmentId, "permissions": _permissions, "userArn": _userArn }

-- | Constructs CreateEnvironmentMembershipRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEnvironmentMembershipRequest' :: EnvironmentId -> MemberPermissions -> UserArn -> ( { "environmentId" :: (EnvironmentId) , "userArn" :: (UserArn) , "permissions" :: (MemberPermissions) } -> {"environmentId" :: (EnvironmentId) , "userArn" :: (UserArn) , "permissions" :: (MemberPermissions) } ) -> CreateEnvironmentMembershipRequest
newCreateEnvironmentMembershipRequest' _environmentId _permissions _userArn customize = (CreateEnvironmentMembershipRequest <<< customize) { "environmentId": _environmentId, "permissions": _permissions, "userArn": _userArn }



newtype CreateEnvironmentMembershipResult = CreateEnvironmentMembershipResult 
  { "membership" :: NullOrUndefined.NullOrUndefined (EnvironmentMember)
  }
derive instance newtypeCreateEnvironmentMembershipResult :: Newtype CreateEnvironmentMembershipResult _
derive instance repGenericCreateEnvironmentMembershipResult :: Generic CreateEnvironmentMembershipResult _
instance showCreateEnvironmentMembershipResult :: Show CreateEnvironmentMembershipResult where
  show = genericShow
instance decodeCreateEnvironmentMembershipResult :: Decode CreateEnvironmentMembershipResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateEnvironmentMembershipResult :: Encode CreateEnvironmentMembershipResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateEnvironmentMembershipResult from required parameters
newCreateEnvironmentMembershipResult :: CreateEnvironmentMembershipResult
newCreateEnvironmentMembershipResult  = CreateEnvironmentMembershipResult { "membership": (NullOrUndefined Nothing) }

-- | Constructs CreateEnvironmentMembershipResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEnvironmentMembershipResult' :: ( { "membership" :: NullOrUndefined.NullOrUndefined (EnvironmentMember) } -> {"membership" :: NullOrUndefined.NullOrUndefined (EnvironmentMember) } ) -> CreateEnvironmentMembershipResult
newCreateEnvironmentMembershipResult'  customize = (CreateEnvironmentMembershipResult <<< customize) { "membership": (NullOrUndefined Nothing) }



newtype DeleteEnvironmentMembershipRequest = DeleteEnvironmentMembershipRequest 
  { "environmentId" :: (EnvironmentId)
  , "userArn" :: (UserArn)
  }
derive instance newtypeDeleteEnvironmentMembershipRequest :: Newtype DeleteEnvironmentMembershipRequest _
derive instance repGenericDeleteEnvironmentMembershipRequest :: Generic DeleteEnvironmentMembershipRequest _
instance showDeleteEnvironmentMembershipRequest :: Show DeleteEnvironmentMembershipRequest where
  show = genericShow
instance decodeDeleteEnvironmentMembershipRequest :: Decode DeleteEnvironmentMembershipRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteEnvironmentMembershipRequest :: Encode DeleteEnvironmentMembershipRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteEnvironmentMembershipRequest from required parameters
newDeleteEnvironmentMembershipRequest :: EnvironmentId -> UserArn -> DeleteEnvironmentMembershipRequest
newDeleteEnvironmentMembershipRequest _environmentId _userArn = DeleteEnvironmentMembershipRequest { "environmentId": _environmentId, "userArn": _userArn }

-- | Constructs DeleteEnvironmentMembershipRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteEnvironmentMembershipRequest' :: EnvironmentId -> UserArn -> ( { "environmentId" :: (EnvironmentId) , "userArn" :: (UserArn) } -> {"environmentId" :: (EnvironmentId) , "userArn" :: (UserArn) } ) -> DeleteEnvironmentMembershipRequest
newDeleteEnvironmentMembershipRequest' _environmentId _userArn customize = (DeleteEnvironmentMembershipRequest <<< customize) { "environmentId": _environmentId, "userArn": _userArn }



newtype DeleteEnvironmentMembershipResult = DeleteEnvironmentMembershipResult Types.NoArguments
derive instance newtypeDeleteEnvironmentMembershipResult :: Newtype DeleteEnvironmentMembershipResult _
derive instance repGenericDeleteEnvironmentMembershipResult :: Generic DeleteEnvironmentMembershipResult _
instance showDeleteEnvironmentMembershipResult :: Show DeleteEnvironmentMembershipResult where
  show = genericShow
instance decodeDeleteEnvironmentMembershipResult :: Decode DeleteEnvironmentMembershipResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteEnvironmentMembershipResult :: Encode DeleteEnvironmentMembershipResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteEnvironmentRequest = DeleteEnvironmentRequest 
  { "environmentId" :: (EnvironmentId)
  }
derive instance newtypeDeleteEnvironmentRequest :: Newtype DeleteEnvironmentRequest _
derive instance repGenericDeleteEnvironmentRequest :: Generic DeleteEnvironmentRequest _
instance showDeleteEnvironmentRequest :: Show DeleteEnvironmentRequest where
  show = genericShow
instance decodeDeleteEnvironmentRequest :: Decode DeleteEnvironmentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteEnvironmentRequest :: Encode DeleteEnvironmentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteEnvironmentRequest from required parameters
newDeleteEnvironmentRequest :: EnvironmentId -> DeleteEnvironmentRequest
newDeleteEnvironmentRequest _environmentId = DeleteEnvironmentRequest { "environmentId": _environmentId }

-- | Constructs DeleteEnvironmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteEnvironmentRequest' :: EnvironmentId -> ( { "environmentId" :: (EnvironmentId) } -> {"environmentId" :: (EnvironmentId) } ) -> DeleteEnvironmentRequest
newDeleteEnvironmentRequest' _environmentId customize = (DeleteEnvironmentRequest <<< customize) { "environmentId": _environmentId }



newtype DeleteEnvironmentResult = DeleteEnvironmentResult Types.NoArguments
derive instance newtypeDeleteEnvironmentResult :: Newtype DeleteEnvironmentResult _
derive instance repGenericDeleteEnvironmentResult :: Generic DeleteEnvironmentResult _
instance showDeleteEnvironmentResult :: Show DeleteEnvironmentResult where
  show = genericShow
instance decodeDeleteEnvironmentResult :: Decode DeleteEnvironmentResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteEnvironmentResult :: Encode DeleteEnvironmentResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DescribeEnvironmentMembershipsRequest = DescribeEnvironmentMembershipsRequest 
  { "userArn" :: NullOrUndefined.NullOrUndefined (UserArn)
  , "environmentId" :: NullOrUndefined.NullOrUndefined (EnvironmentId)
  , "permissions" :: NullOrUndefined.NullOrUndefined (PermissionsList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeDescribeEnvironmentMembershipsRequest :: Newtype DescribeEnvironmentMembershipsRequest _
derive instance repGenericDescribeEnvironmentMembershipsRequest :: Generic DescribeEnvironmentMembershipsRequest _
instance showDescribeEnvironmentMembershipsRequest :: Show DescribeEnvironmentMembershipsRequest where
  show = genericShow
instance decodeDescribeEnvironmentMembershipsRequest :: Decode DescribeEnvironmentMembershipsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeEnvironmentMembershipsRequest :: Encode DescribeEnvironmentMembershipsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeEnvironmentMembershipsRequest from required parameters
newDescribeEnvironmentMembershipsRequest :: DescribeEnvironmentMembershipsRequest
newDescribeEnvironmentMembershipsRequest  = DescribeEnvironmentMembershipsRequest { "environmentId": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "permissions": (NullOrUndefined Nothing), "userArn": (NullOrUndefined Nothing) }

-- | Constructs DescribeEnvironmentMembershipsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentMembershipsRequest' :: ( { "userArn" :: NullOrUndefined.NullOrUndefined (UserArn) , "environmentId" :: NullOrUndefined.NullOrUndefined (EnvironmentId) , "permissions" :: NullOrUndefined.NullOrUndefined (PermissionsList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"userArn" :: NullOrUndefined.NullOrUndefined (UserArn) , "environmentId" :: NullOrUndefined.NullOrUndefined (EnvironmentId) , "permissions" :: NullOrUndefined.NullOrUndefined (PermissionsList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> DescribeEnvironmentMembershipsRequest
newDescribeEnvironmentMembershipsRequest'  customize = (DescribeEnvironmentMembershipsRequest <<< customize) { "environmentId": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "permissions": (NullOrUndefined Nothing), "userArn": (NullOrUndefined Nothing) }



newtype DescribeEnvironmentMembershipsResult = DescribeEnvironmentMembershipsResult 
  { "memberships" :: NullOrUndefined.NullOrUndefined (EnvironmentMembersList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribeEnvironmentMembershipsResult :: Newtype DescribeEnvironmentMembershipsResult _
derive instance repGenericDescribeEnvironmentMembershipsResult :: Generic DescribeEnvironmentMembershipsResult _
instance showDescribeEnvironmentMembershipsResult :: Show DescribeEnvironmentMembershipsResult where
  show = genericShow
instance decodeDescribeEnvironmentMembershipsResult :: Decode DescribeEnvironmentMembershipsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeEnvironmentMembershipsResult :: Encode DescribeEnvironmentMembershipsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeEnvironmentMembershipsResult from required parameters
newDescribeEnvironmentMembershipsResult :: DescribeEnvironmentMembershipsResult
newDescribeEnvironmentMembershipsResult  = DescribeEnvironmentMembershipsResult { "memberships": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeEnvironmentMembershipsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentMembershipsResult' :: ( { "memberships" :: NullOrUndefined.NullOrUndefined (EnvironmentMembersList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"memberships" :: NullOrUndefined.NullOrUndefined (EnvironmentMembersList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribeEnvironmentMembershipsResult
newDescribeEnvironmentMembershipsResult'  customize = (DescribeEnvironmentMembershipsResult <<< customize) { "memberships": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeEnvironmentStatusRequest = DescribeEnvironmentStatusRequest 
  { "environmentId" :: (EnvironmentId)
  }
derive instance newtypeDescribeEnvironmentStatusRequest :: Newtype DescribeEnvironmentStatusRequest _
derive instance repGenericDescribeEnvironmentStatusRequest :: Generic DescribeEnvironmentStatusRequest _
instance showDescribeEnvironmentStatusRequest :: Show DescribeEnvironmentStatusRequest where
  show = genericShow
instance decodeDescribeEnvironmentStatusRequest :: Decode DescribeEnvironmentStatusRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeEnvironmentStatusRequest :: Encode DescribeEnvironmentStatusRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeEnvironmentStatusRequest from required parameters
newDescribeEnvironmentStatusRequest :: EnvironmentId -> DescribeEnvironmentStatusRequest
newDescribeEnvironmentStatusRequest _environmentId = DescribeEnvironmentStatusRequest { "environmentId": _environmentId }

-- | Constructs DescribeEnvironmentStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentStatusRequest' :: EnvironmentId -> ( { "environmentId" :: (EnvironmentId) } -> {"environmentId" :: (EnvironmentId) } ) -> DescribeEnvironmentStatusRequest
newDescribeEnvironmentStatusRequest' _environmentId customize = (DescribeEnvironmentStatusRequest <<< customize) { "environmentId": _environmentId }



newtype DescribeEnvironmentStatusResult = DescribeEnvironmentStatusResult 
  { "status" :: NullOrUndefined.NullOrUndefined (EnvironmentStatus)
  , "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribeEnvironmentStatusResult :: Newtype DescribeEnvironmentStatusResult _
derive instance repGenericDescribeEnvironmentStatusResult :: Generic DescribeEnvironmentStatusResult _
instance showDescribeEnvironmentStatusResult :: Show DescribeEnvironmentStatusResult where
  show = genericShow
instance decodeDescribeEnvironmentStatusResult :: Decode DescribeEnvironmentStatusResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeEnvironmentStatusResult :: Encode DescribeEnvironmentStatusResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeEnvironmentStatusResult from required parameters
newDescribeEnvironmentStatusResult :: DescribeEnvironmentStatusResult
newDescribeEnvironmentStatusResult  = DescribeEnvironmentStatusResult { "message": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs DescribeEnvironmentStatusResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentStatusResult' :: ( { "status" :: NullOrUndefined.NullOrUndefined (EnvironmentStatus) , "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"status" :: NullOrUndefined.NullOrUndefined (EnvironmentStatus) , "message" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribeEnvironmentStatusResult
newDescribeEnvironmentStatusResult'  customize = (DescribeEnvironmentStatusResult <<< customize) { "message": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



newtype DescribeEnvironmentsRequest = DescribeEnvironmentsRequest 
  { "environmentIds" :: (BoundedEnvironmentIdList)
  }
derive instance newtypeDescribeEnvironmentsRequest :: Newtype DescribeEnvironmentsRequest _
derive instance repGenericDescribeEnvironmentsRequest :: Generic DescribeEnvironmentsRequest _
instance showDescribeEnvironmentsRequest :: Show DescribeEnvironmentsRequest where
  show = genericShow
instance decodeDescribeEnvironmentsRequest :: Decode DescribeEnvironmentsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeEnvironmentsRequest :: Encode DescribeEnvironmentsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeEnvironmentsRequest from required parameters
newDescribeEnvironmentsRequest :: BoundedEnvironmentIdList -> DescribeEnvironmentsRequest
newDescribeEnvironmentsRequest _environmentIds = DescribeEnvironmentsRequest { "environmentIds": _environmentIds }

-- | Constructs DescribeEnvironmentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentsRequest' :: BoundedEnvironmentIdList -> ( { "environmentIds" :: (BoundedEnvironmentIdList) } -> {"environmentIds" :: (BoundedEnvironmentIdList) } ) -> DescribeEnvironmentsRequest
newDescribeEnvironmentsRequest' _environmentIds customize = (DescribeEnvironmentsRequest <<< customize) { "environmentIds": _environmentIds }



newtype DescribeEnvironmentsResult = DescribeEnvironmentsResult 
  { "environments" :: NullOrUndefined.NullOrUndefined (EnvironmentList)
  }
derive instance newtypeDescribeEnvironmentsResult :: Newtype DescribeEnvironmentsResult _
derive instance repGenericDescribeEnvironmentsResult :: Generic DescribeEnvironmentsResult _
instance showDescribeEnvironmentsResult :: Show DescribeEnvironmentsResult where
  show = genericShow
instance decodeDescribeEnvironmentsResult :: Decode DescribeEnvironmentsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeEnvironmentsResult :: Encode DescribeEnvironmentsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeEnvironmentsResult from required parameters
newDescribeEnvironmentsResult :: DescribeEnvironmentsResult
newDescribeEnvironmentsResult  = DescribeEnvironmentsResult { "environments": (NullOrUndefined Nothing) }

-- | Constructs DescribeEnvironmentsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentsResult' :: ( { "environments" :: NullOrUndefined.NullOrUndefined (EnvironmentList) } -> {"environments" :: NullOrUndefined.NullOrUndefined (EnvironmentList) } ) -> DescribeEnvironmentsResult
newDescribeEnvironmentsResult'  customize = (DescribeEnvironmentsResult <<< customize) { "environments": (NullOrUndefined Nothing) }



-- | <p>Information about an AWS Cloud9 development environment.</p>
newtype Environment = Environment 
  { "id" :: NullOrUndefined.NullOrUndefined (EnvironmentId)
  , "name" :: NullOrUndefined.NullOrUndefined (EnvironmentName)
  , "description" :: NullOrUndefined.NullOrUndefined (EnvironmentDescription)
  , "type" :: NullOrUndefined.NullOrUndefined (EnvironmentType)
  , "arn" :: NullOrUndefined.NullOrUndefined (String)
  , "ownerArn" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeEnvironment :: Newtype Environment _
derive instance repGenericEnvironment :: Generic Environment _
instance showEnvironment :: Show Environment where
  show = genericShow
instance decodeEnvironment :: Decode Environment where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironment :: Encode Environment where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Environment from required parameters
newEnvironment :: Environment
newEnvironment  = Environment { "arn": (NullOrUndefined Nothing), "description": (NullOrUndefined Nothing), "id": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "ownerArn": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs Environment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironment' :: ( { "id" :: NullOrUndefined.NullOrUndefined (EnvironmentId) , "name" :: NullOrUndefined.NullOrUndefined (EnvironmentName) , "description" :: NullOrUndefined.NullOrUndefined (EnvironmentDescription) , "type" :: NullOrUndefined.NullOrUndefined (EnvironmentType) , "arn" :: NullOrUndefined.NullOrUndefined (String) , "ownerArn" :: NullOrUndefined.NullOrUndefined (String) } -> {"id" :: NullOrUndefined.NullOrUndefined (EnvironmentId) , "name" :: NullOrUndefined.NullOrUndefined (EnvironmentName) , "description" :: NullOrUndefined.NullOrUndefined (EnvironmentDescription) , "type" :: NullOrUndefined.NullOrUndefined (EnvironmentType) , "arn" :: NullOrUndefined.NullOrUndefined (String) , "ownerArn" :: NullOrUndefined.NullOrUndefined (String) } ) -> Environment
newEnvironment'  customize = (Environment <<< customize) { "arn": (NullOrUndefined Nothing), "description": (NullOrUndefined Nothing), "id": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "ownerArn": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



newtype EnvironmentDescription = EnvironmentDescription String
derive instance newtypeEnvironmentDescription :: Newtype EnvironmentDescription _
derive instance repGenericEnvironmentDescription :: Generic EnvironmentDescription _
instance showEnvironmentDescription :: Show EnvironmentDescription where
  show = genericShow
instance decodeEnvironmentDescription :: Decode EnvironmentDescription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironmentDescription :: Encode EnvironmentDescription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EnvironmentId = EnvironmentId String
derive instance newtypeEnvironmentId :: Newtype EnvironmentId _
derive instance repGenericEnvironmentId :: Generic EnvironmentId _
instance showEnvironmentId :: Show EnvironmentId where
  show = genericShow
instance decodeEnvironmentId :: Decode EnvironmentId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironmentId :: Encode EnvironmentId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EnvironmentIdList = EnvironmentIdList (Array EnvironmentId)
derive instance newtypeEnvironmentIdList :: Newtype EnvironmentIdList _
derive instance repGenericEnvironmentIdList :: Generic EnvironmentIdList _
instance showEnvironmentIdList :: Show EnvironmentIdList where
  show = genericShow
instance decodeEnvironmentIdList :: Decode EnvironmentIdList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironmentIdList :: Encode EnvironmentIdList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EnvironmentList = EnvironmentList (Array Environment)
derive instance newtypeEnvironmentList :: Newtype EnvironmentList _
derive instance repGenericEnvironmentList :: Generic EnvironmentList _
instance showEnvironmentList :: Show EnvironmentList where
  show = genericShow
instance decodeEnvironmentList :: Decode EnvironmentList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironmentList :: Encode EnvironmentList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Information about an environment member for an AWS Cloud9 development environment.</p>
newtype EnvironmentMember = EnvironmentMember 
  { "permissions" :: NullOrUndefined.NullOrUndefined (Permissions)
  , "userId" :: NullOrUndefined.NullOrUndefined (String)
  , "userArn" :: NullOrUndefined.NullOrUndefined (UserArn)
  , "environmentId" :: NullOrUndefined.NullOrUndefined (EnvironmentId)
  , "lastAccess" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeEnvironmentMember :: Newtype EnvironmentMember _
derive instance repGenericEnvironmentMember :: Generic EnvironmentMember _
instance showEnvironmentMember :: Show EnvironmentMember where
  show = genericShow
instance decodeEnvironmentMember :: Decode EnvironmentMember where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironmentMember :: Encode EnvironmentMember where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EnvironmentMember from required parameters
newEnvironmentMember :: EnvironmentMember
newEnvironmentMember  = EnvironmentMember { "environmentId": (NullOrUndefined Nothing), "lastAccess": (NullOrUndefined Nothing), "permissions": (NullOrUndefined Nothing), "userArn": (NullOrUndefined Nothing), "userId": (NullOrUndefined Nothing) }

-- | Constructs EnvironmentMember's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironmentMember' :: ( { "permissions" :: NullOrUndefined.NullOrUndefined (Permissions) , "userId" :: NullOrUndefined.NullOrUndefined (String) , "userArn" :: NullOrUndefined.NullOrUndefined (UserArn) , "environmentId" :: NullOrUndefined.NullOrUndefined (EnvironmentId) , "lastAccess" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } -> {"permissions" :: NullOrUndefined.NullOrUndefined (Permissions) , "userId" :: NullOrUndefined.NullOrUndefined (String) , "userArn" :: NullOrUndefined.NullOrUndefined (UserArn) , "environmentId" :: NullOrUndefined.NullOrUndefined (EnvironmentId) , "lastAccess" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } ) -> EnvironmentMember
newEnvironmentMember'  customize = (EnvironmentMember <<< customize) { "environmentId": (NullOrUndefined Nothing), "lastAccess": (NullOrUndefined Nothing), "permissions": (NullOrUndefined Nothing), "userArn": (NullOrUndefined Nothing), "userId": (NullOrUndefined Nothing) }



newtype EnvironmentMembersList = EnvironmentMembersList (Array EnvironmentMember)
derive instance newtypeEnvironmentMembersList :: Newtype EnvironmentMembersList _
derive instance repGenericEnvironmentMembersList :: Generic EnvironmentMembersList _
instance showEnvironmentMembersList :: Show EnvironmentMembersList where
  show = genericShow
instance decodeEnvironmentMembersList :: Decode EnvironmentMembersList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironmentMembersList :: Encode EnvironmentMembersList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EnvironmentName = EnvironmentName String
derive instance newtypeEnvironmentName :: Newtype EnvironmentName _
derive instance repGenericEnvironmentName :: Generic EnvironmentName _
instance showEnvironmentName :: Show EnvironmentName where
  show = genericShow
instance decodeEnvironmentName :: Decode EnvironmentName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironmentName :: Encode EnvironmentName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EnvironmentStatus = EnvironmentStatus String
derive instance newtypeEnvironmentStatus :: Newtype EnvironmentStatus _
derive instance repGenericEnvironmentStatus :: Generic EnvironmentStatus _
instance showEnvironmentStatus :: Show EnvironmentStatus where
  show = genericShow
instance decodeEnvironmentStatus :: Decode EnvironmentStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironmentStatus :: Encode EnvironmentStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EnvironmentType = EnvironmentType String
derive instance newtypeEnvironmentType :: Newtype EnvironmentType _
derive instance repGenericEnvironmentType :: Generic EnvironmentType _
instance showEnvironmentType :: Show EnvironmentType where
  show = genericShow
instance decodeEnvironmentType :: Decode EnvironmentType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironmentType :: Encode EnvironmentType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An access permissions issue occurred.</p>
newtype ForbiddenException = ForbiddenException Types.NoArguments
derive instance newtypeForbiddenException :: Newtype ForbiddenException _
derive instance repGenericForbiddenException :: Generic ForbiddenException _
instance showForbiddenException :: Show ForbiddenException where
  show = genericShow
instance decodeForbiddenException :: Decode ForbiddenException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeForbiddenException :: Encode ForbiddenException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceType = InstanceType String
derive instance newtypeInstanceType :: Newtype InstanceType _
derive instance repGenericInstanceType :: Generic InstanceType _
instance showInstanceType :: Show InstanceType where
  show = genericShow
instance decodeInstanceType :: Decode InstanceType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceType :: Encode InstanceType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An internal server error occurred.</p>
newtype InternalServerErrorException = InternalServerErrorException Types.NoArguments
derive instance newtypeInternalServerErrorException :: Newtype InternalServerErrorException _
derive instance repGenericInternalServerErrorException :: Generic InternalServerErrorException _
instance showInternalServerErrorException :: Show InternalServerErrorException where
  show = genericShow
instance decodeInternalServerErrorException :: Decode InternalServerErrorException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServerErrorException :: Encode InternalServerErrorException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A service limit was exceeded.</p>
newtype LimitExceededException = LimitExceededException Types.NoArguments
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where
  show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitExceededException :: Encode LimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListEnvironmentsRequest = ListEnvironmentsRequest 
  { "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListEnvironmentsRequest :: Newtype ListEnvironmentsRequest _
derive instance repGenericListEnvironmentsRequest :: Generic ListEnvironmentsRequest _
instance showListEnvironmentsRequest :: Show ListEnvironmentsRequest where
  show = genericShow
instance decodeListEnvironmentsRequest :: Decode ListEnvironmentsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListEnvironmentsRequest :: Encode ListEnvironmentsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListEnvironmentsRequest from required parameters
newListEnvironmentsRequest :: ListEnvironmentsRequest
newListEnvironmentsRequest  = ListEnvironmentsRequest { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListEnvironmentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEnvironmentsRequest' :: ( { "nextToken" :: NullOrUndefined.NullOrUndefined (String) , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"nextToken" :: NullOrUndefined.NullOrUndefined (String) , "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListEnvironmentsRequest
newListEnvironmentsRequest'  customize = (ListEnvironmentsRequest <<< customize) { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListEnvironmentsResult = ListEnvironmentsResult 
  { "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  , "environmentIds" :: NullOrUndefined.NullOrUndefined (EnvironmentIdList)
  }
derive instance newtypeListEnvironmentsResult :: Newtype ListEnvironmentsResult _
derive instance repGenericListEnvironmentsResult :: Generic ListEnvironmentsResult _
instance showListEnvironmentsResult :: Show ListEnvironmentsResult where
  show = genericShow
instance decodeListEnvironmentsResult :: Decode ListEnvironmentsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListEnvironmentsResult :: Encode ListEnvironmentsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListEnvironmentsResult from required parameters
newListEnvironmentsResult :: ListEnvironmentsResult
newListEnvironmentsResult  = ListEnvironmentsResult { "environmentIds": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListEnvironmentsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEnvironmentsResult' :: ( { "nextToken" :: NullOrUndefined.NullOrUndefined (String) , "environmentIds" :: NullOrUndefined.NullOrUndefined (EnvironmentIdList) } -> {"nextToken" :: NullOrUndefined.NullOrUndefined (String) , "environmentIds" :: NullOrUndefined.NullOrUndefined (EnvironmentIdList) } ) -> ListEnvironmentsResult
newListEnvironmentsResult'  customize = (ListEnvironmentsResult <<< customize) { "environmentIds": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MemberPermissions = MemberPermissions String
derive instance newtypeMemberPermissions :: Newtype MemberPermissions _
derive instance repGenericMemberPermissions :: Generic MemberPermissions _
instance showMemberPermissions :: Show MemberPermissions where
  show = genericShow
instance decodeMemberPermissions :: Decode MemberPermissions where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMemberPermissions :: Encode MemberPermissions where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The target resource cannot be found.</p>
newtype NotFoundException = NotFoundException Types.NoArguments
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where
  show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotFoundException :: Encode NotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Permissions = Permissions String
derive instance newtypePermissions :: Newtype Permissions _
derive instance repGenericPermissions :: Generic Permissions _
instance showPermissions :: Show Permissions where
  show = genericShow
instance decodePermissions :: Decode Permissions where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePermissions :: Encode Permissions where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PermissionsList = PermissionsList (Array Permissions)
derive instance newtypePermissionsList :: Newtype PermissionsList _
derive instance repGenericPermissionsList :: Generic PermissionsList _
instance showPermissionsList :: Show PermissionsList where
  show = genericShow
instance decodePermissionsList :: Decode PermissionsList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePermissionsList :: Encode PermissionsList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SubnetId = SubnetId String
derive instance newtypeSubnetId :: Newtype SubnetId _
derive instance repGenericSubnetId :: Generic SubnetId _
instance showSubnetId :: Show SubnetId where
  show = genericShow
instance decodeSubnetId :: Decode SubnetId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubnetId :: Encode SubnetId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Too many service requests were made over the given time period.</p>
newtype TooManyRequestsException = TooManyRequestsException Types.NoArguments
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where
  show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UpdateEnvironmentMembershipRequest = UpdateEnvironmentMembershipRequest 
  { "environmentId" :: (EnvironmentId)
  , "userArn" :: (UserArn)
  , "permissions" :: (MemberPermissions)
  }
derive instance newtypeUpdateEnvironmentMembershipRequest :: Newtype UpdateEnvironmentMembershipRequest _
derive instance repGenericUpdateEnvironmentMembershipRequest :: Generic UpdateEnvironmentMembershipRequest _
instance showUpdateEnvironmentMembershipRequest :: Show UpdateEnvironmentMembershipRequest where
  show = genericShow
instance decodeUpdateEnvironmentMembershipRequest :: Decode UpdateEnvironmentMembershipRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateEnvironmentMembershipRequest :: Encode UpdateEnvironmentMembershipRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateEnvironmentMembershipRequest from required parameters
newUpdateEnvironmentMembershipRequest :: EnvironmentId -> MemberPermissions -> UserArn -> UpdateEnvironmentMembershipRequest
newUpdateEnvironmentMembershipRequest _environmentId _permissions _userArn = UpdateEnvironmentMembershipRequest { "environmentId": _environmentId, "permissions": _permissions, "userArn": _userArn }

-- | Constructs UpdateEnvironmentMembershipRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateEnvironmentMembershipRequest' :: EnvironmentId -> MemberPermissions -> UserArn -> ( { "environmentId" :: (EnvironmentId) , "userArn" :: (UserArn) , "permissions" :: (MemberPermissions) } -> {"environmentId" :: (EnvironmentId) , "userArn" :: (UserArn) , "permissions" :: (MemberPermissions) } ) -> UpdateEnvironmentMembershipRequest
newUpdateEnvironmentMembershipRequest' _environmentId _permissions _userArn customize = (UpdateEnvironmentMembershipRequest <<< customize) { "environmentId": _environmentId, "permissions": _permissions, "userArn": _userArn }



newtype UpdateEnvironmentMembershipResult = UpdateEnvironmentMembershipResult 
  { "membership" :: NullOrUndefined.NullOrUndefined (EnvironmentMember)
  }
derive instance newtypeUpdateEnvironmentMembershipResult :: Newtype UpdateEnvironmentMembershipResult _
derive instance repGenericUpdateEnvironmentMembershipResult :: Generic UpdateEnvironmentMembershipResult _
instance showUpdateEnvironmentMembershipResult :: Show UpdateEnvironmentMembershipResult where
  show = genericShow
instance decodeUpdateEnvironmentMembershipResult :: Decode UpdateEnvironmentMembershipResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateEnvironmentMembershipResult :: Encode UpdateEnvironmentMembershipResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateEnvironmentMembershipResult from required parameters
newUpdateEnvironmentMembershipResult :: UpdateEnvironmentMembershipResult
newUpdateEnvironmentMembershipResult  = UpdateEnvironmentMembershipResult { "membership": (NullOrUndefined Nothing) }

-- | Constructs UpdateEnvironmentMembershipResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateEnvironmentMembershipResult' :: ( { "membership" :: NullOrUndefined.NullOrUndefined (EnvironmentMember) } -> {"membership" :: NullOrUndefined.NullOrUndefined (EnvironmentMember) } ) -> UpdateEnvironmentMembershipResult
newUpdateEnvironmentMembershipResult'  customize = (UpdateEnvironmentMembershipResult <<< customize) { "membership": (NullOrUndefined Nothing) }



newtype UpdateEnvironmentRequest = UpdateEnvironmentRequest 
  { "environmentId" :: (EnvironmentId)
  , "name" :: NullOrUndefined.NullOrUndefined (EnvironmentName)
  , "description" :: NullOrUndefined.NullOrUndefined (EnvironmentDescription)
  }
derive instance newtypeUpdateEnvironmentRequest :: Newtype UpdateEnvironmentRequest _
derive instance repGenericUpdateEnvironmentRequest :: Generic UpdateEnvironmentRequest _
instance showUpdateEnvironmentRequest :: Show UpdateEnvironmentRequest where
  show = genericShow
instance decodeUpdateEnvironmentRequest :: Decode UpdateEnvironmentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateEnvironmentRequest :: Encode UpdateEnvironmentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateEnvironmentRequest from required parameters
newUpdateEnvironmentRequest :: EnvironmentId -> UpdateEnvironmentRequest
newUpdateEnvironmentRequest _environmentId = UpdateEnvironmentRequest { "environmentId": _environmentId, "description": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }

-- | Constructs UpdateEnvironmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateEnvironmentRequest' :: EnvironmentId -> ( { "environmentId" :: (EnvironmentId) , "name" :: NullOrUndefined.NullOrUndefined (EnvironmentName) , "description" :: NullOrUndefined.NullOrUndefined (EnvironmentDescription) } -> {"environmentId" :: (EnvironmentId) , "name" :: NullOrUndefined.NullOrUndefined (EnvironmentName) , "description" :: NullOrUndefined.NullOrUndefined (EnvironmentDescription) } ) -> UpdateEnvironmentRequest
newUpdateEnvironmentRequest' _environmentId customize = (UpdateEnvironmentRequest <<< customize) { "environmentId": _environmentId, "description": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }



newtype UpdateEnvironmentResult = UpdateEnvironmentResult Types.NoArguments
derive instance newtypeUpdateEnvironmentResult :: Newtype UpdateEnvironmentResult _
derive instance repGenericUpdateEnvironmentResult :: Generic UpdateEnvironmentResult _
instance showUpdateEnvironmentResult :: Show UpdateEnvironmentResult where
  show = genericShow
instance decodeUpdateEnvironmentResult :: Decode UpdateEnvironmentResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateEnvironmentResult :: Encode UpdateEnvironmentResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UserArn = UserArn String
derive instance newtypeUserArn :: Newtype UserArn _
derive instance repGenericUserArn :: Generic UserArn _
instance showUserArn :: Show UserArn where
  show = genericShow
instance decodeUserArn :: Decode UserArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUserArn :: Encode UserArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

