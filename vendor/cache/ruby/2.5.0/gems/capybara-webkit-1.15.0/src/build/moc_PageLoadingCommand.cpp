/****************************************************************************
** Meta object code from reading C++ file 'PageLoadingCommand.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../PageLoadingCommand.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'PageLoadingCommand.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PageLoadingCommand[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      20,   19,   19,   19, 0x0a,
      53,   45,   19,   19, 0x0a,
      88,   79,   19,   19, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_PageLoadingCommand[] = {
    "PageLoadingCommand\0\0pageLoadingFromCommand()\0"
    "success\0pendingLoadFinished(bool)\0"
    "response\0commandFinished(Response*)\0"
};

void PageLoadingCommand::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageLoadingCommand *_t = static_cast<PageLoadingCommand *>(_o);
        switch (_id) {
        case 0: _t->pageLoadingFromCommand(); break;
        case 1: _t->pendingLoadFinished((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 2: _t->commandFinished((*reinterpret_cast< Response*(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PageLoadingCommand::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageLoadingCommand::staticMetaObject = {
    { &Command::staticMetaObject, qt_meta_stringdata_PageLoadingCommand,
      qt_meta_data_PageLoadingCommand, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageLoadingCommand::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageLoadingCommand::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageLoadingCommand::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageLoadingCommand))
        return static_cast<void*>(const_cast< PageLoadingCommand*>(this));
    return Command::qt_metacast(_clname);
}

int PageLoadingCommand::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = Command::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
