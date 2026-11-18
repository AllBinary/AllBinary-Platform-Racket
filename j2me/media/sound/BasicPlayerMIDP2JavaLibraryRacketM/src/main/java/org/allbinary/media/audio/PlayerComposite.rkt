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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../javax/microedition/media/Controllable.rkt"
  "../../../../javax/microedition/media/Player.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

;BasicPlayerMIDP2
(define PlayerComposite%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_player JR.null])
    (field [f_timeElapsedHelper JR.null])
    (field [f_gameTickTimeDelayHelper JR.null])
    (define/public (jm_addPlayerListener_1 _playerListener)
    (let ()
      (let/ec jreturn
        (send (get-field f_player this) jm_addPlayerListener_1 _playerListener))))
    (define/public (jm_removePlayerListener_1 _playerListener)
    (let ()
      (let/ec jreturn
        (send (get-field f_player this) jm_removePlayerListener_1 _playerListener))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_player this) jm_close_0))))
    (define/public (jm_deallocate_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_player this) jm_deallocate_0))))
    (define/public (jm_getContentType_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_player this) jm_getContentType_0)))))
    (define/public (jm_getDuration_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_player this) jm_getDuration_0)))))
    (define/public (jm_getMediaTime_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_player this) jm_getMediaTime_0)))))
    (define/public (jm_getTimeBase_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_player this) jm_getTimeBase_0)))))
    (define/public (jm_setTimeBase_1 _timeBase)
    (let ()
      (let/ec jreturn
        (send (get-field f_player this) jm_setTimeBase_1 _timeBase))))
    (define/public (jm_prefetch_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this "prefetch" _e))])
            (send (get-field f_player this) jm_prefetch_0)))))
    (define/public (jm_realize_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this "realize" _e))])
            (send (get-field f_player this) jm_realize_0)))))
    (define/public (jm_getState_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_player this) jm_getState_0)))))
    (define/public (jm_setLoopCount_1 _count)
    (let ()
      (let/ec jreturn
        (send (get-field f_player this) jm_setLoopCount_1 _count))))
    (define/public (jm_setMediaTime_1 _now)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this "setMediaTime" _e)
            (jreturn (JR.i32 (- 1))))])
            (jreturn (send (get-field f_player this) jm_setMediaTime_1 _now))))))
    (define/public (jm_start_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_START_METHOD_NAME (get-field f_commonStrings this)) _e))])
            (when (send (get-field f_timeElapsedHelper this) jm_isTime_1 (get-field f_startTime (get-field f_gameTickTimeDelayHelper this)))
                (begin
                (send (get-field f_player this) jm_start_0)))))))
    (define/public (jm_stop_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this "stop" _e))])
            (send (get-field f_player this) jm_stop_0)))))
    (define/public (jm_getControl_1 _controlType)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_player this) jm_getControl_1 _controlType)))))
    (define/public (jm_getControls_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_setVolume_2 _leftVolume _rightVolume)
    (let ([_controllable2 JR.null])
      (let/ec jreturn
        (set! _controllable2 (get-field f_player this))
        (send _controllable2 jm_setVolume_2 _leftVolume _rightVolume))))
    (define/public (jm_getPlayerP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_player this)))))))
(define (PlayerComposite.jclassValue) PlayerComposite%)

(define (PlayerComposite.jnew_2 _player _repeatTime)
  (define this (new PlayerComposite% [jclass "PlayerComposite"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    (set-field! f_timeElapsedHelper this (TimeDelayHelper.jnew_1 0))
    (set-field! f_gameTickTimeDelayHelper this (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_player this _player)
        (set-field! f_delay (get-field f_timeElapsedHelper this) _repeatTime)))
  this)



