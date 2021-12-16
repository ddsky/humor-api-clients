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

#include "OAIJokesApi.h"
#include "OAIHelpers.h"

#include <QJsonArray>
#include <QJsonDocument>

namespace OpenAPI {

OAIJokesApi::OAIJokesApi() {

}

OAIJokesApi::~OAIJokesApi() {

}

OAIJokesApi::OAIJokesApi(QString host, QString basePath) {
    this->host = host;
    this->basePath = basePath;
}

void
OAIJokesApi::analyzeJoke(const QString& body) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/jokes/analyze");
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "POST");

    
    QString output(body);
    input.request_body.append(output);
    

    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIJokesApi::analyzeJokeCallback);

    worker->execute(&input);
}

void
OAIJokesApi::analyzeJokeCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_9 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit analyzeJokeSignal(output);
        emit analyzeJokeSignalFull(worker, output);
    } else {
        emit analyzeJokeSignalE(output, error_type, error_str);
        emit analyzeJokeSignalEFull(worker, error_type, error_str);
    }
}

void
OAIJokesApi::downvoteJoke(const qint32& id) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/jokes/{id}/downvote");
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
            &OAIJokesApi::downvoteJokeCallback);

    worker->execute(&input);
}

void
OAIJokesApi::downvoteJokeCallback(OAIHttpRequestWorker * worker) {
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
        emit downvoteJokeSignal(output);
        emit downvoteJokeSignalFull(worker, output);
    } else {
        emit downvoteJokeSignalE(output, error_type, error_str);
        emit downvoteJokeSignalEFull(worker, error_type, error_str);
    }
}

void
OAIJokesApi::randomJoke(const QString& keywords, const QString& include_tags, const QString& exclude_tags, const qint32& min_rating, const qint32& max_length) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/jokes/random");
    
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
    fullPath.append(QUrl::toPercentEncoding("include-tags"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(include_tags)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("exclude-tags"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(exclude_tags)));
    
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
    fullPath.append(QUrl::toPercentEncoding("max-length"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(max_length)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIJokesApi::randomJokeCallback);

    worker->execute(&input);
}

void
OAIJokesApi::randomJokeCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_4 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit randomJokeSignal(output);
        emit randomJokeSignalFull(worker, output);
    } else {
        emit randomJokeSignalE(output, error_type, error_str);
        emit randomJokeSignalEFull(worker, error_type, error_str);
    }
}

void
OAIJokesApi::searchJokes(const QString& keywords, const QString& include_tags, const QString& exclude_tags, const qint32& number, const qint32& min_rating, const qint32& max_length, const OAINumber& offset) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/jokes/search");
    
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
    fullPath.append(QUrl::toPercentEncoding("include-tags"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(include_tags)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("exclude-tags"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(exclude_tags)));
    
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
    fullPath.append(QUrl::toPercentEncoding("max-length"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(max_length)));
    
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
            &OAIJokesApi::searchJokesCallback);

    worker->execute(&input);
}

void
OAIJokesApi::searchJokesCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit searchJokesSignal(output);
        emit searchJokesSignalFull(worker, output);
    } else {
        emit searchJokesSignalE(output, error_type, error_str);
        emit searchJokesSignalEFull(worker, error_type, error_str);
    }
}

void
OAIJokesApi::submitJoke(const QString& body) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/jokes");
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "POST");

    
    QString output(body);
    input.request_body.append(output);
    

    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIJokesApi::submitJokeCallback);

    worker->execute(&input);
}

void
OAIJokesApi::submitJokeCallback(OAIHttpRequestWorker * worker) {
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
        emit submitJokeSignal(output);
        emit submitJokeSignalFull(worker, output);
    } else {
        emit submitJokeSignalE(output, error_type, error_str);
        emit submitJokeSignalEFull(worker, error_type, error_str);
    }
}

void
OAIJokesApi::upvoteJoke(const qint32& id) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/jokes/{id}/upvote");
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
            &OAIJokesApi::upvoteJokeCallback);

    worker->execute(&input);
}

void
OAIJokesApi::upvoteJokeCallback(OAIHttpRequestWorker * worker) {
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
        emit upvoteJokeSignal(output);
        emit upvoteJokeSignalFull(worker, output);
    } else {
        emit upvoteJokeSignalE(output, error_type, error_str);
        emit upvoteJokeSignalEFull(worker, error_type, error_str);
    }
}


}
