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

#include "OAIAnalyze_joke_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIAnalyze_joke_200_response::OAIAnalyze_joke_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIAnalyze_joke_200_response::OAIAnalyze_joke_200_response() {
    this->initializeModel();
}

OAIAnalyze_joke_200_response::~OAIAnalyze_joke_200_response() {}

void OAIAnalyze_joke_200_response::initializeModel() {

    m_joke_isSet = false;
    m_joke_isValid = false;

    m_tags_isSet = false;
    m_tags_isValid = false;
}

void OAIAnalyze_joke_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIAnalyze_joke_200_response::fromJsonObject(QJsonObject json) {

    m_joke_isValid = ::OpenAPI::fromJsonValue(m_joke, json[QString("joke")]);
    m_joke_isSet = !json[QString("joke")].isNull() && m_joke_isValid;

    m_tags_isValid = ::OpenAPI::fromJsonValue(m_tags, json[QString("tags")]);
    m_tags_isSet = !json[QString("tags")].isNull() && m_tags_isValid;
}

QString OAIAnalyze_joke_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIAnalyze_joke_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_joke_isSet) {
        obj.insert(QString("joke"), ::OpenAPI::toJsonValue(m_joke));
    }
    if (m_tags.size() > 0) {
        obj.insert(QString("tags"), ::OpenAPI::toJsonValue(m_tags));
    }
    return obj;
}

QString OAIAnalyze_joke_200_response::getJoke() const {
    return m_joke;
}
void OAIAnalyze_joke_200_response::setJoke(const QString &joke) {
    m_joke = joke;
    m_joke_isSet = true;
}

bool OAIAnalyze_joke_200_response::is_joke_Set() const{
    return m_joke_isSet;
}

bool OAIAnalyze_joke_200_response::is_joke_Valid() const{
    return m_joke_isValid;
}

QList<QString> OAIAnalyze_joke_200_response::getTags() const {
    return m_tags;
}
void OAIAnalyze_joke_200_response::setTags(const QList<QString> &tags) {
    m_tags = tags;
    m_tags_isSet = true;
}

bool OAIAnalyze_joke_200_response::is_tags_Set() const{
    return m_tags_isSet;
}

bool OAIAnalyze_joke_200_response::is_tags_Valid() const{
    return m_tags_isValid;
}

bool OAIAnalyze_joke_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_joke_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_tags.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIAnalyze_joke_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_joke_isValid && m_tags_isValid && true;
}

} // namespace OpenAPI
