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
  "../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../javax/microedition/rms/RecordStore.rkt" (RecordStore.jm_deleteRecordStore_1 RecordStore.jm_openRecordStore_2)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/persistance/PlatformRecordIdUtil.rkt" (PlatformRecordIdUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./PersistanceStrings.rkt" (PersistanceStrings.jm_getInstance_0)])
(lazy-require ["./NullRecordStore.rkt" (NullRecordStore.jstatic_NULL_RECORD_STORE)])
(provide (all-defined-out))

(define BasicPersitance%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_persistanceStrings JR.null])
    (field [f_platformRecordIdUtil JR.null])
    (field [f_recordId JR.null])
    (field [f_valueList JR.null])
    (field [f_idList JR.null])
    (define/public (jm_deleteRecoreStore_1 _abeClientInformation)
    (let ()
      (let/ec jreturn
        (RecordStore.jm_deleteRecordStore_1 (send this jm_getRecordId_1 _abeClientInformation)))))
    (define/public (jm_deleteAll_1 _abeClientInformation)
    (let ([_size JR.null][_integer JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send (get-field f_idList this) jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _integer (vector-ref (get-field f_objectArray (get-field f_idList this)) _index))
            (send this jm_delete_2 _abeClientInformation (send _integer jm_intValue_0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send this jm_clear_0))))
    (define/public (jm_delete_2 _abeClientInformation _deleteId)
    (let ([_recordStore JR.null])
      (let/ec jreturn
        (set! _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (raise _e))])
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_DELETING_WITH_ID (get-field f_persistanceStrings this))) jm_appendint_1 _deleteId) jm_toString_0) this (get-field f_delete (get-field f_commonStrings this)))
            (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 _abeClientInformation) #t))
            (send _recordStore jm_deleteRecord_1 _deleteId)))
            (lambda ()
            (when (not (JR.null? _recordStore))
                (begin
                (PreLogUtil.jm_put_3 (get-field f_CLOSING_RECORDSTORE (get-field f_persistanceStrings this)) this (get-field f_delete (get-field f_commonStrings this)))
                (send _recordStore jm_closeRecordStore_0))))))))
    (define/public (jm_getRecordId_1 _abeClientInformation)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_platformRecordIdUtil this) jm_getRecordId_2 _abeClientInformation (get-field f_recordId this))))))
    (define/public (jm_getList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_valueList this)))))
    (define/public (jm_getIds_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_idList this)))))
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_valueList this) jm_clear_0)
        (send (get-field f_idList this) jm_clear_0))))))
(define (BasicPersitance.jclassValue) BasicPersitance%)

(define (BasicPersitance.jnew_1 _recordId)
  (define this (new BasicPersitance% [jclass "BasicPersitance"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_persistanceStrings this (PersistanceStrings.jm_getInstance_0))
    (set-field! f_platformRecordIdUtil this (PlatformRecordIdUtil.jm_getInstance_0))
    
    (set-field! f_valueList this (BasicArrayListD.jnew_0))
    (set-field! f_idList this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn
        (set-field! f_recordId this _recordId)))
  this)



