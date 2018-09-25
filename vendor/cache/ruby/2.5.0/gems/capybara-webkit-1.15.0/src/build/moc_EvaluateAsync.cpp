/****************************************************************************
** Meta object code from reading C++ file 'EvaluateAsync.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../EvaluateAsync.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'EvaluateAsync.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_EvaluateAsync[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: signature, parameters, type, tag, flags
      22,   15,   14,   14, 0x02,
      44,   15,   14,   14, 0x02,

       0        // eod
};

static const char qt_meta_stringdata_EvaluateAsync[] = {
    "EvaluateAsync\0\0result\0asyncResult(QVariant)\0"
    "asyncResult(QVariantList)\0"
};

void EvaluateAsync::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        EvaluateAsync *_t = static_cast<EvaluateAsync *>(_o);
        switch (_id) {
        case 0: _t->asyncResult((*reinterpret_cast< QVariant(*)>(_a[1]))); break;
        case 1: _t->asyncResult((*reinterpret_cast< QVariantList(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData EvaluateAsync::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject EvaluateAsync::staticMetaObject = {
    { &SocketCommand::staticMetaObject, qt_meta_stringdata_EvaluateAsync,
      qt_meta_data_EvaluateAsync, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &EvaluateAsync::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *EvaluateAsync::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *EvaluateAsync::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_EvaluateAsync))
        return static_cast<void*>(const_cast< EvaluateAsync*>(this));
    return SocketCommand::qt_metacast(_clname);
}

int EvaluateAsync::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = SocketCommand::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
