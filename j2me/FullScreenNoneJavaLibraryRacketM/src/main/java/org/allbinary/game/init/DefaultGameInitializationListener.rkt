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
;; package org.allbinary.game.init

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/game/configuration/event/GameInitializedListenerInterface.rkt"
  "../../../../java/lang/Thread.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/event/GameInitializedEventHandler.rkt" (GameInitializedEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/resource/FeatureResourceInitializationUtil.rkt" (FeatureResourceInitializationUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/threed/SWTJOGLProcessor.rkt" (SWTJOGLProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define DefaultGameInitializationListener%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_swtJOGLProcessor JR.null])
    (field [f_firstTime #f])
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onGameInitialized_1 _gameInitializedEvent)
    (let ([_ON_GAME_INITIALIZED JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (set! _ON_GAME_INITIALIZED "onGameInitialized")
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this _ON_GAME_INITIALIZED _e))])
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_START _commonStrings) this _ON_GAME_INITIALIZED)
            (let/ec jbreak (let jloop () (when (not (send (get-field f_swtJOGLProcessor this) jm_isHolderCreated_0))
                    (let/ec jcontinue
                (send (get-field f_logUtil this) jm_putF_3 (get-field f_UPDATE _commonStrings) this _ON_GAME_INITIALIZED)
                (Thread.jm_sleep_1 20)) (jloop))))
            (send (FeatureResourceInitializationUtil.jm_getInstance_0) jm_init_1 (send _gameInitializedEvent jm_getLevel_0))
            (if (get-field f_firstTime this)
                (begin
                (set-field! f_firstTime this #f))
                (begin
                (send (get-field f_swtJOGLProcessor this) jm_onSurfaceChanged_0)))))))))
(define (DefaultGameInitializationListener.jclassValue) DefaultGameInitializationListener%)

(define (DefaultGameInitializationListener.jnew_0)
  (define this (new DefaultGameInitializationListener% [jclass "DefaultGameInitializationListener"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_swtJOGLProcessor this (SWTJOGLProcessor.jm_getInstance_0))
    (set-field! f_firstTime this #t)
    (let ([_gameInitializedEventHandler JR.null])
      (let/ec jreturn
        (set! _gameInitializedEventHandler (GameInitializedEventHandler.jm_getInstance_0))
        (send _gameInitializedEventHandler jm_removeAllListeners_0)
        (send _gameInitializedEventHandler jm_addListenerInterface_1 this)))
  this)



