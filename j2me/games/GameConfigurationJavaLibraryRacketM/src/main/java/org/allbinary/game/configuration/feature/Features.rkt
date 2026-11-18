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
;; package org.allbinary.game.configuration.feature

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/configuration/event/GameFeatureEvent.rkt" (GameFeatureEvent.jnew_2)])
(lazy-require ["../../../../../org/allbinary/game/configuration/event/GameFeatureEventHandler.rkt" (GameFeatureEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_putOE_4)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/os/OperatingSystemFactory.rkt" (OperatingSystemFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./GameFeatureFactory.rkt" (GameFeatureFactory.jm_getInstance_0)])
(lazy-require ["./InputFeatureFactory.rkt" (InputFeatureFactory.jm_getInstance_0)])
(lazy-require ["./SensorFeatureFactory.rkt" (SensorFeatureFactory.jm_getInstance_0)])
(lazy-require ["./TouchFeatureFactory.rkt" (TouchFeatureFactory.jm_getInstance_0)])
(lazy-require ["./MainFeatureFactory.rkt" (MainFeatureFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define Features%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_list JR.null])
    (field [f_defaultList JR.null])
    (define/public (jm_addDefault_1 _gameFeature)
    (let ()
      (let/ec jreturn
        (send this jm_add_1 _gameFeature)
        (when (not (send (get-field f_defaultList this) jm_contains_1 _gameFeature))
            (begin
            (send (get-field f_defaultList this) jm_add_1 _gameFeature))))))
    (define/public (jm_add_1 _gameFeature)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_list this) jm_contains_1 _gameFeature))
            (begin
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 (send _gameFeature jm_toString_0)) jm_toString_0) this (get-field f_ADD (get-field f_commonStrings this)))
            (send (get-field f_list this) jm_add_1 _gameFeature)
            (send (GameFeatureEventHandler.jm_getInstance_0) jm_fireEvent_1 (GameFeatureEvent.jnew_2 _gameFeature (send _gameFeature jm_toString_0))))))))
    (define/public (jm_removeDefault_1 _gameFeature)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 (send _gameFeature jm_toString_0)) jm_toString_0) this "removeDefault")
        (send this jm_remove_1 _gameFeature)
        (send (get-field f_defaultList this) jm_remove_1 _gameFeature))))
    (define/public (jm_remove_1 _gameFeature)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_list this) jm_contains_1 _gameFeature)
            (begin
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_REMOVE (get-field f_commonStrings this)))
            (send (get-field f_list this) jm_remove_1 _gameFeature)
            (send (GameFeatureEventHandler.jm_getInstance_0) jm_fireEvent_1 (GameFeatureEvent.jnew_2 _gameFeature (send _gameFeature jm_toString_0))))))))
    (define/public (jm_init_0)
    (let ([_gameFeatureFactory JR.null][_inputFeatureFactory JR.null][_sensorFeatureFactory JR.null][_touchFeatureFactory JR.null][_operatingSystemInterface JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putOE_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_INIT (get-field f_commonStrings this)) _e))])
            (set! _gameFeatureFactory (GameFeatureFactory.jm_getInstance_0))
            (set! _inputFeatureFactory (InputFeatureFactory.jm_getInstance_0))
            (set! _sensorFeatureFactory (SensorFeatureFactory.jm_getInstance_0))
            (set! _touchFeatureFactory (TouchFeatureFactory.jm_getInstance_0))
            (send this jm_addDefault_1 (get-field f_ARTIFICIAL_INTELLEGENCE_PROCESSOR _gameFeatureFactory))
            (send this jm_addDefault_1 (get-field f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR _gameFeatureFactory))
            (send this jm_addDefault_1 (get-field f_GAME_INPUT_LAYER_PROCESSOR _gameFeatureFactory))
            (send this jm_addDefault_1 (get-field f_TICKABLE_LAYER_PROCESSOR _gameFeatureFactory))
            (send this jm_addDefault_1 (get-field f_MULTI_KEY_PRESS _inputFeatureFactory))
            (send this jm_addDefault_1 (get-field f_REMOVE_DUPLICATE_KEY_PRESSES _inputFeatureFactory))
            (send this jm_addDefault_1 (get-field f_SCREEN_SHAKE _gameFeatureFactory))
            (send this jm_addDefault_1 (get-field f_POST_IMAGE_LOADING_MODIFICATION _gameFeatureFactory))
            (set! _operatingSystemInterface (send (OperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0))
            (if (send _operatingSystemInterface jm_isOverScan_0)
                (begin
                (send this jm_addDefault_1 (get-field f_NO_ORIENTATION _sensorFeatureFactory))
                (send this jm_addDefault_1 (get-field f_HIDE_SCREEN_BUTTONS _touchFeatureFactory)))
                (begin
                (send this jm_addDefault_1 (get-field f_ORIENTATION_SENSORS _sensorFeatureFactory))
                (send this jm_addDefault_1 (get-field f_AUTO_HIDE_SHOW_SCREEN_BUTTONS _touchFeatureFactory))))
            (send this jm_addDefault_1 (get-field f_TOUCH_ENABLED _touchFeatureFactory))
            (send this jm_addDefault_1 (get-field f_FULL_SCREEN (MainFeatureFactory.jm_getInstance_0)))
            (send this jm_addDefault_1 (get-field f_LOAD_ONDEMAND (MainFeatureFactory.jm_getInstance_0)))))))
    (define/public (jm_isDefault_1 _gameFeature)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_defaultList this) jm_contains_1 _gameFeature)))))
    (define/public (jm_isFeature_1 _gameFeature)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_list this) jm_contains_1 _gameFeature)))))
    (define/public (jm_toggle_1 _gameFeature)
    (let ()
      (let/ec jreturn
        (if (send this jm_isFeature_1 _gameFeature)
            (begin
            (send this jm_remove_1 _gameFeature))
            (begin
            (send this jm_add_1 _gameFeature))))))))
(define (Features.jclassValue) Features%)

(define Features.jcell_SINGLETON 'jnone)
(define (Features.jstatic_SINGLETON)
  (when (eq? Features.jcell_SINGLETON 'jnone) (set! Features.jcell_SINGLETON (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  Features.jcell_SINGLETON)
(define (Features.jsetstatic_SINGLETON value) (set! Features.jcell_SINGLETON value))

(define (Features.jnew_0)
  (define this (new Features% [jclass "Features"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_list this (BasicArrayListD.jnew_0))
        (set-field! f_defaultList this (BasicArrayListD.jnew_0))
        (send this jm_init_0)))
  this)

(define (Features.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (Features.jstatic_SINGLETON) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! Features.jcell_SINGLETON (Features.jnew_0))))
        (jreturn (Features.jstatic_SINGLETON)))))



