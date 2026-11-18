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
;; package org.allbinary.game.score

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/io/ByteArrayInputStream.rkt"
  "../../../../java/io/ByteArrayOutputStream.rkt"
  "../../../../java/io/DataInputStream.rkt"
  "../../../../java/io/DataOutputStream.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../javax/microedition/rms/RecordStore.rkt" (RecordStore.jm_openRecordStore_2)])
(lazy-require ["../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/NullRecordComparator.rkt" (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/NullRecordFilter.rkt" (NullRecordFilter.jstatic_NULL_RECORD_FILTER)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/NullRecordStore.rkt" (NullRecordStore.jstatic_NULL_RECORD_STORE)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/logic/java/exception/ExceptionUtil.rkt" (ExceptionUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/persistance/PlatformRecordIdUtil.rkt" (PlatformRecordIdUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define HighScoreNamePersistanceSingleton%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_tsUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_platformRecordIdUtil JR.null])
    (field [f_RECORD_ID JR.null])
    (field [f_name JR.null])
    (field [f_nameBasicArrayList JR.null])
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn
        (set-field! f_name this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_deleteAll_2 _abeClientInformation _gameInfo)
    (let ([_size JR.null][_integer JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send (get-field f_nameBasicArrayList this) jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _integer (vector-ref (get-field f_objectArray (get-field f_nameBasicArrayList this)) _index))
            (send this jm_delete_3 _abeClientInformation _gameInfo (send _integer jm_intValue_0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send this jm_clear_0))))
    (define/public (jm_getRecordId_1 _abeClientInformation)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_platformRecordIdUtil this) jm_getRecordId_2 _abeClientInformation (get-field f_RECORD_ID this))))))
    (define/public (jm_delete_3 _abeClientInformation _gameInfo _deleteId)
    (let ([_recordStore JR.null])
      (let/ec jreturn
        (set! _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (raise _e))])
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Deleting: ") jm_appendint_1 _deleteId) jm_toString_0) this (get-field f_delete (get-field f_commonStrings this)))
            (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 _abeClientInformation) #t))
            (send _recordStore jm_deleteRecord_1 _deleteId)))
            (lambda ()
            (when (not (JR.null? _recordStore))
                (begin
                (PreLogUtil.jm_put_3 "Closing RecordStore" this (get-field f_delete (get-field f_commonStrings this)))
                (send _recordStore jm_closeRecordStore_0))))))))
    (define/public (jm_getIds_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_nameBasicArrayList this)))))
    (define/public (jm_load_2 _abeClientInformation _gameInfo)
    (let ([_recordStore JR.null][_LOADING_ID JR.null][_recordEnum JR.null][_smallIntegerSingletonFactory JR.null][_recordAsBytes JR.null][_byteArrayInputStream JR.null][_inputStream JR.null][_id JR.null])
      (let/ec jreturn
        (set! _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send this jm_save_3 _abeClientInformation _gameInfo (get-field f_name this))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_EXCEPTION_LABEL (get-field f_commonStrings this))) jm_append_1 (send (ExceptionUtil.jm_getInstance_0) jm_getStackTrace_1 _e)) jm_toString_0) this (get-field f_LOAD (get-field f_commonStrings this))))])
            (when (eq? (get-field f_name this) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
                (begin
                (set! _LOADING_ID "Loading id: ")
                (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 _abeClientInformation) #t))
                (set! _recordEnum (send _recordStore jm_enumerateRecords_3 (NullRecordFilter.jstatic_NULL_RECORD_FILTER) (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) #t))
                (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
                (set! _recordAsBytes JR.null)
                (set! _byteArrayInputStream JR.null)
                (set! _inputStream JR.null)
                (let/ec jbreak (let jloop () (when (send _recordEnum jm_hasNextElement_0)
                        (let/ec jcontinue
                    (set! _id (send _recordEnum jm_nextRecordId_0))
                    (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 _LOADING_ID) jm_appendint_1 _id) jm_toString_0) this (get-field f_LOAD (get-field f_commonStrings this)))
                    (set! _recordAsBytes (send (get-field f_tsUtil this) jm_getRecord_2 _recordStore _id))
                    (set! _byteArrayInputStream (ByteArrayInputStream.jnew_1 _recordAsBytes))
                    (set! _inputStream (DataInputStream.jnew_1 _byteArrayInputStream))
                    (let/ec jbreak (let jloop () (when (> (send _inputStream jm_available_0) 0)
                            (let/ec jcontinue
                        (set-field! f_name this (send _inputStream jm_readUTF_0))) (jloop))))
                    (send (get-field f_nameBasicArrayList this) jm_add_1 (send _smallIntegerSingletonFactory jm_getAt_1 _id))) (jloop))))))))
            (lambda ()
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_LOAD (get-field f_commonStrings this)) _e))])
                (when (not (JR.null? _recordStore))
                    (begin
                    (PreLogUtil.jm_put_3 "Closing RecordStore" this (get-field f_LOAD (get-field f_commonStrings this)))
                    (send _recordStore jm_closeRecordStore_0))))))
        (jreturn (get-field f_name this)))))
    (define/public (jm_save_3 _abeClientInformation _gameInfo _name)
    (let ([_recordStore JR.null][_byteArrayOutputStream JR.null][_outputStream JR.null][_savedGameBytes JR.null])
      (let/ec jreturn
        (set! _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_SAVE (get-field f_commonStrings this)) _e))])
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Saving: ") jm_append_1 _name) jm_toString_0) this (get-field f_SAVE (get-field f_commonStrings this)))
            (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 _abeClientInformation) #t))
            (set! _byteArrayOutputStream (ByteArrayOutputStream.jnew_0))
            (set! _outputStream (DataOutputStream.jnew_1 _byteArrayOutputStream))
            (send _outputStream jm_writeUTF_1 _name)
            (set! _savedGameBytes (send _byteArrayOutputStream jm_toByteArray_0))
            (send _recordStore jm_addRecord_3 _savedGameBytes 0 (vector-length _savedGameBytes))
            (set-field! f_name this _name)))
            (lambda ()
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_SAVE (get-field f_commonStrings this)) _e))])
                (when (not (JR.null? _recordStore))
                    (begin
                    (PreLogUtil.jm_put_3 "Closing RecordStore" this (get-field f_SAVE (get-field f_commonStrings this)))
                    (send _recordStore jm_closeRecordStore_0)))))))))))
