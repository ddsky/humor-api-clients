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
 * OAIRate_word_200_response.h
 *
 * 
 */

#ifndef OAIRate_word_200_response_H
#define OAIRate_word_200_response_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRate_word_200_response : public OAIObject {
public:
    OAIRate_word_200_response();
    OAIRate_word_200_response(QString json);
    ~OAIRate_word_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    double getRating() const;
    void setRating(const double &rating);
    bool is_rating_Set() const;
    bool is_rating_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    double m_rating;
    bool m_rating_isSet;
    bool m_rating_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRate_word_200_response)

#endif // OAIRate_word_200_response_H