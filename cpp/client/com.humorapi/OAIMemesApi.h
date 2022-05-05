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

#ifndef OAI_OAIMemesApi_H
#define OAI_OAIMemesApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"
#include "OAIOauth.h"

#include "com.humorapi.client.model\OAIInline_response_200_2.h"
#include "com.humorapi.client.model\OAIInline_response_200_3.h"
#include "com.humorapi.client.model\OAIInline_response_200_8.h"
#include <QString>

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAIMemesApi : public QObject {
    Q_OBJECT

public:
    OAIMemesApi(const int timeOut = 0);
    ~OAIMemesApi();

    void initializeServerConfigs();
    int setDefaultServerValue(int serverIndex,const QString &operation, const QString &variable,const QString &val);
    void setServerIndex(const QString &operation, int serverIndex);
    void setApiKey(const QString &apiKeyName, const QString &apiKey);
    void setBearerToken(const QString &token);
    void setUsername(const QString &username);
    void setPassword(const QString &password);
    void setTimeOut(const int timeOut);
    void setWorkingDirectory(const QString &path);
    void setNetworkAccessManager(QNetworkAccessManager* manager);
    int addServerConfiguration(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables = QMap<QString, OAIServerVariable>());
    void setNewServerForAllOperations(const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void setNewServer(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void addHeaders(const QString &key, const QString &value);
    void enableRequestCompression();
    void enableResponseCompression();
    void abortRequests();
    QString getParamStylePrefix(const QString &style);
    QString getParamStyleSuffix(const QString &style);
    QString getParamStyleDelimiter(const QString &style, const QString &name, bool isExplode);

    /**
    * @param[in]  id qint32 [required]
    */
    void downvoteMeme(const qint32 &id);

    /**
    * @param[in]  keywords QString [optional]
    * @param[in]  keywords_in_image bool [optional]
    * @param[in]  media_type QString [optional]
    * @param[in]  number qint32 [optional]
    * @param[in]  min_rating qint32 [optional]
    */
    void randomMeme(const ::OpenAPI::OptionalParam<QString> &keywords = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<bool> &keywords_in_image = ::OpenAPI::OptionalParam<bool>(), const ::OpenAPI::OptionalParam<QString> &media_type = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &min_rating = ::OpenAPI::OptionalParam<qint32>());

    /**
    * @param[in]  keywords QString [optional]
    * @param[in]  keywords_in_image bool [optional]
    * @param[in]  media_type QString [optional]
    * @param[in]  number qint32 [optional]
    * @param[in]  min_rating qint32 [optional]
    * @param[in]  offset double [optional]
    */
    void searchMemes(const ::OpenAPI::OptionalParam<QString> &keywords = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<bool> &keywords_in_image = ::OpenAPI::OptionalParam<bool>(), const ::OpenAPI::OptionalParam<QString> &media_type = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &min_rating = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<double> &offset = ::OpenAPI::OptionalParam<double>());

    /**
    * @param[in]  id qint32 [required]
    */
    void upvoteMeme(const qint32 &id);


private:
    QMap<QString,int> _serverIndices;
    QMap<QString,QList<OAIServerConfiguration>> _serverConfigs;
    QMap<QString, QString> _apiKeys;
    QString _bearerToken;
    QString _username;
    QString _password;
    int _timeOut;
    QString _workingDirectory;
    QNetworkAccessManager* _manager;
    QMap<QString, QString> _defaultHeaders;
    bool _isResponseCompressionEnabled;
    bool _isRequestCompressionEnabled;
    OAIHttpRequestInput _latestInput;
    OAIHttpRequestWorker *_latestWorker;
    QStringList _latestScope;
    OauthCode _authFlow;
    OauthImplicit _implicitFlow;
    OauthCredentials _credentialFlow;
    OauthPassword _passwordFlow;
    int _OauthMethod = 0;

    void downvoteMemeCallback(OAIHttpRequestWorker *worker);
    void randomMemeCallback(OAIHttpRequestWorker *worker);
    void searchMemesCallback(OAIHttpRequestWorker *worker);
    void upvoteMemeCallback(OAIHttpRequestWorker *worker);

signals:

    void downvoteMemeSignal(OAIInline_response_200_8 summary);
    void randomMemeSignal(OAIInline_response_200_3 summary);
    void searchMemesSignal(OAIInline_response_200_2 summary);
    void upvoteMemeSignal(OAIInline_response_200_8 summary);

    void downvoteMemeSignalFull(OAIHttpRequestWorker *worker, OAIInline_response_200_8 summary);
    void randomMemeSignalFull(OAIHttpRequestWorker *worker, OAIInline_response_200_3 summary);
    void searchMemesSignalFull(OAIHttpRequestWorker *worker, OAIInline_response_200_2 summary);
    void upvoteMemeSignalFull(OAIHttpRequestWorker *worker, OAIInline_response_200_8 summary);

    void downvoteMemeSignalE(OAIInline_response_200_8 summary, QNetworkReply::NetworkError error_type, QString error_str);
    void randomMemeSignalE(OAIInline_response_200_3 summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchMemesSignalE(OAIInline_response_200_2 summary, QNetworkReply::NetworkError error_type, QString error_str);
    void upvoteMemeSignalE(OAIInline_response_200_8 summary, QNetworkReply::NetworkError error_type, QString error_str);

    void downvoteMemeSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void randomMemeSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchMemesSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void upvoteMemeSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();

public slots:
    void tokenAvailable();
    
};

} // namespace OpenAPI
#endif