(define (HighScoreNamePersistanceSingleton.jclassValue) HighScoreNamePersistanceSingleton%)

(define HighScoreNamePersistanceSingleton.jcell_SINGLETON 'jnone)
(define (HighScoreNamePersistanceSingleton.jstatic_SINGLETON)
  (when (eq? HighScoreNamePersistanceSingleton.jcell_SINGLETON 'jnone) (set! HighScoreNamePersistanceSingleton.jcell_SINGLETON (HighScoreNamePersistanceSingleton.jnew_0)))
  HighScoreNamePersistanceSingleton.jcell_SINGLETON)
(define (HighScoreNamePersistanceSingleton.jsetstatic_SINGLETON value) (set! HighScoreNamePersistanceSingleton.jcell_SINGLETON value))

(define (HighScoreNamePersistanceSingleton.jnew_0)
  (define this (new HighScoreNamePersistanceSingleton% [jclass "HighScoreNamePersistanceSingleton"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_platformRecordIdUtil this (PlatformRecordIdUtil.jm_getInstance_0))
    (set-field! f_RECORD_ID this "_SN")
    (set-field! f_name this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_nameBasicArrayList this (BasicArrayListD.jnew_0))
  this)

(define (HighScoreNamePersistanceSingleton.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (HighScoreNamePersistanceSingleton.jstatic_SINGLETON)))))



