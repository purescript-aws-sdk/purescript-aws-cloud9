
module AWS.Cloud9.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AutomaticStopTimeMinutes = AutomaticStopTimeMinutes Int
derive instance newtypeAutomaticStopTimeMinutes :: Newtype AutomaticStopTimeMinutes _
derive instance repGenericAutomaticStopTimeMinutes :: Generic AutomaticStopTimeMinutes _
instance showAutomaticStopTimeMinutes :: Show AutomaticStopTimeMinutes where show = genericShow
instance decodeAutomaticStopTimeMinutes :: Decode AutomaticStopTimeMinutes where decode = genericDecode options
instance encodeAutomaticStopTimeMinutes :: Encode AutomaticStopTimeMinutes where encode = genericEncode options



-- | <p>The target request is invalid.</p>
newtype BadRequestException = BadRequestException Types.NoArguments
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where decode = genericDecode options
instance encodeBadRequestException :: Encode BadRequestException where encode = genericEncode options



newtype BoundedEnvironmentIdList = BoundedEnvironmentIdList (Array EnvironmentId)
derive instance newtypeBoundedEnvironmentIdList :: Newtype BoundedEnvironmentIdList _
derive instance repGenericBoundedEnvironmentIdList :: Generic BoundedEnvironmentIdList _
instance showBoundedEnvironmentIdList :: Show BoundedEnvironmentIdList where show = genericShow
instance decodeBoundedEnvironmentIdList :: Decode BoundedEnvironmentIdList where decode = genericDecode options
instance encodeBoundedEnvironmentIdList :: Encode BoundedEnvironmentIdList where encode = genericEncode options



newtype ClientRequestToken = ClientRequestToken String
derive instance newtypeClientRequestToken :: Newtype ClientRequestToken _
derive instance repGenericClientRequestToken :: Generic ClientRequestToken _
instance showClientRequestToken :: Show ClientRequestToken where show = genericShow
instance decodeClientRequestToken :: Decode ClientRequestToken where decode = genericDecode options
instance encodeClientRequestToken :: Encode ClientRequestToken where encode = genericEncode options



-- | <p>A conflict occurred.</p>
newtype ConflictException = ConflictException Types.NoArguments
derive instance newtypeConflictException :: Newtype ConflictException _
derive instance repGenericConflictException :: Generic ConflictException _
instance showConflictException :: Show ConflictException where show = genericShow
instance decodeConflictException :: Decode ConflictException where decode = genericDecode options
instance encodeConflictException :: Encode ConflictException where encode = genericEncode options



newtype CreateEnvironmentEC2Request = CreateEnvironmentEC2Request 
  { "name" :: (EnvironmentName)
  , "description" :: Maybe (EnvironmentDescription)
  , "clientRequestToken" :: Maybe (ClientRequestToken)
  , "instanceType" :: (InstanceType)
  , "subnetId" :: Maybe (SubnetId)
  , "automaticStopTimeMinutes" :: Maybe (AutomaticStopTimeMinutes)
  , "ownerArn" :: Maybe (UserArn)
  }
derive instance newtypeCreateEnvironmentEC2Request :: Newtype CreateEnvironmentEC2Request _
derive instance repGenericCreateEnvironmentEC2Request :: Generic CreateEnvironmentEC2Request _
instance showCreateEnvironmentEC2Request :: Show CreateEnvironmentEC2Request where show = genericShow
instance decodeCreateEnvironmentEC2Request :: Decode CreateEnvironmentEC2Request where decode = genericDecode options
instance encodeCreateEnvironmentEC2Request :: Encode CreateEnvironmentEC2Request where encode = genericEncode options

-- | Constructs CreateEnvironmentEC2Request from required parameters
newCreateEnvironmentEC2Request :: InstanceType -> EnvironmentName -> CreateEnvironmentEC2Request
newCreateEnvironmentEC2Request _instanceType _name = CreateEnvironmentEC2Request { "instanceType": _instanceType, "name": _name, "automaticStopTimeMinutes": Nothing, "clientRequestToken": Nothing, "description": Nothing, "ownerArn": Nothing, "subnetId": Nothing }

-- | Constructs CreateEnvironmentEC2Request's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEnvironmentEC2Request' :: InstanceType -> EnvironmentName -> ( { "name" :: (EnvironmentName) , "description" :: Maybe (EnvironmentDescription) , "clientRequestToken" :: Maybe (ClientRequestToken) , "instanceType" :: (InstanceType) , "subnetId" :: Maybe (SubnetId) , "automaticStopTimeMinutes" :: Maybe (AutomaticStopTimeMinutes) , "ownerArn" :: Maybe (UserArn) } -> {"name" :: (EnvironmentName) , "description" :: Maybe (EnvironmentDescription) , "clientRequestToken" :: Maybe (ClientRequestToken) , "instanceType" :: (InstanceType) , "subnetId" :: Maybe (SubnetId) , "automaticStopTimeMinutes" :: Maybe (AutomaticStopTimeMinutes) , "ownerArn" :: Maybe (UserArn) } ) -> CreateEnvironmentEC2Request
newCreateEnvironmentEC2Request' _instanceType _name customize = (CreateEnvironmentEC2Request <<< customize) { "instanceType": _instanceType, "name": _name, "automaticStopTimeMinutes": Nothing, "clientRequestToken": Nothing, "description": Nothing, "ownerArn": Nothing, "subnetId": Nothing }



