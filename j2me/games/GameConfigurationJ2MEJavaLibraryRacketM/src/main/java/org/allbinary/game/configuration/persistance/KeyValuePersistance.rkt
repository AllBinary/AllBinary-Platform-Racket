#lang racket/base
;;
;; AllBinary Open License Version 1
;; Copyright (c) 2011 AllBinary
;; 
;; By agreeing to this license you and any business entity you represent are
;; legally bound to the AllBinary Open License Version 1 legal agreement.
;; 
;; You may obtain the AllBinary Open License Version 1 legal agreement from
;; AllBinary or the root directory of AllBinary's AllBinary Platform repository.
;; 
;; Created By: Travis Berthelot
;;  
;; Generated Code Do Not Modify
;; package org.allbinary.game.configuration.persistance

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/io/ByteArrayInputStream.rkt"
  "../../../../../java/io/ByteArrayOutputStream.rkt"
  "../../../../../java/io/DataInputStream.rkt"
  "../../../../../java/io/DataOutputStream.rkt"
  "./BasicPersitance.rkt")
(lazy-require ["../../../../../javax/microedition/rms/RecordStore.rkt" (RecordStore.jm_openRecordStore_2)])
(lazy-require ["../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/ABHashtable.rkt" (ABHashtable.jnew_0)])
(lazy-require ["../../../../../org/allbinary/util/HashtableUtil.rkt" (HashtableUtil.jm_getInstance_0)])
(lazy-require ["./NullRecordStore.rkt" (NullRecordStore.jstatic_NULL_RECORD_STORE)])
(lazy-require ["./NullRecordFilter.rkt" (NullRecordFilter.jstatic_NULL_RECORD_FILTER)])
(lazy-require ["./NullRecordComparator.rkt" (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR)])
(provide (all-defined-out))

(define KeyValuePersistance%
  (class BasicPersitance%
    (super-new)
    (field [f_tsUtil JR.null])
    (define/public (jm_loadAll_1 _abeClientInformation)
    (let ()
      (let/ec jreturn
        (send this jm_loadAllSize_2 _abeClientInformation 1))))
    (define/public (jm_loadAllSize_2 _abeClientInformation _size)
    (let ([_recordStore JR.null][_recordEnum JR.null][_hashtable JR.null][_name JR.null][_value JR.null][_smallIntegerSingletonFactory JR.null][_stringBuffer JR.null][_recordAsBytes JR.null][_byteArrayInputStream JR.null][_inputStream JR.null][_id JR.null][_index JR.null])
      (let/ec jreturn
        (set! _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (raise _e))])
            (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 _abeClientInformation) #t))
            (set! _recordEnum (send _recordStore jm_enumerateRecords_3 (NullRecordFilter.jstatic_NULL_RECORD_FILTER) (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) #t))
            (set! _hashtable JR.null)
            (set! _name JR.null)
            (set! _value JR.null)
            (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
            (set! _stringBuffer (StringMaker.jnew_0))
            (set! _recordAsBytes JR.null)
            (set! _byteArrayInputStream JR.null)
            (set! _inputStream JR.null)
            (let/ec jbreak (let jloop () (when (send _recordEnum jm_hasNextElement_0)
                    (let/ec jcontinue
                (set! _id (send _recordEnum jm_nextRecordId_0))
                (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
                (JR.className (get-field f_logUtil this))
                (set! _recordAsBytes (send (get-field f_tsUtil this) jm_getRecord_2 _recordStore _id))
                (when (not (JR.null? _recordAsBytes))
                    (begin
                    (set! _byteArrayInputStream (ByteArrayInputStream.jnew_1 _recordAsBytes))
                    (set! _inputStream (DataInputStream.jnew_1 _byteArrayInputStream))
                    (set! _hashtable (ABHashtable.jnew_0))
                    (begin
                        (set! _index 0)
                        (let/ec jbreak (let jloop () (when (< _index _size)
                            (let/ec jcontinue
                        (set! _name (send _inputStream jm_readUTF_0))
                        (send _inputStream jm_readUTF_0)
                        (set! _value (send _inputStream jm_readUTF_0))
                        (send _hashtable jm_put_2 _name _value))
                            (set! _index (JR.i32 (+ _index 1))) (jloop)))))
                    (JR.className (get-field f_valueList this))
                    (JR.className (get-field f_idList this))))) (jloop))))))
            (lambda ()
            (when (not (JR.null? _recordStore))
                (begin
                (PreLogUtil.jm_put_3 (get-field f_CLOSING_RECORDSTORE (get-field f_persistanceStrings this)) this (get-field f_LOAD_ALL (get-field f_persistanceStrings this)))
                (send _recordStore jm_closeRecordStore_0))))))))
    (define/public (jm_save_2 _abeClientInformation _hashtable)
    (let ([_recordStore JR.null][_byteArrayOutputStream JR.null][_outputStream JR.null][_value JR.null][_commonSeps JR.null][_objectArray JR.null][_anyType JR.null][_size JR.null][_index JR.null][_tsUtil JR.null][_savedGameBytes JR.null])
      (let/ec jreturn
        (set! _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (raise _e))])
            (JR.className (get-field f_logUtil this))
            (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 _abeClientInformation) #t))
            (set! _byteArrayOutputStream (ByteArrayOutputStream.jnew_0))
            (set! _outputStream (DataOutputStream.jnew_1 _byteArrayOutputStream))
            (set! _value JR.null)
            (set! _commonSeps (CommonSeps.jm_getInstance_0))
            (set! _objectArray (send (HashtableUtil.jm_getInstance_0) jm_getKeysAsArray_1 _hashtable))
            (set! _anyType JR.null)
            (set! _size (vector-length _objectArray))
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (send _outputStream jm_writeUTF_1 (vector-ref _objectArray _index))
                (send _outputStream jm_writeUTF_1 (get-field f_EQUALS _commonSeps))
                (set! _anyType (vector-ref _objectArray _index))
                (set! _value (send _hashtable jm_get_1 _anyType))
                (send _outputStream jm_writeUTF_1 _value))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))
            (set! _tsUtil (TsUtil.jm_getInstance_0))
            (set! _savedGameBytes (send _tsUtil jm_getByteArray_1 (send _byteArrayOutputStream jm_toString_0)))
            (send _recordStore jm_addRecord_3 _savedGameBytes 0 (vector-length _savedGameBytes))))
            (lambda ()
            (when (not (JR.null? _recordStore))
                (begin
                (PreLogUtil.jm_put_3 (get-field f_CLOSING_RECORDSTORE (get-field f_persistanceStrings this)) this (get-field f_SAVE (get-field f_commonStrings this)))
                (send _recordStore jm_closeRecordStore_0))))))))
    (define/public (jm_get_1 _index)
    (let ([_hashtable JR.null])
      (let/ec jreturn
        (set! _hashtable (vector-ref (get-field f_objectArray (get-field f_valueList this)) _index))
        (jreturn _hashtable))))))
(define (KeyValuePersistance.jclassValue) KeyValuePersistance%)

(define (KeyValuePersistance.jnew_1 _recordId)
  (define this (new KeyValuePersistance% [jclass "KeyValuePersistance"]))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)



