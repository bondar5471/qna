/****************************************************************************
** Meta object code from reading C++ file 'WebPage.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../WebPage.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'WebPage.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_WebPage[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      14,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: signature, parameters, type, tag, flags
       9,    8,    8,    8, 0x05,
      38,   28,    8,    8, 0x05,
      87,   81,    8,    8, 0x05,
     117,    8,    8,    8, 0x05,

 // slots: signature, parameters, type, tag, flags
     135,    8,  130,    8, 0x0a,
     163,    8,    8,    8, 0x0a,
     189,    8,    8,    8, 0x0a,
     203,    8,    8,    8, 0x0a,
     222,    8,  130,    8, 0x0a,
     234,    8,    8,    8, 0x0a,
     266,  259,    8,    8, 0x0a,
     323,   81,    8,    8, 0x0a,
     366,  364,    8,    8, 0x0a,
     402,    8,    8,    8, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_WebPage[] = {
    "WebPage\0\0pageFinished(bool)\0url,reply\0"
    "requestCreated(QByteArray&,QNetworkReply*)\0"
    "reply\0replyFinished(QNetworkReply*)\0"
    "modalReady()\0bool\0shouldInterruptJavaScript()\0"
    "injectJavascriptHelpers()\0loadStarted()\0"
    "loadFinished(bool)\0isLoading()\0"
    "frameCreated(QWebFrame*)\0reply,\0"
    "handleSslErrorsForReply(QNetworkReply*,QList<QSslError>)\0"
    "handleUnsupportedContent(QNetworkReply*)\0"
    ",\0replyFinished(QUrl&,QNetworkReply*)\0"
    "remove()\0"
};

void WebPage::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        WebPage *_t = static_cast<WebPage *>(_o);
        switch (_id) {
        case 0: _t->pageFinished((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->requestCreated((*reinterpret_cast< QByteArray(*)>(_a[1])),(*reinterpret_cast< QNetworkReply*(*)>(_a[2]))); break;
        case 2: _t->replyFinished((*reinterpret_cast< QNetworkReply*(*)>(_a[1]))); break;
        case 3: _t->modalReady(); break;
        case 4: { bool _r = _t->shouldInterruptJavaScript();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 5: _t->injectJavascriptHelpers(); break;
        case 6: _t->loadStarted(); break;
        case 7: _t->loadFinished((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 8: { bool _r = _t->isLoading();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 9: _t->frameCreated((*reinterpret_cast< QWebFrame*(*)>(_a[1]))); break;
        case 10: _t->handleSslErrorsForReply((*reinterpret_cast< QNetworkReply*(*)>(_a[1])),(*reinterpret_cast< const QList<QSslError>(*)>(_a[2]))); break;
        case 11: _t->handleUnsupportedContent((*reinterpret_cast< QNetworkReply*(*)>(_a[1]))); break;
        case 12: _t->replyFinished((*reinterpret_cast< QUrl(*)>(_a[1])),(*reinterpret_cast< QNetworkReply*(*)>(_a[2]))); break;
        case 13: _t->remove(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData WebPage::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject WebPage::staticMetaObject = {
    { &QWebPage::staticMetaObject, qt_meta_stringdata_WebPage,
      qt_meta_data_WebPage, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &WebPage::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *WebPage::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *WebPage::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_WebPage))
        return static_cast<void*>(const_cast< WebPage*>(this));
    return QWebPage::qt_metacast(_clname);
}

int WebPage::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWebPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 14)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 14;
    }
    return _id;
}

// SIGNAL 0
void WebPage::pageFinished(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void WebPage::requestCreated(QByteArray & _t1, QNetworkReply * _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void WebPage::replyFinished(QNetworkReply * _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void WebPage::modalReady()
{
    QMetaObject::activate(this, &staticMetaObject, 3, 0);
}
QT_END_MOC_NAMESPACE
