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


#include "OAIInline_response_200_7.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIInline_response_200_7::OAIInline_response_200_7(QString json) {
    this->init();
    this->fromJson(json);
}

OAIInline_response_200_7::OAIInline_response_200_7() {
    this->init();
}

OAIInline_response_200_7::~OAIInline_response_200_7() {

}

void
OAIInline_response_200_7::init() {
    
    m_word_isSet = false;
    m_word_isValid = false;
    
    m_rating_isSet = false;
    m_rating_isValid = false;
    }

void
OAIInline_response_200_7::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIInline_response_200_7::fromJsonObject(QJsonObject json) {
    
    m_word_isValid = ::OpenAPI::fromJsonValue(word, json[QString("word")]);
    
    
    m_rating_isValid = ::OpenAPI::fromJsonValue(rating, json[QString("rating")]);
    
    
}

QString
OAIInline_response_200_7::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIInline_response_200_7::asJsonObject() const {
    QJsonObject obj;
	if(m_word_isSet){
        obj.insert(QString("word"), ::OpenAPI::toJsonValue(word));
    }
	if(rating.isSet()){
        obj.insert(QString("rating"), ::OpenAPI::toJsonValue(rating));
    }
    return obj;
}


QString
OAIInline_response_200_7::getWord() const {
    return word;
}
void
OAIInline_response_200_7::setWord(const QString &word) {
    this->word = word;
    this->m_word_isSet = true;
}


OAINumber
OAIInline_response_200_7::getRating() const {
    return rating;
}
void
OAIInline_response_200_7::setRating(const OAINumber &rating) {
    this->rating = rating;
    this->m_rating_isSet = true;
}

bool
OAIInline_response_200_7::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(m_word_isSet){ isObjectUpdated = true; break;}
    
        if(rating.isSet()){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

bool
OAIInline_response_200_7::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_word_isValid && m_rating_isValid && true;
}

}

