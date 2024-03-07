QT += network

HEADERS += \
# Models
    $${PWD}/OAIAnalyze_joke_200_response.h \
    $${PWD}/OAIGenerate_nonsense_word_200_response.h \
    $${PWD}/OAIPraise_200_response.h \
    $${PWD}/OAIRandom_joke_200_response.h \
    $${PWD}/OAIRandom_meme_200_response.h \
    $${PWD}/OAIRate_word_200_response.h \
    $${PWD}/OAISearch_gifs_200_response.h \
    $${PWD}/OAISearch_gifs_200_response_images_inner.h \
    $${PWD}/OAISearch_jokes_200_response.h \
    $${PWD}/OAISearch_jokes_200_response_jokes_inner.h \
    $${PWD}/OAISearch_memes_200_response.h \
    $${PWD}/OAISearch_memes_200_response_memes_inner.h \
    $${PWD}/OAISubmit_joke_200_response.h \
# APIs
    $${PWD}/OAIJokesApi.h \
    $${PWD}/OAIMemesApi.h \
    $${PWD}/OAIOtherApi.h \
# Others
    $${PWD}/OAIHelpers.h \
    $${PWD}/OAIHttpRequest.h \
    $${PWD}/OAIObject.h \
    $${PWD}/OAIEnum.h \
    $${PWD}/OAIHttpFileElement.h \
    $${PWD}/OAIServerConfiguration.h \
    $${PWD}/OAIServerVariable.h \
    $${PWD}/OAIOauth.h

SOURCES += \
# Models
    $${PWD}/OAIAnalyze_joke_200_response.cpp \
    $${PWD}/OAIGenerate_nonsense_word_200_response.cpp \
    $${PWD}/OAIPraise_200_response.cpp \
    $${PWD}/OAIRandom_joke_200_response.cpp \
    $${PWD}/OAIRandom_meme_200_response.cpp \
    $${PWD}/OAIRate_word_200_response.cpp \
    $${PWD}/OAISearch_gifs_200_response.cpp \
    $${PWD}/OAISearch_gifs_200_response_images_inner.cpp \
    $${PWD}/OAISearch_jokes_200_response.cpp \
    $${PWD}/OAISearch_jokes_200_response_jokes_inner.cpp \
    $${PWD}/OAISearch_memes_200_response.cpp \
    $${PWD}/OAISearch_memes_200_response_memes_inner.cpp \
    $${PWD}/OAISubmit_joke_200_response.cpp \
# APIs
    $${PWD}/OAIJokesApi.cpp \
    $${PWD}/OAIMemesApi.cpp \
    $${PWD}/OAIOtherApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp \
    $${PWD}/OAIOauth.cpp
