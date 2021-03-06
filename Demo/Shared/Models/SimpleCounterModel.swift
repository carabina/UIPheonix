//
//  UIPheonix
//  Copyright © 2016 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/UIPheonix
//  http://www.xybernic.com
//  http://www.khanofsweden.com
//

//
//  Copyright 2016 Mohsan Khan
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//


class SimpleCounterModel:UIPBaseCVCellModel
{
    // MARK: Public Members
    public var mValue:Int!
    public var mNotificationId:String!


    // MARK: UIPInstantiatable


    required init()
    {
        super.init()
    }


    override func setContents(with dictionary:Dictionary<String, AnyObject>)
    {
        mValue = dictionary["value"] as! Int

        mNotificationId = (dictionary["notificationId"] as? String) ?? nil    // fallback to default value
    }


    // MARK: Life Cycle


    init(value:Int, notificationId:String)
    {
        super.init()

        mValue = value
        mNotificationId = notificationId
    }


    // MARK: UIPBaseCVCellModel


    override class func viewReuseIdStatic()
    -> String
    {
        return "\(self)"
    }


    override func viewReuseId()
    -> String
    {
        return "\(type(of:self))"
    }


    override func toDictionary()
    -> Dictionary<String, Any>
    {
        return [
            "mValue":mValue,
            "mNotificationId":mNotificationId
        ]
    }
}

