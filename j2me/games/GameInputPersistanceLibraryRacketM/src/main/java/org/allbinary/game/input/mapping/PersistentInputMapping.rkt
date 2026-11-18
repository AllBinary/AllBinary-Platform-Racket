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
;; package org.allbinary.game.input.mapping

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/util/Enumeration.rkt")
(lazy-require ["../../../../../org/allbinary/game/configuration/persistance/GamePersistanceStrings.rkt" (GamePersistanceStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/InputPersistance.rkt" (InputPersistance.jnew_1)])
(lazy-require ["../../../../../org/allbinary/game/input/mapping/event/InputMappingEvent.rkt" (InputMappingEvent.jnew_1)])
(lazy-require ["../../../../../org/allbinary/game/input/mapping/event/NullInputMappingEventListener.rkt" (NullInputMappingEventListener.jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_putOE_4)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/EnumerationUtil.rkt" (EnumerationUtil.jm_getInstance_0)])
(lazy-require ["./InputToGameKeyMapping.rkt" (InputToGameKeyMapping.jnew_0 InputToGameKeyMapping.jm_getNullInstance_0)])
(provide (all-defined-out))

;GameInputPersistanceLibrary
(define PersistentInputMapping%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_enumerationUtil JR.null])
    (field [f_inputMapping JR.null])
    (field [f_inputMappingEventListenerInterface JR.null])
    (field [f_inputPersistance JR.null])
    (field [f_inputMappingEvent JR.null])
    (define/public (jm_getTotalMapped_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (send (send this jm_getInputMapping_0) jm_getHashtable_0))))))
    (define/public (jm_isDefaultNew_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_getDefault_0)
    (let ()
      (let/ec jreturn
        (jreturn (InputToGameKeyMapping.jm_getNullInstance_0)))))
    (define/public (jm_setDefault_1 _abeClientInformation)
    (let ()
      (let/ec jreturn
        (send (send this jm_getInputMapping_0) jm_removeAll_0)
        (send (send this jm_getInputMapping_0) jm_addMapping_1 (send this jm_getDefault_0))
        (send this jm_save_1 _abeClientInformation))))
    (define/public (jm_update_1 _abeClientInformation)
    (let ()
      (let/ec jreturn
        (send (get-field f_inputPersistance this) jm_deleteAll_1 _abeClientInformation)
        (send this jm_save_1 _abeClientInformation))))
    (define/public (jm_save_1 _abeClientInformation)
    (let ()
      (let/ec jreturn
        (send (get-field f_inputPersistance this) jm_save_2 _abeClientInformation (send (send this jm_getInputMapping_0) jm_getHashtable_0))
        (send (get-field f_inputMappingEvent this) jm_setInputToGameKeyMapping_1 (send this jm_getInputMapping_0))
        (when (not (JR.null? (send this jm_getInputMappingEventListenerInterface_0)))
            (begin
            (send (send this jm_getInputMappingEventListenerInterface_0) jm_onInputMappingEvent_1 (get-field f_inputMappingEvent this)))))))
    (define/public (jm_init_1 _abeClientInformation)
    (let ([_list JR.null][_totalMappedTo JR.null][_size JR.null][_hashtable JR.null][_enumeration JR.null][_mappedToInput JR.null][_gameActionInput JR.null][_index JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_INIT (get-field f_commonStrings this)))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putOE_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_INIT (get-field f_commonStrings this)) _e)
            (send (get-field f_inputPersistance this) jm_deleteRecoreStore_1 _abeClientInformation)
            (send this jm_setDefault_1 _abeClientInformation)
            (send (get-field f_inputPersistance this) jm_loadAll_1 _abeClientInformation))])
            (send (get-field f_inputPersistance this) jm_loadAll_1 _abeClientInformation))
        (set! _list (send (get-field f_inputPersistance this) jm_getList_0))
        (set! _totalMappedTo 0)
        (set! _size (send _list jm_size_0))
        (set! _hashtable JR.null)
        (set! _enumeration JR.null)
        (set! _mappedToInput JR.null)
        (set! _gameActionInput JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _hashtable (vector-ref (get-field f_objectArray _list) _index))
            (set! _enumeration (send _hashtable jm_keys_0))
            (let/ec jbreak (let jloop () (when (send (get-field f_enumerationUtil this) jm_hasMoreElements_1 _enumeration)
                    (let/ec jcontinue
                (set! _mappedToInput (send (get-field f_enumerationUtil this) jm_nextElement_1 _enumeration))
                (set! _gameActionInput (send _hashtable jm_get_1 _mappedToInput))
                (set! _totalMappedTo (JR.i32 (+ _totalMappedTo 1)))
                (send (send this jm_getInputMapping_0) jm_add_2 _gameActionInput _mappedToInput)) (jloop)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "End - Total Loaded Keys Mapped: ")
        (send _stringBuffer jm_appendint_1 (send this jm_getTotalMapped_0))
        (send _stringBuffer jm_append_1 " to: ")
        (send _stringBuffer jm_appendint_1 _totalMappedTo)
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (get-field f_INIT (get-field f_commonStrings this))))))
    (define/public (jm_setInputMappingEventListenerInterface_1 _inputMappingEventListenerInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_inputMappingEventListenerInterface this _inputMappingEventListenerInterface))))
    (define/public (jm_getInputMappingEventListenerInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_inputMappingEventListenerInterface this)))))
    (define/public (jm_getInputMapping_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_inputMapping this)))))
    (define/public (jm_isDelete_1 _input)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_isSystemInput_1 _input)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))))
(define (PersistentInputMapping.jclassValue) PersistentInputMapping%)

(define PersistentInputMapping.jcell_instance 'jnone)
(define (PersistentInputMapping.jstatic_instance)
  (when (eq? PersistentInputMapping.jcell_instance 'jnone) (set! PersistentInputMapping.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  PersistentInputMapping.jcell_instance)
(define (PersistentInputMapping.jsetstatic_instance value) (set! PersistentInputMapping.jcell_instance value))

(define (PersistentInputMapping.jnew_1 _name)
  (define this (new PersistentInputMapping% [jclass "PersistentInputMapping"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_enumerationUtil this (EnumerationUtil.jm_getInstance_0))
    (set-field! f_inputMapping this (InputToGameKeyMapping.jnew_0))
    (set-field! f_inputMappingEventListenerInterface this (NullInputMappingEventListener.jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER))
    
    (set-field! f_inputMappingEvent this (InputMappingEvent.jnew_1 this))
    (let ()
      (let/ec jreturn
        (set-field! f_inputPersistance this (InputPersistance.jnew_1 _name))))
  this)

(define (PersistentInputMapping.jm_getNullInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (PersistentInputMapping.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! PersistentInputMapping.jcell_instance (PersistentInputMapping.jnew_1 (get-field f_SAVED_INPUT_CONFIGURATION_RECORD_ID (GamePersistanceStrings.jm_getInstance_0))))))
        (jreturn (PersistentInputMapping.jstatic_instance)))))



