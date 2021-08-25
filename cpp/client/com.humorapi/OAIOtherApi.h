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

#ifndef OAI_OAIOtherApi_H
#define OAI_OAIOtherApi_H

#include "OAIHttpRequest.h"

#include "com.humorapi.client.model\OAIInline_response_200_1.h"
#include "com.humorapi.client.model\OAIInline_response_200_5.h"
#include "com.humorapi.client.model\OAIInline_response_200_6.h"
#include "com.humorapi.client.model\OAIInline_response_200_7.h"
#include <QString>

#include <QObject>

namespace OpenAPI {

class OAIOtherApi: public QObject {
    Q_OBJECT

public:
    OAIOtherApi();
    OAIOtherApi(QString host, QString basePath);
    ~OAIOtherApi();

    QString host;
    QString basePath;
    QMap<QString, QString> defaultHeaders;

    void generateNonsenseWord();
    void insult(const QString& name, const QString& reason);
    void praise(const QString& name, const QString& reason);
    void rateWord(const QString& word);
    void searchGifs(const QString& query, const qint32& number);
    
private:
    void generateNonsenseWordCallback (OAIHttpRequestWorker * worker);
    void insultCallback (OAIHttpRequestWorker * worker);
    void praiseCallback (OAIHttpRequestWorker * worker);
    void rateWordCallback (OAIHttpRequestWorker * worker);
    void searchGifsCallback (OAIHttpRequestWorker * worker);
    
signals:
    void generateNonsenseWordSignal(OAIInline_response_200_7 summary);
    void insultSignal(OAIInline_response_200_5 summary);
    void praiseSignal(OAIInline_response_200_5 summary);
    void rateWordSignal(OAIInline_response_200_6 summary);
    void searchGifsSignal(OAIInline_response_200_1 summary);
    
    void generateNonsenseWordSignalFull(OAIHttpRequestWorker* worker, OAIInline_response_200_7 summary);
    void insultSignalFull(OAIHttpRequestWorker* worker, OAIInline_response_200_5 summary);
    void praiseSignalFull(OAIHttpRequestWorker* worker, OAIInline_response_200_5 summary);
    void rateWordSignalFull(OAIHttpRequestWorker* worker, OAIInline_response_200_6 summary);
    void searchGifsSignalFull(OAIHttpRequestWorker* worker, OAIInline_response_200_1 summary);
    
    void generateNonsenseWordSignalE(OAIInline_response_200_7 summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void insultSignalE(OAIInline_response_200_5 summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void praiseSignalE(OAIInline_response_200_5 summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void rateWordSignalE(OAIInline_response_200_6 summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void searchGifsSignalE(OAIInline_response_200_1 summary, QNetworkReply::NetworkError error_type, QString& error_str);
    
    void generateNonsenseWordSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void insultSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void praiseSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void rateWordSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void searchGifsSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    
};

}
#endif