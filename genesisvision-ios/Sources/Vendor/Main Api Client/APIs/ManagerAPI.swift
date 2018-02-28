//
// ManagerAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ManagerAPI {
    /**
     Create new investment request
     
     - parameter authorization: (header) JWT access token 
     - parameter request: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerAccountNewInvestmentRequestPost(authorization: String, request: NewInvestmentRequest? = nil, completion: @escaping ((_ data: UUID?,_ error: Error?) -> Void)) {
        apiManagerAccountNewInvestmentRequestPostWithRequestBuilder(authorization: authorization, request: request).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create new investment request
     - POST /api/manager/account/newInvestmentRequest
     - examples: [{contentType=application/json, example="046b6c7f-0b8a-43b9-b35d-6489e6daee91"}]
     
     - parameter authorization: (header) JWT access token 
     - parameter request: (body)  (optional)

     - returns: RequestBuilder<UUID> 
     */
    open class func apiManagerAccountNewInvestmentRequestPostWithRequestBuilder(authorization: String, request: NewInvestmentRequest? = nil) -> RequestBuilder<UUID> {
        let path = "/api/manager/account/newInvestmentRequest"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UUID>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Confirm email after registration
     
     - parameter userId: (query)  (optional)
     - parameter code: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerAuthConfirmEmailGet(userId: String? = nil, code: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        apiManagerAuthConfirmEmailGetWithRequestBuilder(userId: userId, code: code).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Confirm email after registration
     - GET /api/manager/auth/confirmEmail
     
     - parameter userId: (query)  (optional)
     - parameter code: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func apiManagerAuthConfirmEmailGetWithRequestBuilder(userId: String? = nil, code: String? = nil) -> RequestBuilder<Void> {
        let path = "/api/manager/auth/confirmEmail"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "userId": userId, 
            "code": code
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Authorize
     
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerAuthSignInPost(model: LoginViewModel? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        apiManagerAuthSignInPostWithRequestBuilder(model: model).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Authorize
     - POST /api/manager/auth/signIn
     - examples: [{contentType=application/json, example=""}]
     
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func apiManagerAuthSignInPostWithRequestBuilder(model: LoginViewModel? = nil) -> RequestBuilder<String> {
        let path = "/api/manager/auth/signIn"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Register new manager
     
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerAuthSignUpPost(model: RegisterManagerViewModel? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        apiManagerAuthSignUpPostWithRequestBuilder(model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Register new manager
     - POST /api/manager/auth/signUp
     
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func apiManagerAuthSignUpPostWithRequestBuilder(model: RegisterManagerViewModel? = nil) -> RequestBuilder<Void> {
        let path = "/api/manager/auth/signUp"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update auth token
     
     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerAuthUpdateTokenGet(authorization: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        apiManagerAuthUpdateTokenGetWithRequestBuilder(authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update auth token
     - GET /api/manager/auth/updateToken
     - examples: [{contentType=application/json, example=""}]
     
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<String> 
     */
    open class func apiManagerAuthUpdateTokenGetWithRequestBuilder(authorization: String) -> RequestBuilder<String> {
        let path = "/api/manager/auth/updateToken"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get all enabled trade servers
     
     - parameter filter: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerBrokersPost(filter: BrokersFilter? = nil, completion: @escaping ((_ data: BrokersViewModel?,_ error: Error?) -> Void)) {
        apiManagerBrokersPostWithRequestBuilder(filter: filter).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get all enabled trade servers
     - POST /api/manager/brokers
     - examples: [{contentType=application/json, example={
  "total" : 0,
  "brokers" : [ {
    "brokerId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "name" : "name",
    "host" : "host",
    "registrationDate" : "2000-01-23T04:56:07.000+00:00",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "type" : "Undefined",
    "broker" : {
      "name" : "name",
      "registrationDate" : "2000-01-23T04:56:07.000+00:00",
      "description" : "description",
      "logo" : "logo",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
    }
  }, {
    "brokerId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "name" : "name",
    "host" : "host",
    "registrationDate" : "2000-01-23T04:56:07.000+00:00",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "type" : "Undefined",
    "broker" : {
      "name" : "name",
      "registrationDate" : "2000-01-23T04:56:07.000+00:00",
      "description" : "description",
      "logo" : "logo",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
    }
  } ]
}}]
     
     - parameter filter: (body)  (optional)

     - returns: RequestBuilder<BrokersViewModel> 
     */
    open class func apiManagerBrokersPostWithRequestBuilder(filter: BrokersFilter? = nil) -> RequestBuilder<BrokersViewModel> {
        let path = "/api/manager/brokers"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: filter)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BrokersViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Cancel investment request
     
     - parameter requestId: (query)  
     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerInvestmentCancelInvestmentRequestPost(requestId: UUID, authorization: String, completion: @escaping ((_ error: Error?) -> Void)) {
        apiManagerInvestmentCancelInvestmentRequestPostWithRequestBuilder(requestId: requestId, authorization: authorization).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Cancel investment request
     - POST /api/manager/investment/cancelInvestmentRequest
     
     - parameter requestId: (query)  
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<Void> 
     */
    open class func apiManagerInvestmentCancelInvestmentRequestPostWithRequestBuilder(requestId: UUID, authorization: String) -> RequestBuilder<Void> {
        let path = "/api/manager/investment/cancelInvestmentRequest"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "requestId": requestId
        ])
        
        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Close existing investment program
     
     - parameter investmentProgramId: (query)  
     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerInvestmentClosePost(investmentProgramId: UUID, authorization: String, completion: @escaping ((_ error: Error?) -> Void)) {
        apiManagerInvestmentClosePostWithRequestBuilder(investmentProgramId: investmentProgramId, authorization: authorization).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Close existing investment program
     - POST /api/manager/investment/close
     
     - parameter investmentProgramId: (query)  
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<Void> 
     */
    open class func apiManagerInvestmentClosePostWithRequestBuilder(investmentProgramId: UUID, authorization: String) -> RequestBuilder<Void> {
        let path = "/api/manager/investment/close"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "investmentProgramId": investmentProgramId
        ])
        
        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Manager deposit in his own investment program
     
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerInvestmentInvestPost(authorization: String, model: Invest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        apiManagerInvestmentInvestPostWithRequestBuilder(authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Manager deposit in his own investment program
     - POST /api/manager/investment/invest
     
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func apiManagerInvestmentInvestPostWithRequestBuilder(authorization: String, model: Invest? = nil) -> RequestBuilder<Void> {
        let path = "/api/manager/investment/invest"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Manager withdrawal from his own investment program
     
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerInvestmentWithdrawPost(authorization: String, model: Invest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        apiManagerInvestmentWithdrawPostWithRequestBuilder(authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Manager withdrawal from his own investment program
     - POST /api/manager/investment/withdraw
     
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func apiManagerInvestmentWithdrawPostWithRequestBuilder(authorization: String, model: Invest? = nil) -> RequestBuilder<Void> {
        let path = "/api/manager/investment/withdraw"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Get full profile
     
     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerProfileFullGet(authorization: String, completion: @escaping ((_ data: ProfileFullViewModel?,_ error: Error?) -> Void)) {
        apiManagerProfileFullGetWithRequestBuilder(authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get full profile
     - GET /api/manager/profile/full
     - examples: [{contentType=application/json, example={
  "birthday" : "2000-01-23T04:56:07.000+00:00",
  "lastName" : "lastName",
  "country" : "country",
  "address" : "address",
  "gender" : true,
  "documentType" : "documentType",
  "city" : "city",
  "documentNumber" : "documentNumber",
  "avatar" : "avatar",
  "userName" : "userName",
  "firstName" : "firstName",
  "phone" : "phone",
  "middleName" : "middleName",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "email" : "email"
}}]
     
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<ProfileFullViewModel> 
     */
    open class func apiManagerProfileFullGetWithRequestBuilder(authorization: String) -> RequestBuilder<ProfileFullViewModel> {
        let path = "/api/manager/profile/full"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ProfileFullViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get public profile
     
     - parameter userId: (query)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerProfilePublicGet(userId: UUID, completion: @escaping ((_ data: ProfilePublicViewModel?,_ error: Error?) -> Void)) {
        apiManagerProfilePublicGetWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get public profile
     - GET /api/manager/profile/public
     - examples: [{contentType=application/json, example={
  "country" : "country",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "avatar" : "avatar",
  "username" : "username"
}}]
     
     - parameter userId: (query)  

     - returns: RequestBuilder<ProfilePublicViewModel> 
     */
    open class func apiManagerProfilePublicGetWithRequestBuilder(userId: UUID) -> RequestBuilder<ProfilePublicViewModel> {
        let path = "/api/manager/profile/public"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "userId": userId
        ])
        

        let requestBuilder: RequestBuilder<ProfilePublicViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update profile
     
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerProfileUpdatePost(authorization: String, model: UpdateProfileViewModel? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        apiManagerProfileUpdatePostWithRequestBuilder(authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update profile
     - POST /api/manager/profile/update
     
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func apiManagerProfileUpdatePostWithRequestBuilder(authorization: String, model: UpdateProfileViewModel? = nil) -> RequestBuilder<Void> {
        let path = "/api/manager/profile/update"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Get eth address for GVT depositing
     
     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerWalletAddressGet(authorization: String, completion: @escaping ((_ data: WalletAddressViewModel?,_ error: Error?) -> Void)) {
        apiManagerWalletAddressGetWithRequestBuilder(authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get eth address for GVT depositing
     - GET /api/manager/wallet/address
     - examples: [{contentType=application/json, example={
  "address" : "address",
  "currency" : "Undefined"
}}]
     
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<WalletAddressViewModel> 
     */
    open class func apiManagerWalletAddressGetWithRequestBuilder(authorization: String) -> RequestBuilder<WalletAddressViewModel> {
        let path = "/api/manager/wallet/address"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<WalletAddressViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get user wallets
     
     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerWalletGet(authorization: String, completion: @escaping ((_ data: WalletsViewModel?,_ error: Error?) -> Void)) {
        apiManagerWalletGetWithRequestBuilder(authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get user wallets
     - GET /api/manager/wallet
     - examples: [{contentType=application/json, example={
  "wallets" : [ {
    "amount" : 0.8008281904610115,
    "currency" : "Undefined",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  }, {
    "amount" : 0.8008281904610115,
    "currency" : "Undefined",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  } ]
}}]
     
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<WalletsViewModel> 
     */
    open class func apiManagerWalletGetWithRequestBuilder(authorization: String) -> RequestBuilder<WalletsViewModel> {
        let path = "/api/manager/wallet"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<WalletsViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get user wallet transactions
     
     - parameter authorization: (header) JWT access token 
     - parameter filter: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerWalletTransactionsPost(authorization: String, filter: TransactionsFilter? = nil, completion: @escaping ((_ data: WalletTransactionsViewModel?,_ error: Error?) -> Void)) {
        apiManagerWalletTransactionsPostWithRequestBuilder(authorization: authorization, filter: filter).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get user wallet transactions
     - POST /api/manager/wallet/transactions
     - examples: [{contentType=application/json, example={
  "total" : 6,
  "transactions" : [ {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "walletId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "amount" : 0.8008281904610115,
    "currency" : "Undefined",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "type" : "Deposit"
  }, {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "walletId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "amount" : 0.8008281904610115,
    "currency" : "Undefined",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "type" : "Deposit"
  } ]
}}]
     
     - parameter authorization: (header) JWT access token 
     - parameter filter: (body)  (optional)

     - returns: RequestBuilder<WalletTransactionsViewModel> 
     */
    open class func apiManagerWalletTransactionsPostWithRequestBuilder(authorization: String, filter: TransactionsFilter? = nil) -> RequestBuilder<WalletTransactionsViewModel> {
        let path = "/api/manager/wallet/transactions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: filter)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<WalletTransactionsViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Withdraw request
     
     - parameter authorization: (header) JWT access token 
     - parameter request: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiManagerWalletWithdrawRequestPost(authorization: String, request: WalletWithdrawRequestModel? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        apiManagerWalletWithdrawRequestPostWithRequestBuilder(authorization: authorization, request: request).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Withdraw request
     - POST /api/manager/wallet/withdrawRequest
     
     - parameter authorization: (header) JWT access token 
     - parameter request: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func apiManagerWalletWithdrawRequestPostWithRequestBuilder(authorization: String, request: WalletWithdrawRequestModel? = nil) -> RequestBuilder<Void> {
        let path = "/api/manager/wallet/withdrawRequest"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