newtype CreateEnvironmentEC2Result = CreateEnvironmentEC2Result 
  { "environmentId" :: Maybe (EnvironmentId)
  }
derive instance newtypeCreateEnvironmentEC2Result :: Newtype CreateEnvironmentEC2Result _
derive instance repGenericCreateEnvironmentEC2Result :: Generic CreateEnvironmentEC2Result _
instance showCreateEnvironmentEC2Result :: Show CreateEnvironmentEC2Result where show = genericShow
instance decodeCreateEnvironmentEC2Result :: Decode CreateEnvironmentEC2Result where decode = genericDecode options
instance encodeCreateEnvironmentEC2Result :: Encode CreateEnvironmentEC2Result where encode = genericEncode options

-- | Constructs CreateEnvironmentEC2Result from required parameters
newCreateEnvironmentEC2Result :: CreateEnvironmentEC2Result
newCreateEnvironmentEC2Result  = CreateEnvironmentEC2Result { "environmentId": Nothing }

-- | Constructs CreateEnvironmentEC2Result's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEnvironmentEC2Result' :: ( { "environmentId" :: Maybe (EnvironmentId) } -> {"environmentId" :: Maybe (EnvironmentId) } ) -> CreateEnvironmentEC2Result
newCreateEnvironmentEC2Result'  customize = (CreateEnvironmentEC2Result <<< customize) { "environmentId": Nothing }



newtype CreateEnvironmentMembershipRequest = CreateEnvironmentMembershipRequest 
  { "environmentId" :: (EnvironmentId)
  , "userArn" :: (UserArn)
  , "permissions" :: (MemberPermissions)
  }
derive instance newtypeCreateEnvironmentMembershipRequest :: Newtype CreateEnvironmentMembershipRequest _
derive instance repGenericCreateEnvironmentMembershipRequest :: Generic CreateEnvironmentMembershipRequest _
instance showCreateEnvironmentMembershipRequest :: Show CreateEnvironmentMembershipRequest where show = genericShow
instance decodeCreateEnvironmentMembershipRequest :: Decode CreateEnvironmentMembershipRequest where decode = genericDecode options
instance encodeCreateEnvironmentMembershipRequest :: Encode CreateEnvironmentMembershipRequest where encode = genericEncode options

-- | Constructs CreateEnvironmentMembershipRequest from required parameters
newCreateEnvironmentMembershipRequest :: EnvironmentId -> MemberPermissions -> UserArn -> CreateEnvironmentMembershipRequest
newCreateEnvironmentMembershipRequest _environmentId _permissions _userArn = CreateEnvironmentMembershipRequest { "environmentId": _environmentId, "permissions": _permissions, "userArn": _userArn }

-- | Constructs CreateEnvironmentMembershipRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEnvironmentMembershipRequest' :: EnvironmentId -> MemberPermissions -> UserArn -> ( { "environmentId" :: (EnvironmentId) , "userArn" :: (UserArn) , "permissions" :: (MemberPermissions) } -> {"environmentId" :: (EnvironmentId) , "userArn" :: (UserArn) , "permissions" :: (MemberPermissions) } ) -> CreateEnvironmentMembershipRequest
newCreateEnvironmentMembershipRequest' _environmentId _permissions _userArn customize = (CreateEnvironmentMembershipRequest <<< customize) { "environmentId": _environmentId, "permissions": _permissions, "userArn": _userArn }



newtype CreateEnvironmentMembershipResult = CreateEnvironmentMembershipResult 
  { "membership" :: Maybe (EnvironmentMember)
  }
derive instance newtypeCreateEnvironmentMembershipResult :: Newtype CreateEnvironmentMembershipResult _
derive instance repGenericCreateEnvironmentMembershipResult :: Generic CreateEnvironmentMembershipResult _
instance showCreateEnvironmentMembershipResult :: Show CreateEnvironmentMembershipResult where show = genericShow
instance decodeCreateEnvironmentMembershipResult :: Decode CreateEnvironmentMembershipResult where decode = genericDecode options
instance encodeCreateEnvironmentMembershipResult :: Encode CreateEnvironmentMembershipResult where encode = genericEncode options

-- | Constructs CreateEnvironmentMembershipResult from required parameters
newCreateEnvironmentMembershipResult :: CreateEnvironmentMembershipResult
newCreateEnvironmentMembershipResult  = CreateEnvironmentMembershipResult { "membership": Nothing }

-- | Constructs CreateEnvironmentMembershipResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEnvironmentMembershipResult' :: ( { "membership" :: Maybe (EnvironmentMember) } -> {"membership" :: Maybe (EnvironmentMember) } ) -> CreateEnvironmentMembershipResult
newCreateEnvironmentMembershipResult'  customize = (CreateEnvironmentMembershipResult <<< customize) { "membership": Nothing }



newtype DeleteEnvironmentMembershipRequest = DeleteEnvironmentMembershipRequest 
  { "environmentId" :: (EnvironmentId)
  , "userArn" :: (UserArn)
  }
