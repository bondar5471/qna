/****************************************************************************
** Meta object code from reading C++ file 'NetworkReplyProxy.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../NetworkReplyProxy.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'NetworkReplyProxy.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_NetworkReplyProxy[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      19,   18,   18,   18, 0x0a,
      37,   18,   18,   18, 0x0a,
      60,   53,   18,   18, 0x0a,
     103,   18,   18,   18, 0x0a,
     121,   18,   18,   18, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_NetworkReplyProxy[] = {
    "NetworkReplyProxy\0\0ignoreSslErrors()\0"
    "applyMetaData()\0_error\0"
    "errorInternal(QNetworkReply::NetworkError)\0"
    "handleReadyRead()\0handleFinished()\0"
};

void NetworkReplyProxy::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        NetworkReplyProxy *_t = static_cast<NetworkReplyProxy *>(_o);
        switch (_id) {
        case 0: _t->ignoreSslErrors(); break;
        case 1: _t->applyMetaData(); break;
        case 2: _t->errorInternal((*reinterpret_cast< QNetworkReply::NetworkError(*)>(_a[1]))); break;
        case 3: _t->handleReadyRead(); break;
        case 4: _t->handleFinished(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData NetworkReplyProxy::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject NetworkReplyProxy::staticMetaObject = {
    { &QNetworkReply::staticMetaObject, qt_meta_stringdata_NetworkReplyProxy,
      qt_meta_data_NetworkReplyProxy, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &NetworkReplyProxy::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *NetworkReplyProxy::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *NetworkReplyProxy::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_NetworkReplyProxy))
        return static_cast<void*>(const_cast< NetworkReplyProxy*>(this));
    return QNetworkReply::qt_metacast(_clname);
}

int NetworkReplyProxy::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QNetworkReply::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
