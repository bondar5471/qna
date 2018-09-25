/****************************************************************************
** Meta object code from reading C++ file 'WebPageManager.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../WebPageManager.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'WebPageManager.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_WebPageManager[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: signature, parameters, type, tag, flags
      16,   15,   15,   15, 0x05,
      35,   15,   15,   15, 0x05,

 // slots: signature, parameters, type, tag, flags
      49,   15,   15,   15, 0x0a,
      67,   15,   15,   15, 0x0a,
      97,   87,   15,   15, 0x0a,
     140,   15,   15,   15, 0x0a,
     162,   15,   15,   15, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_WebPageManager[] = {
    "WebPageManager\0\0pageFinished(bool)\0"
    "loadStarted()\0emitLoadStarted()\0"
    "setPageStatus(bool)\0url,reply\0"
    "requestCreated(QByteArray&,QNetworkReply*)\0"
    "handleReplyFinished()\0replyDestroyed(QObject*)\0"
};

void WebPageManager::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        WebPageManager *_t = static_cast<WebPageManager *>(_o);
        switch (_id) {
        case 0: _t->pageFinished((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->loadStarted(); break;
        case 2: _t->emitLoadStarted(); break;
        case 3: _t->setPageStatus((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->requestCreated((*reinterpret_cast< QByteArray(*)>(_a[1])),(*reinterpret_cast< QNetworkReply*(*)>(_a[2]))); break;
        case 5: _t->handleReplyFinished(); break;
        case 6: _t->replyDestroyed((*reinterpret_cast< QObject*(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData WebPageManager::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject WebPageManager::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_WebPageManager,
      qt_meta_data_WebPageManager, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &WebPageManager::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *WebPageManager::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *WebPageManager::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_WebPageManager))
        return static_cast<void*>(const_cast< WebPageManager*>(this));
    return QObject::qt_metacast(_clname);
}

int WebPageManager::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    }
    return _id;
}

// SIGNAL 0
void WebPageManager::pageFinished(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void WebPageManager::loadStarted()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}
QT_END_MOC_NAMESPACE
