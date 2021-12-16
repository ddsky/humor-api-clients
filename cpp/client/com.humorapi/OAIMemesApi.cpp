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

#include "OAIMemesApi.h"
#include "OAIHelpers.h"

#include <QJsonArray>
#include <QJsonDocument>

namespace OpenAPI {

OAIMemesApi::OAIMemesApi() {

}

OAIMemesApi::~OAIMemesApi() {

}

OAIMemesApi::OAIMemesApi(QString host, QString basePath) {
    this->host = host;
    this->basePath = basePath;
}

void
OAIMemesApi::downvoteMeme(const qint32& id) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/memes/{id}/downvote");
    QString idPathParam("{"); 
    idPathParam.append("id").append("}");
    fullPath.replace(idPathParam, QUrl::toPercentEncoding(::OpenAPI::toStringValue(id)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "POST");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMemesApi::downvoteMemeCallback);

    worker->execute(&input);
}

void
OAIMemesApi::downvoteMemeCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_8 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit downvoteMemeSignal(output);
        emit downvoteMemeSignalFull(worker, output);
    } else {
        emit downvoteMemeSignalE(output, error_type, error_str);
        emit downvoteMemeSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMemesApi::randomMeme(const QString& keywords, const bool& keywords_in_image, const QString& media_type, const qint32& number, const qint32& min_rating) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/memes/random");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("keywords"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(keywords)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("keywords-in-image"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(keywords_in_image)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("media-type"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(media_type)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("number"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(number)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("min-rating"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(min_rating)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMemesApi::randomMemeCallback);

    worker->execute(&input);
}

void
OAIMemesApi::randomMemeCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_3 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit randomMemeSignal(output);
        emit randomMemeSignalFull(worker, output);
    } else {
        emit randomMemeSignalE(output, error_type, error_str);
        emit randomMemeSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMemesApi::searchMemes(const QString& keywords, const bool& keywords_in_image, const QString& media_type, const qint32& number, const qint32& min_rating, const OAINumber& offset) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/memes/search");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("keywords"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(keywords)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("keywords-in-image"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(keywords_in_image)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("media-type"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(media_type)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("number"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(number)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("min-rating"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(min_rating)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("offset"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(offset)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMemesApi::searchMemesCallback);

    worker->execute(&input);
}

void
OAIMemesApi::searchMemesCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_2 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit searchMemesSignal(output);
        emit searchMemesSignalFull(worker, output);
    } else {
        emit searchMemesSignalE(output, error_type, error_str);
        emit searchMemesSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMemesApi::upvoteMeme(const qint32& id) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/memes/{id}/upvote");
    QString idPathParam("{"); 
    idPathParam.append("id").append("}");
    fullPath.replace(idPathParam, QUrl::toPercentEncoding(::OpenAPI::toStringValue(id)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "POST");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMemesApi::upvoteMemeCallback);

    worker->execute(&input);
}

void
OAIMemesApi::upvoteMemeCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_8 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit upvoteMemeSignal(output);
        emit upvoteMemeSignalFull(worker, output);
    } else {
        emit upvoteMemeSignalE(output, error_type, error_str);
        emit upvoteMemeSignalEFull(worker, error_type, error_str);
    }
}


}
