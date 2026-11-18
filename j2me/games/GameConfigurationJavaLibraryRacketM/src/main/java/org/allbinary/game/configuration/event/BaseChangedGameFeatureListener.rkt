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
;; package org.allbinary.game.configuration.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./GameFeatureListenerInterface.rkt")
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/GameFeatureUtil.rkt" (GameFeatureUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define BaseChangedGameFeatureListener%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_gameFeatureUtil JR.null])
    (field [f_list JR.null])
    (field [f_changed #f])
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_NOT_IMPLEMENTED (CommonStrings.jm_getInstance_0)) this))))
    (define/public (jm_onGameFeatureChange_1 _gameFeatureEvent)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_GAME_FEATURE_CHANGED (get-field f_gameFeatureUtil this))) jm_append_1 (send _gameFeatureEvent jm_getWhatChanged_0)) jm_toString_0) this (get-field f_ON_GAME_FEATURE_CHANGE (get-field f_gameFeatureUtil this)))
        (send (get-field f_list this) jm_add_1 (send _gameFeatureEvent jm_getGameOption_0))
        (send this jm_setChanged_1 #t))))
    (define/public (jm_add_1 _gameFeature)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_add_1 _gameFeature))))
    (define/public (jm_remove_1 _gameFeature)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_remove_1 _gameFeature))))
    (define/public (jm_setChanged_1 _initialized)
    (let ()
      (let/ec jreturn
        (set-field! f_changed this _initialized)
        (when (not (send this jm_isChanged_0))
            (begin
            (send (get-field f_list this) jm_clear_0))))))
    (define/public (jm_isChangedFeature_1 _gameFeature)
    (let ([_isChanged JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set! _isChanged (send (get-field f_list this) jm_contains_1 _gameFeature))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "GameFeature: ")
        (send _stringBuffer jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _gameFeature))
        (send _stringBuffer jm_append_1 " isFeature: ")
        (send _stringBuffer jm_appendboolean_1 (send (Features.jm_getInstance_0) jm_isFeature_1 _gameFeature))
        (send _stringBuffer jm_append_1 " isChanged: ")
        (send _stringBuffer jm_appendboolean_1 _isChanged)
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this "isChanged")
        (jreturn _isChanged))))
    (define/public (jm_isChanged_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_changed this)))))))
(define (BaseChangedGameFeatureListener.jclassValue) BaseChangedGameFeatureListener%)

(define (BaseChangedGameFeatureListener.jnew_0)
  (define this (new BaseChangedGameFeatureListener% [jclass "BaseChangedGameFeatureListener"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_gameFeatureUtil this (GameFeatureUtil.jm_getInstance_0))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (set-field! f_changed this #t)
  this)



