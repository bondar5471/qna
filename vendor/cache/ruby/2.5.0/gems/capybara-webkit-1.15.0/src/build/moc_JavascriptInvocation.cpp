/****************************************************************************
** Meta object code from reading C++ file 'JavascriptInvocation.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../JavascriptInvocation.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'JavascriptInvocation.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_JavascriptInvocation[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       5,   69, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: signature, parameters, type, tag, flags
      31,   22,   21,   21, 0x02,
      63,   22,   21,   21, 0x02,
      96,   22,   21,   21, 0x02,
     163,  135,  130,   21, 0x02,
     236,  206,  194,   21, 0x02,
     299,  279,   21,   21, 0x02,
     314,   21,   21,   21, 0x02,
     338,  330,   21,   21, 0x02,
     360,  330,   21,   21, 0x02,
     398,  380,   21,   21, 0x02,
     437,   21,  429,   21, 0x02,

 // properties: name, type, flags
     446,  429, 0x0a095001,
     459,  130, 0x01095001,
     487,  475, 0x0b095001,
     506,  497, 0xff095103,
     520,  512, 0x00095008,

       0        // eod
};

static const char qt_meta_stringdata_JavascriptInvocation[] = {
    "JavascriptInvocation\0\0x,y,keys\0"
    "leftClick(int,int,QVariantList)\0"
    "rightClick(int,int,QVariantList)\0"
    "doubleClick(int,int,QVariantList)\0"
    "bool\0element,absoluteX,absoluteY\0"
    "clickTest(QWebElement,int,int)\0"
    "QVariantMap\0element,left,top,width,height\0"
    "clickPosition(QWebElement,int,int,int,int)\0"
    "absoluteX,absoluteY\0hover(int,int)\0"
    "keypress(QChar)\0keyName\0namedKeydown(QString)\0"
    "namedKeyup(QString)\0keyName,modifiers\0"
    "namedKeypress(QString,QString)\0QString\0"
    "render()\0functionName\0allowUnattached\0"
    "QStringList\0arguments\0QVariant\0error\0"
    "Qt::Key\0key_enum\0"
};

void JavascriptInvocation::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        JavascriptInvocation *_t = static_cast<JavascriptInvocation *>(_o);
        switch (_id) {
        case 0: _t->leftClick((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< QVariantList(*)>(_a[3]))); break;
        case 1: _t->rightClick((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< QVariantList(*)>(_a[3]))); break;
        case 2: _t->doubleClick((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< QVariantList(*)>(_a[3]))); break;
        case 3: { bool _r = _t->clickTest((*reinterpret_cast< QWebElement(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 4: { QVariantMap _r = _t->clickPosition((*reinterpret_cast< QWebElement(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3])),(*reinterpret_cast< int(*)>(_a[4])),(*reinterpret_cast< int(*)>(_a[5])));
            if (_a[0]) *reinterpret_cast< QVariantMap*>(_a[0]) = _r; }  break;
        case 5: _t->hover((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 6: _t->keypress((*reinterpret_cast< QChar(*)>(_a[1]))); break;
        case 7: _t->namedKeydown((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 8: _t->namedKeyup((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 9: _t->namedKeypress((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 10: { QString _r = _t->render();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        default: ;
        }
    }
}

const QMetaObjectExtraData JavascriptInvocation::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject JavascriptInvocation::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_JavascriptInvocation,
      qt_meta_data_JavascriptInvocation, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &JavascriptInvocation::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *JavascriptInvocation::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *JavascriptInvocation::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_JavascriptInvocation))
        return static_cast<void*>(const_cast< JavascriptInvocation*>(this));
    return QObject::qt_metacast(_clname);
}

int JavascriptInvocation::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = functionName(); break;
        case 1: *reinterpret_cast< bool*>(_v) = allowUnattached(); break;
        case 2: *reinterpret_cast< QStringList*>(_v) = arguments(); break;
        case 3: *reinterpret_cast< QVariant*>(_v) = getError(); break;
        }
        _id -= 5;
    } else if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 3: setError(*reinterpret_cast< QVariant*>(_v)); break;
        }
        _id -= 5;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 5;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}
QT_END_MOC_NAMESPACE