derive instance newtypeDeleteEnvironmentMembershipRequest :: Newtype DeleteEnvironmentMembershipRequest _
derive instance repGenericDeleteEnvironmentMembershipRequest :: Generic DeleteEnvironmentMembershipRequest _
instance showDeleteEnvironmentMembershipRequest :: Show DeleteEnvironmentMembershipRequest where show = genericShow
instance decodeDeleteEnvironmentMembershipRequest :: Decode DeleteEnvironmentMembershipRequest where decode = genericDecode options
instance encodeDeleteEnvironmentMembershipRequest :: Encode DeleteEnvironmentMembershipRequest where encode = genericEncode options

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
instance showDeleteEnvironmentMembershipResult :: Show DeleteEnvironmentMembershipResult where show = genericShow
instance decodeDeleteEnvironmentMembershipResult :: Decode DeleteEnvironmentMembershipResult where decode = genericDecode options
instance encodeDeleteEnvironmentMembershipResult :: Encode DeleteEnvironmentMembershipResult where encode = genericEncode options



newtype DeleteEnvironmentRequest = DeleteEnvironmentRequest 
  { "environmentId" :: (EnvironmentId)
  }
derive instance newtypeDeleteEnvironmentRequest :: Newtype DeleteEnvironmentRequest _
derive instance repGenericDeleteEnvironmentRequest :: Generic DeleteEnvironmentRequest _
instance showDeleteEnvironmentRequest :: Show DeleteEnvironmentRequest where show = genericShow
instance decodeDeleteEnvironmentRequest :: Decode DeleteEnvironmentRequest where decode = genericDecode options
instance encodeDeleteEnvironmentRequest :: Encode DeleteEnvironmentRequest where encode = genericEncode options

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
instance showDeleteEnvironmentResult :: Show DeleteEnvironmentResult where show = genericShow
instance decodeDeleteEnvironmentResult :: Decode DeleteEnvironmentResult where decode = genericDecode options
instance encodeDeleteEnvironmentResult :: Encode DeleteEnvironmentResult where encode = genericEncode options



newtype DescribeEnvironmentMembershipsRequest = DescribeEnvironmentMembershipsRequest 
  { "userArn" :: Maybe (UserArn)
  , "environmentId" :: Maybe (EnvironmentId)
  , "permissions" :: Maybe (PermissionsList)
  , "nextToken" :: Maybe (String)
  , "maxResults" :: Maybe (MaxResults)
  }
derive instance newtypeDescribeEnvironmentMembershipsRequest :: Newtype DescribeEnvironmentMembershipsRequest _
derive instance repGenericDescribeEnvironmentMembershipsRequest :: Generic DescribeEnvironmentMembershipsRequest _
instance showDescribeEnvironmentMembershipsRequest :: Show DescribeEnvironmentMembershipsRequest where show = genericShow
instance decodeDescribeEnvironmentMembershipsRequest :: Decode DescribeEnvironmentMembershipsRequest where decode = genericDecode options
instance encodeDescribeEnvironmentMembershipsRequest :: Encode DescribeEnvironmentMembershipsRequest where encode = genericEncode options

-- | Constructs DescribeEnvironmentMembershipsRequest from required parameters
newDescribeEnvironmentMembershipsRequest :: DescribeEnvironmentMembershipsRequest
newDescribeEnvironmentMembershipsRequest  = DescribeEnvironmentMembershipsRequest { "environmentId": Nothing, "maxResults": Nothing, "nextToken": Nothing, "permissions": Nothing, "userArn": Nothing }

-- | Constructs DescribeEnvironmentMembershipsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentMembershipsRequest' :: ( { "userArn" :: Maybe (UserArn) , "environmentId" :: Maybe (EnvironmentId) , "permissions" :: Maybe (PermissionsList) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (MaxResults) } -> {"userArn" :: Maybe (UserArn) , "environmentId" :: Maybe (EnvironmentId) , "permissions" :: Maybe (PermissionsList) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (MaxResults) } ) -> DescribeEnvironmentMembershipsRequest
newDescribeEnvironmentMembershipsRequest'  customize = (DescribeEnvironmentMembershipsRequest <<< customize) { "environmentId": Nothing, "maxResults": Nothing, "nextToken": Nothing, "permissions": Nothing, "userArn": Nothing }



