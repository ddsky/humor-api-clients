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
 * OAISearch_gifs_200_response.h
 *
 * 
 */

#ifndef OAISearch_gifs_200_response_H
#define OAISearch_gifs_200_response_H

#include <QJsonObject>

#include "OAISearch_gifs_200_response_images_inner.h"
#include <QSet>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearch_gifs_200_response_images_inner;

class OAISearch_gifs_200_response : public OAIObject {
public:
    OAISearch_gifs_200_response();
    OAISearch_gifs_200_response(QString json);
    ~OAISearch_gifs_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QSet<OAISearch_gifs_200_response_images_inner> getImages() const;
    void setImages(const QSet<OAISearch_gifs_200_response_images_inner> &images);
    bool is_images_Set() const;
    bool is_images_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QSet<OAISearch_gifs_200_response_images_inner> m_images;
    bool m_images_isSet;
    bool m_images_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearch_gifs_200_response)

#endif // OAISearch_gifs_200_response_H