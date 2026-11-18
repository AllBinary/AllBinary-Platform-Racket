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
  "../../../../org/allbinary/game/configuration/persistance/BasicPersitance.rkt")
(lazy-require ["../../../../javax/microedition/rms/RecordStore.rkt" (RecordStore.jm_openRecordStore_2)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/NullRecordComparator.rkt" (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/NullRecordFilter.rkt" (NullRecordFilter.jstatic_NULL_RECORD_FILTER)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/HashtableUtil.rkt" (HashtableUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(provide (all-defined-out))

;GameInputNoPersistanceLibrary
(define InputPersistance%
  (class BasicPersitance%
    (super-new)
    (field [f_hashtableUtil JR.null])
    (define/public (jm_loadAll_1 _abeClientInformation)
    (let ([_recordStore JR.null][_recordEnum JR.null][_hashtable JR.null][_stringBuffer JR.null][_smallIntegerSingletonFactory JR.null][_id JR.null])
      (let/ec jreturn
        (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 _abeClientInformation) #t))
        (set! _recordEnum (send _recordStore jm_enumerateRecords_3 (NullRecordFilter.jstatic_NULL_RECORD_FILTER) (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) #t))
        (set! _hashtable JR.null)
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (set! _id 0)
        (let/ec jbreak (let jloop () (when (send _recordEnum jm_hasNextElement_0)
                (let/ec jcontinue
            (set! _id (send _recordEnum jm_nextRecordId_0))
            (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
            (JR.className (get-field f_logUtil this))
            (set! _hashtable (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
            (JR.className (get-field f_valueList this))
            (JR.className (get-field f_idList this))) (jloop))))
        (send _recordStore jm_closeRecordStore_0))))
    (define/public (jm_save_2 _abeClientInformation _hashtable)
    (let ([_recordStore JR.null][_gameActionInput JR.null][_list JR.null][_input JR.null][_inputObjectArray JR.null][_size JR.null][_index2 JR.null][_index JR.null])
      (let/ec jreturn
        (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_NOT_SAVING (get-field f_persistanceStrings this))) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _hashtable)) jm_toString_0) this (get-field f_SAVE (get-field f_commonStrings this)))
        (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 _abeClientInformation) #t))
        (set! _gameActionInput JR.null)
        (set! _list JR.null)
        (set! _input JR.null)
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
                (set! _input (send _list jm_get_1 _index2)))
                    (set! _index2 (JR.i32 (+ _index2 1))) (jloop))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send _recordStore jm_closeRecordStore_0))))))
(define (InputPersistance.jclassValue) InputPersistance%)

(define (InputPersistance.jnew_1 _name)
  (define this (new InputPersistance% [jclass "InputPersistance"]))
    (set-field! f_hashtableUtil this (HashtableUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)



