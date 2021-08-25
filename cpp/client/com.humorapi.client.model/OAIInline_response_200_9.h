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
 * OAIInline_response_200_9.h
 *
 * 
 */

#ifndef OAIInline_response_200_9_H
#define OAIInline_response_200_9_H

#include <QJsonObject>


#include <QList>
#include <QString>

#include "OAIObject.h"
#include "OAIEnum.h"

namespace OpenAPI {

class OAIInline_response_200_9: public OAIObject {
public:
    OAIInline_response_200_9();
    OAIInline_response_200_9(QString json);
    ~OAIInline_response_200_9() override;

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    
    QString getJoke() const;
    void setJoke(const QString &joke);

    
    QList<QString> getTags() const;
    void setTags(const QList<QString> &tags);

    
    
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void init();
    
    QString joke;
    bool m_joke_isSet;
    bool m_joke_isValid;
    
    QList<QString> tags;
    bool m_tags_isSet;
    bool m_tags_isValid;
    
    };

}

#endif // OAIInline_response_200_9_H
