/****************************************************************************
** Meta object code from reading C++ file 'TimeoutCommand.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../TimeoutCommand.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'TimeoutCommand.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_TimeoutCommand[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      16,   15,   15,   15, 0x0a,
      42,   33,   15,   15, 0x0a,
      69,   15,   15,   15, 0x0a,
      94,   15,   15,   15, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_TimeoutCommand[] = {
    "TimeoutCommand\0\0commandTimeout()\0"
    "response\0commandFinished(Response*)\0"
    "pageLoadingFromCommand()\0"
    "pendingLoadFinished(bool)\0"
};

void TimeoutCommand::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        TimeoutCommand *_t = static_cast<TimeoutCommand *>(_o);
        switch (_id) {
        case 0: _t->commandTimeout(); break;
        case 1: _t->commandFinished((*reinterpret_cast< Response*(*)>(_a[1]))); break;
        case 2: _t->pageLoadingFromCommand(); break;
        case 3: _t->pendingLoadFinished((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData TimeoutCommand::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject TimeoutCommand::staticMetaObject = {
    { &Command::staticMetaObject, qt_meta_stringdata_TimeoutCommand,
      qt_meta_data_TimeoutCommand, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &TimeoutCommand::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *TimeoutCommand::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *TimeoutCommand::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_TimeoutCommand))
        return static_cast<void*>(const_cast< TimeoutCommand*>(this));
    return Command::qt_metacast(_clname);
}

int TimeoutCommand::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = Command::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
