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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/io/ByteArrayInputStream.rkt"
  "../../../../java/io/ByteArrayOutputStream.rkt"
  "../../../../java/io/DataInputStream.rkt"
  "../../../../java/io/DataOutputStream.rkt"
  "../../../../org/allbinary/game/configuration/persistance/BasicPersitance.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../javax/microedition/rms/RecordStore.rkt" (RecordStore.jm_openRecordStore_2)])
(lazy-require ["../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/NullRecordComparator.rkt" (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/NullRecordFilter.rkt" (NullRecordFilter.jstatic_NULL_RECORD_FILTER)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/NullRecordStore.rkt" (NullRecordStore.jstatic_NULL_RECORD_STORE)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/HashtableUtil.rkt" (HashtableUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["./GameKeyMappingFactory.rkt" (GameKeyMappingFactory.jm_getInstance_0)])
(lazy-require ["./InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(provide (all-defined-out))

;GameInputPersistanceLibrary
(define InputPersistance%
  (class BasicPersitance%
    (super-new)
    (field [f_tsUtil JR.null])
    (field [f_hashtableUtil JR.null])
    (define/public (jm_loadAll_1 _abeClientInformation)
    (let ([_recordStore JR.null][_recordEnum JR.null][_gameActionInputId JR.null][_inputId JR.null][_gameActionInput JR.null][_input JR.null][_hashtable JR.null][_gameKeyFactory JR.null][_stringBuffer JR.null][_inputFactory JR.null][_smallIntegerSingletonFactory JR.null][_stdUtil JR.null][_recordAsBytes JR.null][_byteArrayInputStream JR.null][_inputStream JR.null][_id JR.null][_value JR.null][_gameActionInputIdAsString JR.null])
      (let/ec jreturn
        (set! _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (raise _e))])
            (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 _abeClientInformation) #t))
            (set! _recordEnum (send _recordStore jm_enumerateRecords_3 (NullRecordFilter.jstatic_NULL_RECORD_FILTER) (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) #t))
            (set! _gameActionInputId 0)
            (set! _inputId 0)
            (set! _gameActionInput JR.null)
            (set! _input JR.null)
            (set! _hashtable JR.null)
            (set! _gameKeyFactory (GameKeyMappingFactory.jm_getInstance_0))
            (set! _stringBuffer (StringMaker.jnew_0))
            (set! _inputFactory (InputFactory.jm_getInstance_0))
            (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
            (set! _stdUtil (StdUtil.jm_getInstance_0))
            (set! _recordAsBytes JR.null)
            (set! _byteArrayInputStream JR.null)
            (set! _inputStream JR.null)
            (let/ec jbreak (let jloop () (when (send _recordEnum jm_hasNextElement_0)
                    (let/ec jcontinue
                (set! _id (send _recordEnum jm_nextRecordId_0))
                (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
                (JR.className (get-field f_logUtil this))
                (set! _recordAsBytes (send (get-field f_tsUtil this) jm_getRecord_2 _recordStore _id))
                (if (not (JR.null? _recordAsBytes))
                    (begin
                    (set! _byteArrayInputStream (ByteArrayInputStream.jnew_1 _recordAsBytes))
                    (set! _inputStream (DataInputStream.jnew_1 _byteArrayInputStream))
                    (set! _hashtable (send _stdUtil jm_createHashtable_0))
                    (set! _value 0)
                    (let/ec jbreak (let jloop () (when (> (send _inputStream jm_available_0) 0)
                            (let/ec jcontinue
                        (set! _gameActionInputIdAsString (send _inputStream jm_readUTF_0))
                        (set! _value (Integer.jm_parseInt_1 _gameActionInputIdAsString))
                        (set! _gameActionInputId _value)
                        (send _inputStream jm_readUTF_0)
                        (set! _value (Integer.jm_parseInt_1 (send _inputStream jm_readUTF_0)))
                        (set! _inputId _value)
                        (set! _gameActionInput (send _gameKeyFactory jm_getGameKey_1 (JR.i32 _gameActionInputId)))
                        (set! _input (send _inputFactory jm_getInstanceById_1 (JR.i32 _inputId)))
                        (if (or (eq? _input (get-field f_NO_INPUT _inputFactory)) (JR.null? _gameActionInput))
                            (begin
                            (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
                            (when (eq? _input (get-field f_NO_INPUT _inputFactory))
                                (begin
                                (send _stringBuffer jm_append_1 (get-field f_ERROR_LOADING_ID (get-field f_persistanceStrings this)))
                                (send _stringBuffer jm_appendlong_1 _inputId)
                                (send _stringBuffer jm_append_1 (get-field f_GAME_ACTION_INPUT (get-field f_persistanceStrings this)))
                                (send _stringBuffer jm_appendlong_1 _gameActionInputId)
                                (PreLogUtil.jm_put_3 (send _stringBuffer jm_toString_0) this (get-field f_LOAD_ALL (get-field f_persistanceStrings this)))))
                            (when (JR.null? _gameActionInput)
                                (begin
                                (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
                                (send _stringBuffer jm_append_1 (get-field f_ERROR_LOADING (get-field f_persistanceStrings this)))
                                (send _stringBuffer jm_appendlong_1 _gameActionInputId)
                                (send _stringBuffer jm_append_1 (get-field f_ID (get-field f_persistanceStrings this)))
                                (send _stringBuffer jm_appendlong_1 _inputId)
                                (PreLogUtil.jm_put_3 (send _stringBuffer jm_toString_0) this (get-field f_LOAD_ALL (get-field f_persistanceStrings this))))))
                            (begin
                            (void)))
                        (send _hashtable jm_put_2 _input _gameActionInput)) (jloop))))
                    (JR.className (get-field f_valueList this))
                    (JR.className (get-field f_idList this)))
                    (begin
                    (void)))) (jloop))))))
            (lambda ()
            (when (not (JR.null? _recordStore))
                (begin
                (PreLogUtil.jm_put_3 (get-field f_CLOSING_RECORDSTORE (get-field f_persistanceStrings this)) this (get-field f_LOAD_ALL (get-field f_persistanceStrings this)))
                (send _recordStore jm_closeRecordStore_0))))))))
    (define/public (jm_save_2 _abeClientInformation _hashtable)
    (let ([_recordStore JR.null][_stringBuffer JR.null][_byteArrayOutputStream JR.null][_outputStream JR.null][_gameActionInput JR.null][_list JR.null][_input JR.null][_savedGameBytes JR.null][_commonSeps JR.null][_smallIntegerSingletonFactory JR.null][_inputObjectArray JR.null][_size JR.null][_gameActionInputIdAsString JR.null][_inputIdAsString JR.null][_index2 JR.null][_index JR.null])
      (let/ec jreturn
        (set! _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (raise _e))])
            (set! _stringBuffer (StringMaker.jnew_0))
            (PreLogUtil.jm_put_3 (send (send (send _stringBuffer jm_append_1 (get-field f_SAVING (get-field f_persistanceStrings this))) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _hashtable)) jm_toString_0) this (get-field f_SAVE (get-field f_commonStrings this)))
            (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 _abeClientInformation) #t))
            (set! _byteArrayOutputStream (ByteArrayOutputStream.jnew_0))
            (set! _outputStream (DataOutputStream.jnew_1 _byteArrayOutputStream))
            (set! _gameActionInput JR.null)
            (set! _list JR.null)
            (set! _input JR.null)
            (set! _savedGameBytes JR.null)
            (set! _commonSeps (CommonSeps.jm_getInstance_0))
            (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
            (set! _inputObjectArray (send (get-field f_hashtableUtil this) jm_getKeysAsArray_1 _hashtable))
            (set! _size (vector-length _inputObjectArray))
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (set! _gameActionInput (vector-ref _inputObjectArray _index))
                (set! _list (send _hashtable jm_get_1 (vector-ref _inputObjectArray _index)))
                (begin
                    (set! _index2 0)
                    (let/ec jbreak (let jloop () (when (< _index2 (send _list jm_size_0))
                        (let/ec jcontinue
                    (set! _gameActionInputIdAsString (JR.toString (send _smallIntegerSingletonFactory jm_getAt_1 (send _gameActionInput jm_getId_0))))
                    (send _outputStream jm_writeUTF_1 _gameActionInputIdAsString)
                    (send _outputStream jm_writeUTF_1 (get-field f_EQUALS _commonSeps))
                    (set! _input (vector-ref (get-field f_objectArray _list) _index2))
                    (set! _inputIdAsString (JR.toString (send _smallIntegerSingletonFactory jm_getAt_1 (send _input jm_getId_0))))
                    (send _outputStream jm_writeUTF_1 _inputIdAsString))
                        (set! _index2 (JR.i32 (+ _index2 1))) (jloop))))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))
            (set! _savedGameBytes (send _byteArrayOutputStream jm_toByteArray_0))
            (send _recordStore jm_addRecord_3 _savedGameBytes 0 (vector-length _savedGameBytes))))
            (lambda ()
            (when (not (JR.null? _recordStore))
                (begin
                (PreLogUtil.jm_put_3 (get-field f_CLOSING_RECORDSTORE (get-field f_persistanceStrings this)) this (get-field f_SAVE (get-field f_commonStrings this)))
                (send _recordStore jm_closeRecordStore_0))))))))))
(define (InputPersistance.jclassValue) InputPersistance%)

(define (InputPersistance.jnew_1 _name)
  (define this (new InputPersistance% [jclass "InputPersistance"]))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (set-field! f_hashtableUtil this (HashtableUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)



