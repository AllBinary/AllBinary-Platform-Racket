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
;; package org.allbinary.game.configuration

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Integer.rkt"
  "../../../../java/lang/Boolean.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/event/GameFeatureEvent.rkt" (GameFeatureEvent.jnew_2)])
(lazy-require ["../../../../org/allbinary/game/configuration/event/GameFeatureEventHandler.rkt" (GameFeatureEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/java/bool/BooleanFactory.rkt" (BooleanFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./GameConfigurationSingleton.rkt" (GameConfigurationSingleton.jm_getInstance_0)])
(provide (all-defined-out))

(define GameConfiguration%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (field [f_defaultValue JR.null])
    (field [f_value JR.null])
    (field [f_minValue JR.null])
    (field [f_maxValue JR.null])
    (field [f_modifiable JR.null])
    (define/public (jm_setValue_1 _value)
    (let ([_oldValue JR.null])
      (let/ec jreturn
        (when (not (eq? (get-field f_value this) _value))
            (begin
            (set! _oldValue (get-field f_value this))
            (set-field! f_value this _value)
            (send (GameFeatureEventHandler.jm_getInstance_0) jm_fireEvent_1 (GameFeatureEvent.jnew_2 this (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_name this)) jm_append_1 " value: from: ") jm_appendint_1 (send _oldValue jm_intValue_0)) jm_append_1 " to ") jm_appendint_1 (send (get-field f_value this) jm_intValue_0)) jm_toString_0))))))))
    (define/public (jm_getValue_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_value this)))))
    (define/public (jm_setMaxValue_1 _maxValue)
    (let ()
      (let/ec jreturn
        (set-field! f_maxValue this _maxValue))))
    (define/public (jm_getMaxValue_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_maxValue this)))))
    (define/public (jm_setMinValue_1 _minValue)
    (let ()
      (let/ec jreturn
        (set-field! f_minValue this _minValue))))
    (define/public (jm_getMinValue_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_minValue this)))))
    (define/public (jm_setName_1 _name)
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/public (jm_setDefaultValue_1 _defaultValue)
    (let ()
      (let/ec jreturn
        (set-field! f_defaultValue this _defaultValue))))
    (define/public (jm_getDefaultValue_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_defaultValue this)))))
    (define/public (jm_setDefault_0)
    (let ()
      (let/ec jreturn
        (send this jm_setValue_1 (send this jm_getDefaultValue_0)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "Name: ")
        (send _stringBuffer jm_append_1 (get-field f_name this))
        (send _stringBuffer jm_append_1 " Min: ")
        (send _stringBuffer jm_appendint_1 (send (send this jm_getMinValue_0) jm_intValue_0))
        (send _stringBuffer jm_append_1 " Max: ")
        (send _stringBuffer jm_appendint_1 (send (send this jm_getMaxValue_0) jm_intValue_0))
        (send _stringBuffer jm_append_1 " Value: ")
        (send _stringBuffer jm_appendint_1 (send (send this jm_getValue_0) jm_intValue_0))
        (send _stringBuffer jm_append_1 " Default: ")
        (send _stringBuffer jm_appendint_1 (send (send this jm_getDefaultValue_0) jm_intValue_0))
        (send _stringBuffer jm_append_1 " Modifiable: ")
        (send _stringBuffer jm_appendboolean_1 (send (send this jm_isModifiable_0) jm_booleanValue_0))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_setModifiable_1 _modifiable)
    (let ()
      (let/ec jreturn
        (set-field! f_modifiable this _modifiable))))
    (define/public (jm_isModifiable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_modifiable this)))))))
(define (GameConfiguration.jclassValue) GameConfiguration%)

(define GameConfiguration.jcell_MIN_VALUE 'jnone)
(define (GameConfiguration.jstatic_MIN_VALUE)
  (when (eq? GameConfiguration.jcell_MIN_VALUE 'jnone) (set! GameConfiguration.jcell_MIN_VALUE (Integer.jstatic_MIN_VALUE)))
  GameConfiguration.jcell_MIN_VALUE)
(define (GameConfiguration.jsetstatic_MIN_VALUE value) (set! GameConfiguration.jcell_MIN_VALUE value))

(define (GameConfiguration.jnew_4 _name _defaultValue _minValue _maxValue)
  (define this (new GameConfiguration% [jclass "GameConfiguration"]))
    (set-field! f_name this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_defaultValue this (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 0))
    (set-field! f_value this (GameConfiguration.jstatic_MIN_VALUE))
    (set-field! f_minValue this (get-field f_defaultValue this))
    (set-field! f_maxValue this (get-field f_defaultValue this))
    (set-field! f_modifiable this (get-field f_TRUE (BooleanFactory.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (send this jm_setName_1 _name)
        (send this jm_setDefaultValue_1 _defaultValue)
        (set-field! f_value this (send this jm_getDefaultValue_0))
        (send this jm_setMinValue_1 _minValue)
        (send this jm_setMaxValue_1 _maxValue)
        (JR.className (send (GameConfigurationSingleton.jm_getInstance_0) jm_getHashtable_0))))
  this)



