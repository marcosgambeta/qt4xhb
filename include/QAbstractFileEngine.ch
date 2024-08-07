//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QABSTRACTFILEENGINE_CH
#define QABSTRACTFILEENGINE_CH

// enum QAbstractFileEngine::Extension
#define QAbstractFileEngine_AtEndExtension                           0
#define QAbstractFileEngine_FastReadLineExtension                    1
#define QAbstractFileEngine_MapExtension                             2
#define QAbstractFileEngine_UnMapExtension                           3

// enum QAbstractFileEngine::FileFlag
// flags QAbstractFileEngine::FileFlags
#define QAbstractFileEngine_ReadOwnerPerm                            0x4000
#define QAbstractFileEngine_WriteOwnerPerm                           0x2000
#define QAbstractFileEngine_ExeOwnerPerm                             0x1000
#define QAbstractFileEngine_ReadUserPerm                             0x0400
#define QAbstractFileEngine_WriteUserPerm                            0x0200
#define QAbstractFileEngine_ExeUserPerm                              0x0100
#define QAbstractFileEngine_ReadGroupPerm                            0x0040
#define QAbstractFileEngine_WriteGroupPerm                           0x0020
#define QAbstractFileEngine_ExeGroupPerm                             0x0010
#define QAbstractFileEngine_ReadOtherPerm                            0x0004
#define QAbstractFileEngine_WriteOtherPerm                           0x0002
#define QAbstractFileEngine_ExeOtherPerm                             0x0001
#define QAbstractFileEngine_LinkType                                 0x10000
#define QAbstractFileEngine_FileType                                 0x20000
#define QAbstractFileEngine_BundleType                               0x80000
#define QAbstractFileEngine_DirectoryType                            0x40000
#define QAbstractFileEngine_HiddenFlag                               0x0100000
#define QAbstractFileEngine_ExistsFlag                               0x0400000
#define QAbstractFileEngine_RootFlag                                 0x0800000
#define QAbstractFileEngine_LocalDiskFlag                            0x0200000
#define QAbstractFileEngine_Refresh                                  0x1000000

// enum QAbstractFileEngine::FileName
#define QAbstractFileEngine_DefaultName                              0
#define QAbstractFileEngine_BaseName                                 1
#define QAbstractFileEngine_PathName                                 2
#define QAbstractFileEngine_AbsoluteName                             3
#define QAbstractFileEngine_AbsolutePathName                         4
#define QAbstractFileEngine_LinkName                                 5
#define QAbstractFileEngine_CanonicalName                            6
#define QAbstractFileEngine_CanonicalPathName                        7
#define QAbstractFileEngine_BundleName                               8

// enum QAbstractFileEngine::FileOwner
#define QAbstractFileEngine_OwnerUser                                0
#define QAbstractFileEngine_OwnerGroup                               1

// enum QAbstractFileEngine::FileTime
#define QAbstractFileEngine_CreationTime                             0
#define QAbstractFileEngine_ModificationTime                         1
#define QAbstractFileEngine_AccessTime                               2

#endif // QABSTRACTFILEENGINE_CH
