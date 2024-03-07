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

#include "OAIRandom_joke_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRandom_joke_200_response::OAIRandom_joke_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRandom_joke_200_response::OAIRandom_joke_200_response() {
    this->initializeModel();
}

OAIRandom_joke_200_response::~OAIRandom_joke_200_response() {}

void OAIRandom_joke_200_response::initializeModel() {

    m_id_isSet = false;
    m_id_isValid = false;

    m_joke_isSet = false;
    m_joke_isValid = false;
}

void OAIRandom_joke_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRandom_joke_200_response::fromJsonObject(QJsonObject json) {

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_joke_isValid = ::OpenAPI::fromJsonValue(m_joke, json[QString("joke")]);
    m_joke_isSet = !json[QString("joke")].isNull() && m_joke_isValid;
}

QString OAIRandom_joke_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRandom_joke_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_joke_isSet) {
        obj.insert(QString("joke"), ::OpenAPI::toJsonValue(m_joke));
    }
    return obj;
}

qint32 OAIRandom_joke_200_response::getId() const {
    return m_id;
}
void OAIRandom_joke_200_response::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAIRandom_joke_200_response::is_id_Set() const{
    return m_id_isSet;
}

bool OAIRandom_joke_200_response::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIRandom_joke_200_response::getJoke() const {
    return m_joke;
}
void OAIRandom_joke_200_response::setJoke(const QString &joke) {
    m_joke = joke;
    m_joke_isSet = true;
}

bool OAIRandom_joke_200_response::is_joke_Set() const{
    return m_joke_isSet;
}

bool OAIRandom_joke_200_response::is_joke_Valid() const{
    return m_joke_isValid;
}

bool OAIRandom_joke_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_joke_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRandom_joke_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_id_isValid && m_joke_isValid && true;
}

} // namespace OpenAPI