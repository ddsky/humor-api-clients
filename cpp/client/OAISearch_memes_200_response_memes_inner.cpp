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

#include "OAISearch_memes_200_response_memes_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearch_memes_200_response_memes_inner::OAISearch_memes_200_response_memes_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearch_memes_200_response_memes_inner::OAISearch_memes_200_response_memes_inner() {
    this->initializeModel();
}

OAISearch_memes_200_response_memes_inner::~OAISearch_memes_200_response_memes_inner() {}

void OAISearch_memes_200_response_memes_inner::initializeModel() {

    m_id_isSet = false;
    m_id_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;

    m_type_isSet = false;
    m_type_isValid = false;
}

void OAISearch_memes_200_response_memes_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearch_memes_200_response_memes_inner::fromJsonObject(QJsonObject json) {

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(m_url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;

    m_type_isValid = ::OpenAPI::fromJsonValue(m_type, json[QString("type")]);
    m_type_isSet = !json[QString("type")].isNull() && m_type_isValid;
}

QString OAISearch_memes_200_response_memes_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearch_memes_200_response_memes_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(m_url));
    }
    if (m_type_isSet) {
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(m_type));
    }
    return obj;
}

qint32 OAISearch_memes_200_response_memes_inner::getId() const {
    return m_id;
}
void OAISearch_memes_200_response_memes_inner::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAISearch_memes_200_response_memes_inner::is_id_Set() const{
    return m_id_isSet;
}

bool OAISearch_memes_200_response_memes_inner::is_id_Valid() const{
    return m_id_isValid;
}

QString OAISearch_memes_200_response_memes_inner::getUrl() const {
    return m_url;
}
void OAISearch_memes_200_response_memes_inner::setUrl(const QString &url) {
    m_url = url;
    m_url_isSet = true;
}

bool OAISearch_memes_200_response_memes_inner::is_url_Set() const{
    return m_url_isSet;
}

bool OAISearch_memes_200_response_memes_inner::is_url_Valid() const{
    return m_url_isValid;
}

QString OAISearch_memes_200_response_memes_inner::getType() const {
    return m_type;
}
void OAISearch_memes_200_response_memes_inner::setType(const QString &type) {
    m_type = type;
    m_type_isSet = true;
}

bool OAISearch_memes_200_response_memes_inner::is_type_Set() const{
    return m_type_isSet;
}

bool OAISearch_memes_200_response_memes_inner::is_type_Valid() const{
    return m_type_isValid;
}

bool OAISearch_memes_200_response_memes_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_url_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_type_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearch_memes_200_response_memes_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_id_isValid && m_url_isValid && m_type_isValid && true;
}

} // namespace OpenAPI
