$header

/*
enum QTextStream::RealNumberNotation
*/
#define QTextStream_SmartNotation                                    0
#define QTextStream_FixedNotation                                    1
#define QTextStream_ScientificNotation                               2

/*
enum QTextStream::FieldAlignment
*/
#define QTextStream_AlignLeft                                        0
#define QTextStream_AlignRight                                       1
#define QTextStream_AlignCenter                                      2
#define QTextStream_AlignAccountingStyle                             3

/*
enum QTextStream::Status
*/
#define QTextStream_Ok                                               0
#define QTextStream_ReadPastEnd                                      1
#define QTextStream_ReadCorruptData                                  2
#define QTextStream_WriteFailed                                      3

/*
enum QTextStream::NumberFlag
*/
#define QTextStream_ShowBase                                         0x1
#define QTextStream_ForcePoint                                       0x2
#define QTextStream_ForceSign                                        0x4
#define QTextStream_UppercaseBase                                    0x8
#define QTextStream_UppercaseDigits                                  0x10