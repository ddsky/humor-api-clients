/**
 * Humor API
 * Awesome Humor API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@humorapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIInline_response_200_6.h
 *
 * 
 */

#ifndef OAIInline_response_200_6_H
#define OAIInline_response_200_6_H

#include <QJsonObject>


#include "com.humorapi.client.model\OAINumber.h"

#include "OAIObject.h"
#include "OAIEnum.h"

namespace OpenAPI {

class OAIInline_response_200_6: public OAIObject {
public:
    OAIInline_response_200_6();
    OAIInline_response_200_6(QString json);
    ~OAIInline_response_200_6() override;

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    
    OAINumber getRating() const;
    void setRating(const OAINumber &rating);

    
    
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void init();
    
    OAINumber rating;
    bool m_rating_isSet;
    bool m_rating_isValid;
    
    };

}

#endif // OAIInline_response_200_6_H
