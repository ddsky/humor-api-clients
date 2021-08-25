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
 * OAIInline_response_200_1.h
 *
 * 
 */

#ifndef OAIInline_response_200_1_H
#define OAIInline_response_200_1_H

#include <QJsonObject>


#include "com.humorapi.client.model\OAIObject.h"
#include <QList>

#include "OAIObject.h"
#include "OAIEnum.h"

namespace OpenAPI {

class OAIInline_response_200_1: public OAIObject {
public:
    OAIInline_response_200_1();
    OAIInline_response_200_1(QString json);
    ~OAIInline_response_200_1() override;

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    
    QList<OAIObject> getImages() const;
    void setImages(const QList<OAIObject> &images);

    
    
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void init();
    
    QList<OAIObject> images;
    bool m_images_isSet;
    bool m_images_isValid;
    
    };

}

#endif // OAIInline_response_200_1_H