newtype DescribeEnvironmentMembershipsResult = DescribeEnvironmentMembershipsResult 
  { "memberships" :: Maybe (EnvironmentMembersList)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeDescribeEnvironmentMembershipsResult :: Newtype DescribeEnvironmentMembershipsResult _
derive instance repGenericDescribeEnvironmentMembershipsResult :: Generic DescribeEnvironmentMembershipsResult _
instance showDescribeEnvironmentMembershipsResult :: Show DescribeEnvironmentMembershipsResult where show = genericShow
instance decodeDescribeEnvironmentMembershipsResult :: Decode DescribeEnvironmentMembershipsResult where decode = genericDecode options
instance encodeDescribeEnvironmentMembershipsResult :: Encode DescribeEnvironmentMembershipsResult where encode = genericEncode options

-- | Constructs DescribeEnvironmentMembershipsResult from required parameters
newDescribeEnvironmentMembershipsResult :: DescribeEnvironmentMembershipsResult
newDescribeEnvironmentMembershipsResult  = DescribeEnvironmentMembershipsResult { "memberships": Nothing, "nextToken": Nothing }

-- | Constructs DescribeEnvironmentMembershipsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentMembershipsResult' :: ( { "memberships" :: Maybe (EnvironmentMembersList) , "nextToken" :: Maybe (String) } -> {"memberships" :: Maybe (EnvironmentMembersList) , "nextToken" :: Maybe (String) } ) -> DescribeEnvironmentMembershipsResult
newDescribeEnvironmentMembershipsResult'  customize = (DescribeEnvironmentMembershipsResult <<< customize) { "memberships": Nothing, "nextToken": Nothing }



newtype DescribeEnvironmentStatusRequest = DescribeEnvironmentStatusRequest 
  { "environmentId" :: (EnvironmentId)
  }
derive instance newtypeDescribeEnvironmentStatusRequest :: Newtype DescribeEnvironmentStatusRequest _
derive instance repGenericDescribeEnvironmentStatusRequest :: Generic DescribeEnvironmentStatusRequest _
instance showDescribeEnvironmentStatusRequest :: Show DescribeEnvironmentStatusRequest where show = genericShow
instance decodeDescribeEnvironmentStatusRequest :: Decode DescribeEnvironmentStatusRequest where decode = genericDecode options
instance encodeDescribeEnvironmentStatusRequest :: Encode DescribeEnvironmentStatusRequest where encode = genericEncode options

-- | Constructs DescribeEnvironmentStatusRequest from required parameters
newDescribeEnvironmentStatusRequest :: EnvironmentId -> DescribeEnvironmentStatusRequest
newDescribeEnvironmentStatusRequest _environmentId = DescribeEnvironmentStatusRequest { "environmentId": _environmentId }

-- | Constructs DescribeEnvironmentStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentStatusRequest' :: EnvironmentId -> ( { "environmentId" :: (EnvironmentId) } -> {"environmentId" :: (EnvironmentId) } ) -> DescribeEnvironmentStatusRequest
newDescribeEnvironmentStatusRequest' _environmentId customize = (DescribeEnvironmentStatusRequest <<< customize) { "environmentId": _environmentId }



newtype DescribeEnvironmentStatusResult = DescribeEnvironmentStatusResult 
  { "status" :: Maybe (EnvironmentStatus)
  , "message" :: Maybe (String)
  }
derive instance newtypeDescribeEnvironmentStatusResult :: Newtype DescribeEnvironmentStatusResult _
derive instance repGenericDescribeEnvironmentStatusResult :: Generic DescribeEnvironmentStatusResult _
instance showDescribeEnvironmentStatusResult :: Show DescribeEnvironmentStatusResult where show = genericShow
instance decodeDescribeEnvironmentStatusResult :: Decode DescribeEnvironmentStatusResult where decode = genericDecode options
instance encodeDescribeEnvironmentStatusResult :: Encode DescribeEnvironmentStatusResult where encode = genericEncode options

-- | Constructs DescribeEnvironmentStatusResult from required parameters
newDescribeEnvironmentStatusResult :: DescribeEnvironmentStatusResult
newDescribeEnvironmentStatusResult  = DescribeEnvironmentStatusResult { "message": Nothing, "status": Nothing }

-- | Constructs DescribeEnvironmentStatusResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentStatusResult' :: ( { "status" :: Maybe (EnvironmentStatus) , "message" :: Maybe (String) } -> {"status" :: Maybe (EnvironmentStatus) , "message" :: Maybe (String) } ) -> DescribeEnvironmentStatusResult
newDescribeEnvironmentStatusResult'  customize = (DescribeEnvironmentStatusResult <<< customize) { "message": Nothing, "status": Nothing }



newtype DescribeEnvironmentsRequest = DescribeEnvironmentsRequest 
  { "environmentIds" :: (BoundedEnvironmentIdList)
  }
derive instance newtypeDescribeEnvironmentsRequest :: Newtype DescribeEnvironmentsRequest _
derive instance repGenericDescribeEnvironmentsRequest :: Generic DescribeEnvironmentsRequest _
instance showDescribeEnvironmentsRequest :: Show DescribeEnvironmentsRequest where show = genericShow
instance decodeDescribeEnvironmentsRequest :: Decode DescribeEnvironmentsRequest where decode = genericDecode options
instance encodeDescribeEnvironmentsRequest :: Encode DescribeEnvironmentsRequest where encode = genericEncode options

-- | Constructs DescribeEnvironmentsRequest from required parameters
newDescribeEnvironmentsRequest :: BoundedEnvironmentIdList -> DescribeEnvironmentsRequest
newDescribeEnvironmentsRequest _environmentIds = DescribeEnvironmentsRequest { "environmentIds": _environmentIds }

-- | Constructs DescribeEnvironmentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentsRequest' :: BoundedEnvironmentIdList -> ( { "environmentIds" :: (BoundedEnvironmentIdList) } -> {"environmentIds" :: (BoundedEnvironmentIdList) } ) -> DescribeEnvironmentsRequest
newDescribeEnvironmentsRequest' _environmentIds customize = (DescribeEnvironmentsRequest <<< customize) { "environmentIds": _environmentIds }



newtype DescribeEnvironmentsResult = DescribeEnvironmentsResult 
  { "environments" :: Maybe (EnvironmentList)
  }
derive instance newtypeDescribeEnvironmentsResult :: Newtype DescribeEnvironmentsResult _
derive instance repGenericDescribeEnvironmentsResult :: Generic DescribeEnvironmentsResult _
instance showDescribeEnvironmentsResult :: Show DescribeEnvironmentsResult where show = genericShow
instance decodeDescribeEnvironmentsResult :: Decode DescribeEnvironmentsResult where decode = genericDecode options
instance encodeDescribeEnvironmentsResult :: Encode DescribeEnvironmentsResult where encode = genericEncode options

-- | Constructs DescribeEnvironmentsResult from required parameters
newDescribeEnvironmentsResult :: DescribeEnvironmentsResult
newDescribeEnvironmentsResult  = DescribeEnvironmentsResult { "environments": Nothing }

-- | Constructs DescribeEnvironmentsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentsResult' :: ( { "environments" :: Maybe (EnvironmentList) } -> {"environments" :: Maybe (EnvironmentList) } ) -> DescribeEnvironmentsResult
newDescribeEnvironmentsResult'  customize = (DescribeEnvironmentsResult <<< customize) { "environments": Nothing }



-- | <p>Information about an AWS Cloud9 development environment.</p>
newtype Environment = Environment 
  { "id" :: Maybe (EnvironmentId)
  , "name" :: Maybe (EnvironmentName)
  , "description" :: Maybe (EnvironmentDescription)
  , "type" :: Maybe (EnvironmentType)
  , "arn" :: Maybe (String)
  , "ownerArn" :: Maybe (String)
  }
derive instance newtypeEnvironment :: Newtype Environment _
derive instance repGenericEnvironment :: Generic Environment _
instance showEnvironment :: Show Environment where show = genericShow
instance decodeEnvironment :: Decode Environment where decode = genericDecode options
instance encodeEnvironment :: Encode Environment where encode = genericEncode options

-- | Constructs Environment from required parameters
newEnvironment :: Environment
newEnvironment  = Environment { "arn": Nothing, "description": Nothing, "id": Nothing, "name": Nothing, "ownerArn": Nothing, "type": Nothing }

-- | Constructs Environment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironment' :: ( { "id" :: Maybe (EnvironmentId) , "name" :: Maybe (EnvironmentName) , "description" :: Maybe (EnvironmentDescription) , "type" :: Maybe (EnvironmentType) , "arn" :: Maybe (String) , "ownerArn" :: Maybe (String) } -> {"id" :: Maybe (EnvironmentId) , "name" :: Maybe (EnvironmentName) , "description" :: Maybe (EnvironmentDescription) , "type" :: Maybe (EnvironmentType) , "arn" :: Maybe (String) , "ownerArn" :: Maybe (String) } ) -> Environment
newEnvironment'  customize = (Environment <<< customize) { "arn": Nothing, "description": Nothing, "id": Nothing, "name": Nothing, "ownerArn": Nothing, "type": Nothing }



newtype EnvironmentDescription = EnvironmentDescription String
derive instance newtypeEnvironmentDescription :: Newtype EnvironmentDescription _
derive instance repGenericEnvironmentDescription :: Generic EnvironmentDescription _
instance showEnvironmentDescription :: Show EnvironmentDescription where show = genericShow
instance decodeEnvironmentDescription :: Decode EnvironmentDescription where decode = genericDecode options
instance encodeEnvironmentDescription :: Encode EnvironmentDescription where encode = genericEncode options



newtype EnvironmentId = EnvironmentId String
derive instance newtypeEnvironmentId :: Newtype EnvironmentId _
derive instance repGenericEnvironmentId :: Generic EnvironmentId _
instance showEnvironmentId :: Show EnvironmentId where show = genericShow
instance decodeEnvironmentId :: Decode EnvironmentId where decode = genericDecode options
instance encodeEnvironmentId :: Encode EnvironmentId where encode = genericEncode options



newtype EnvironmentIdList = EnvironmentIdList (Array EnvironmentId)
derive instance newtypeEnvironmentIdList :: Newtype EnvironmentIdList _
derive instance repGenericEnvironmentIdList :: Generic EnvironmentIdList _
instance showEnvironmentIdList :: Show EnvironmentIdList where show = genericShow
instance decodeEnvironmentIdList :: Decode EnvironmentIdList where decode = genericDecode options
instance encodeEnvironmentIdList :: Encode EnvironmentIdList where encode = genericEncode options



newtype EnvironmentList = EnvironmentList (Array Environment)
derive instance newtypeEnvironmentList :: Newtype EnvironmentList _
derive instance repGenericEnvironmentList :: Generic EnvironmentList _
instance showEnvironmentList :: Show EnvironmentList where show = genericShow
instance decodeEnvironmentList :: Decode EnvironmentList where decode = genericDecode options
instance encodeEnvironmentList :: Encode EnvironmentList where encode = genericEncode options



-- | <p>Information about an environment member for an AWS Cloud9 development environment.</p>
newtype EnvironmentMember = EnvironmentMember 
  { "permissions" :: Maybe (Permissions)
  , "userId" :: Maybe (String)
  , "userArn" :: Maybe (UserArn)
  , "environmentId" :: Maybe (EnvironmentId)
  , "lastAccess" :: Maybe (Types.Timestamp)
  }
derive instance newtypeEnvironmentMember :: Newtype EnvironmentMember _
derive instance repGenericEnvironmentMember :: Generic EnvironmentMember _
instance showEnvironmentMember :: Show EnvironmentMember where show = genericShow
instance decodeEnvironmentMember :: Decode EnvironmentMember where decode = genericDecode options
instance encodeEnvironmentMember :: Encode EnvironmentMember where encode = genericEncode options

-- | Constructs EnvironmentMember from required parameters
newEnvironmentMember :: EnvironmentMember
newEnvironmentMember  = EnvironmentMember { "environmentId": Nothing, "lastAccess": Nothing, "permissions": Nothing, "userArn": Nothing, "userId": Nothing }

-- | Constructs EnvironmentMember's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironmentMember' :: ( { "permissions" :: Maybe (Permissions) , "userId" :: Maybe (String) , "userArn" :: Maybe (UserArn) , "environmentId" :: Maybe (EnvironmentId) , "lastAccess" :: Maybe (Types.Timestamp) } -> {"permissions" :: Maybe (Permissions) , "userId" :: Maybe (String) , "userArn" :: Maybe (UserArn) , "environmentId" :: Maybe (EnvironmentId) , "lastAccess" :: Maybe (Types.Timestamp) } ) -> EnvironmentMember
newEnvironmentMember'  customize = (EnvironmentMember <<< customize) { "environmentId": Nothing, "lastAccess": Nothing, "permissions": Nothing, "userArn": Nothing, "userId": Nothing }



newtype EnvironmentMembersList = EnvironmentMembersList (Array EnvironmentMember)
derive instance newtypeEnvironmentMembersList :: Newtype EnvironmentMembersList _
derive instance repGenericEnvironmentMembersList :: Generic EnvironmentMembersList _
instance showEnvironmentMembersList :: Show EnvironmentMembersList where show = genericShow
instance decodeEnvironmentMembersList :: Decode EnvironmentMembersList where decode = genericDecode options
instance encodeEnvironmentMembersList :: Encode EnvironmentMembersList where encode = genericEncode options



newtype EnvironmentName = EnvironmentName String
derive instance newtypeEnvironmentName :: Newtype EnvironmentName _
derive instance repGenericEnvironmentName :: Generic EnvironmentName _
instance showEnvironmentName :: Show EnvironmentName where show = genericShow
instance decodeEnvironmentName :: Decode EnvironmentName where decode = genericDecode options
instance encodeEnvironmentName :: Encode EnvironmentName where encode = genericEncode options



newtype EnvironmentStatus = EnvironmentStatus String
derive instance newtypeEnvironmentStatus :: Newtype EnvironmentStatus _
derive instance repGenericEnvironmentStatus :: Generic EnvironmentStatus _
instance showEnvironmentStatus :: Show EnvironmentStatus where show = genericShow
instance decodeEnvironmentStatus :: Decode EnvironmentStatus where decode = genericDecode options
instance encodeEnvironmentStatus :: Encode EnvironmentStatus where encode = genericEncode options



newtype EnvironmentType = EnvironmentType String
derive instance newtypeEnvironmentType :: Newtype EnvironmentType _
derive instance repGenericEnvironmentType :: Generic EnvironmentType _
instance showEnvironmentType :: Show EnvironmentType where show = genericShow
instance decodeEnvironmentType :: Decode EnvironmentType where decode = genericDecode options
instance encodeEnvironmentType :: Encode EnvironmentType where encode = genericEncode options



-- | <p>An access permissions issue occurred.</p>
newtype ForbiddenException = ForbiddenException Types.NoArguments
derive instance newtypeForbiddenException :: Newtype ForbiddenException _
derive instance repGenericForbiddenException :: Generic ForbiddenException _
instance showForbiddenException :: Show ForbiddenException where show = genericShow
instance decodeForbiddenException :: Decode ForbiddenException where decode = genericDecode options
instance encodeForbiddenException :: Encode ForbiddenException where encode = genericEncode options



newtype InstanceType = InstanceType String
derive instance newtypeInstanceType :: Newtype InstanceType _
derive instance repGenericInstanceType :: Generic InstanceType _
instance showInstanceType :: Show InstanceType where show = genericShow
instance decodeInstanceType :: Decode InstanceType where decode = genericDecode options
instance encodeInstanceType :: Encode InstanceType where encode = genericEncode options



-- | <p>An internal server error occurred.</p>
newtype InternalServerErrorException = InternalServerErrorException Types.NoArguments
derive instance newtypeInternalServerErrorException :: Newtype InternalServerErrorException _
derive instance repGenericInternalServerErrorException :: Generic InternalServerErrorException _
instance showInternalServerErrorException :: Show InternalServerErrorException where show = genericShow
instance decodeInternalServerErrorException :: Decode InternalServerErrorException where decode = genericDecode options
instance encodeInternalServerErrorException :: Encode InternalServerErrorException where encode = genericEncode options



-- | <p>A service limit was exceeded.</p>
newtype LimitExceededException = LimitExceededException Types.NoArguments
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options



newtype ListEnvironmentsRequest = ListEnvironmentsRequest 
  { "nextToken" :: Maybe (String)
  , "maxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListEnvironmentsRequest :: Newtype ListEnvironmentsRequest _
derive instance repGenericListEnvironmentsRequest :: Generic ListEnvironmentsRequest _
instance showListEnvironmentsRequest :: Show ListEnvironmentsRequest where show = genericShow
instance decodeListEnvironmentsRequest :: Decode ListEnvironmentsRequest where decode = genericDecode options
instance encodeListEnvironmentsRequest :: Encode ListEnvironmentsRequest where encode = genericEncode options

-- | Constructs ListEnvironmentsRequest from required parameters
newListEnvironmentsRequest :: ListEnvironmentsRequest
newListEnvironmentsRequest  = ListEnvironmentsRequest { "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListEnvironmentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEnvironmentsRequest' :: ( { "nextToken" :: Maybe (String) , "maxResults" :: Maybe (MaxResults) } -> {"nextToken" :: Maybe (String) , "maxResults" :: Maybe (MaxResults) } ) -> ListEnvironmentsRequest
newListEnvironmentsRequest'  customize = (ListEnvironmentsRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing }



newtype ListEnvironmentsResult = ListEnvironmentsResult 
  { "nextToken" :: Maybe (String)
  , "environmentIds" :: Maybe (EnvironmentIdList)
  }
derive instance newtypeListEnvironmentsResult :: Newtype ListEnvironmentsResult _
derive instance repGenericListEnvironmentsResult :: Generic ListEnvironmentsResult _
instance showListEnvironmentsResult :: Show ListEnvironmentsResult where show = genericShow
instance decodeListEnvironmentsResult :: Decode ListEnvironmentsResult where decode = genericDecode options
instance encodeListEnvironmentsResult :: Encode ListEnvironmentsResult where encode = genericEncode options

-- | Constructs ListEnvironmentsResult from required parameters
newListEnvironmentsResult :: ListEnvironmentsResult
newListEnvironmentsResult  = ListEnvironmentsResult { "environmentIds": Nothing, "nextToken": Nothing }

-- | Constructs ListEnvironmentsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEnvironmentsResult' :: ( { "nextToken" :: Maybe (String) , "environmentIds" :: Maybe (EnvironmentIdList) } -> {"nextToken" :: Maybe (String) , "environmentIds" :: Maybe (EnvironmentIdList) } ) -> ListEnvironmentsResult
newListEnvironmentsResult'  customize = (ListEnvironmentsResult <<< customize) { "environmentIds": Nothing, "nextToken": Nothing }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



newtype MemberPermissions = MemberPermissions String
derive instance newtypeMemberPermissions :: Newtype MemberPermissions _
derive instance repGenericMemberPermissions :: Generic MemberPermissions _
instance showMemberPermissions :: Show MemberPermissions where show = genericShow
instance decodeMemberPermissions :: Decode MemberPermissions where decode = genericDecode options
instance encodeMemberPermissions :: Encode MemberPermissions where encode = genericEncode options



-- | <p>The target resource cannot be found.</p>
newtype NotFoundException = NotFoundException Types.NoArguments
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where decode = genericDecode options
instance encodeNotFoundException :: Encode NotFoundException where encode = genericEncode options



newtype Permissions = Permissions String
derive instance newtypePermissions :: Newtype Permissions _
derive instance repGenericPermissions :: Generic Permissions _
instance showPermissions :: Show Permissions where show = genericShow
instance decodePermissions :: Decode Permissions where decode = genericDecode options
instance encodePermissions :: Encode Permissions where encode = genericEncode options



newtype PermissionsList = PermissionsList (Array Permissions)
derive instance newtypePermissionsList :: Newtype PermissionsList _
derive instance repGenericPermissionsList :: Generic PermissionsList _
instance showPermissionsList :: Show PermissionsList where show = genericShow
instance decodePermissionsList :: Decode PermissionsList where decode = genericDecode options
instance encodePermissionsList :: Encode PermissionsList where encode = genericEncode options



newtype SubnetId = SubnetId String
derive instance newtypeSubnetId :: Newtype SubnetId _
derive instance repGenericSubnetId :: Generic SubnetId _
instance showSubnetId :: Show SubnetId where show = genericShow
instance decodeSubnetId :: Decode SubnetId where decode = genericDecode options
instance encodeSubnetId :: Encode SubnetId where encode = genericEncode options



-- | <p>Too many service requests were made over the given time period.</p>
newtype TooManyRequestsException = TooManyRequestsException Types.NoArguments
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where decode = genericDecode options
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where encode = genericEncode options



newtype UpdateEnvironmentMembershipRequest = UpdateEnvironmentMembershipRequest 
  { "environmentId" :: (EnvironmentId)
  , "userArn" :: (UserArn)
  , "permissions" :: (MemberPermissions)
  }
derive instance newtypeUpdateEnvironmentMembershipRequest :: Newtype UpdateEnvironmentMembershipRequest _
derive instance repGenericUpdateEnvironmentMembershipRequest :: Generic UpdateEnvironmentMembershipRequest _
instance showUpdateEnvironmentMembershipRequest :: Show UpdateEnvironmentMembershipRequest where show = genericShow
instance decodeUpdateEnvironmentMembershipRequest :: Decode UpdateEnvironmentMembershipRequest where decode = genericDecode options
instance encodeUpdateEnvironmentMembershipRequest :: Encode UpdateEnvironmentMembershipRequest where encode = genericEncode options

-- | Constructs UpdateEnvironmentMembershipRequest from required parameters
newUpdateEnvironmentMembershipRequest :: EnvironmentId -> MemberPermissions -> UserArn -> UpdateEnvironmentMembershipRequest
newUpdateEnvironmentMembershipRequest _environmentId _permissions _userArn = UpdateEnvironmentMembershipRequest { "environmentId": _environmentId, "permissions": _permissions, "userArn": _userArn }

-- | Constructs UpdateEnvironmentMembershipRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateEnvironmentMembershipRequest' :: EnvironmentId -> MemberPermissions -> UserArn -> ( { "environmentId" :: (EnvironmentId) , "userArn" :: (UserArn) , "permissions" :: (MemberPermissions) } -> {"environmentId" :: (EnvironmentId) , "userArn" :: (UserArn) , "permissions" :: (MemberPermissions) } ) -> UpdateEnvironmentMembershipRequest
newUpdateEnvironmentMembershipRequest' _environmentId _permissions _userArn customize = (UpdateEnvironmentMembershipRequest <<< customize) { "environmentId": _environmentId, "permissions": _permissions, "userArn": _userArn }



newtype UpdateEnvironmentMembershipResult = UpdateEnvironmentMembershipResult 
  { "membership" :: Maybe (EnvironmentMember)
  }
derive instance newtypeUpdateEnvironmentMembershipResult :: Newtype UpdateEnvironmentMembershipResult _
derive instance repGenericUpdateEnvironmentMembershipResult :: Generic UpdateEnvironmentMembershipResult _
instance showUpdateEnvironmentMembershipResult :: Show UpdateEnvironmentMembershipResult where show = genericShow
instance decodeUpdateEnvironmentMembershipResult :: Decode UpdateEnvironmentMembershipResult where decode = genericDecode options
instance encodeUpdateEnvironmentMembershipResult :: Encode UpdateEnvironmentMembershipResult where encode = genericEncode options

-- | Constructs UpdateEnvironmentMembershipResult from required parameters
newUpdateEnvironmentMembershipResult :: UpdateEnvironmentMembershipResult
newUpdateEnvironmentMembershipResult  = UpdateEnvironmentMembershipResult { "membership": Nothing }

-- | Constructs UpdateEnvironmentMembershipResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateEnvironmentMembershipResult' :: ( { "membership" :: Maybe (EnvironmentMember) } -> {"membership" :: Maybe (EnvironmentMember) } ) -> UpdateEnvironmentMembershipResult
newUpdateEnvironmentMembershipResult'  customize = (UpdateEnvironmentMembershipResult <<< customize) { "membership": Nothing }



newtype UpdateEnvironmentRequest = UpdateEnvironmentRequest 
  { "environmentId" :: (EnvironmentId)
  , "name" :: Maybe (EnvironmentName)
  , "description" :: Maybe (EnvironmentDescription)
  }
derive instance newtypeUpdateEnvironmentRequest :: Newtype UpdateEnvironmentRequest _
derive instance repGenericUpdateEnvironmentRequest :: Generic UpdateEnvironmentRequest _
instance showUpdateEnvironmentRequest :: Show UpdateEnvironmentRequest where show = genericShow
instance decodeUpdateEnvironmentRequest :: Decode UpdateEnvironmentRequest where decode = genericDecode options
instance encodeUpdateEnvironmentRequest :: Encode UpdateEnvironmentRequest where encode = genericEncode options

-- | Constructs UpdateEnvironmentRequest from required parameters
newUpdateEnvironmentRequest :: EnvironmentId -> UpdateEnvironmentRequest
newUpdateEnvironmentRequest _environmentId = UpdateEnvironmentRequest { "environmentId": _environmentId, "description": Nothing, "name": Nothing }

-- | Constructs UpdateEnvironmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateEnvironmentRequest' :: EnvironmentId -> ( { "environmentId" :: (EnvironmentId) , "name" :: Maybe (EnvironmentName) , "description" :: Maybe (EnvironmentDescription) } -> {"environmentId" :: (EnvironmentId) , "name" :: Maybe (EnvironmentName) , "description" :: Maybe (EnvironmentDescription) } ) -> UpdateEnvironmentRequest
newUpdateEnvironmentRequest' _environmentId customize = (UpdateEnvironmentRequest <<< customize) { "environmentId": _environmentId, "description": Nothing, "name": Nothing }



newtype UpdateEnvironmentResult = UpdateEnvironmentResult Types.NoArguments
derive instance newtypeUpdateEnvironmentResult :: Newtype UpdateEnvironmentResult _
derive instance repGenericUpdateEnvironmentResult :: Generic UpdateEnvironmentResult _
instance showUpdateEnvironmentResult :: Show UpdateEnvironmentResult where show = genericShow
instance decodeUpdateEnvironmentResult :: Decode UpdateEnvironmentResult where decode = genericDecode options
instance encodeUpdateEnvironmentResult :: Encode UpdateEnvironmentResult where encode = genericEncode options



newtype UserArn = UserArn String
derive instance newtypeUserArn :: Newtype UserArn _
derive instance repGenericUserArn :: Generic UserArn _
instance showUserArn :: Show UserArn where show = genericShow
instance decodeUserArn :: Decode UserArn where decode = genericDecode options
instance encodeUserArn :: Encode UserArn where encode = genericEncode options

