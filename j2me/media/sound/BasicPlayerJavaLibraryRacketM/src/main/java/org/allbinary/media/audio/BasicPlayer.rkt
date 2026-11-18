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
  "../../../../javax/microedition/media/Player.rkt"
  "./Controllable2.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./NullControl.rkt" (NullControl.jnew_0)])
(provide (all-defined-out))

;BasicPlayerJavaLibrary
(define BasicPlayer%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (field [f_listenersList JR.null])
    (field [f_stateP 0])
    (field [f_loopCountP 0])
    (define/public (jm_getContentType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_getControl_1 _controlType)
    (let ()
      (let/ec jreturn
        (jreturn (NullControl.jnew_0)))))
    (define/public (jm_getControls_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.newArray JR.null 0)))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_addPlayerListener_1 _playerListener)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_listenersList this) jm_contains_1 _playerListener))
            (begin
            (send (get-field f_listenersList this) jm_add_1 _playerListener))))))
    (define/public (jm_removePlayerListener_1 _playerListener)
    (let ()
      (let/ec jreturn
        (send (get-field f_listenersList this) jm_remove_1 _playerListener))))
    (define/public (jm_getState_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_stateP this)))))
    (define/public (jm_setState_1 _state)
    (let ()
      (let/ec jreturn
        (set-field! f_stateP this _state))))
    (define/public (jm_getDuration_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_getMediaTime_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_deallocate_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_prefetch_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_realize_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setLoopCount_1 _count)
    (let ()
      (let/ec jreturn
        (set-field! f_loopCountP this _count))))
    (define/public (jm_getLoopCount_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_loopCountP this)))))
    (define/public (jm_setMediaTime_1 _now)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_start_0)
    (let ()
      (let/ec jreturn
        (send this jm_setState_1 (Player.jstatic_STARTED)))))
    (define/public (jm_stop_0)
    (let ()
      (let/ec jreturn
        (send this jm_setState_1 (Player.jstatic_PREFETCHED)))))
    (define/public (jm_setVolume_2 _leftVolume _rightVolume)
    (let ()
      (let/ec jreturn (void))))))
(define (BasicPlayer.jclassValue) BasicPlayer%)

(define BasicPlayer.jcell_CONTROL_TYPE 'jnone)
(define (BasicPlayer.jstatic_CONTROL_TYPE)
  (when (eq? BasicPlayer.jcell_CONTROL_TYPE 'jnone) (set! BasicPlayer.jcell_CONTROL_TYPE "ToneControl"))
  BasicPlayer.jcell_CONTROL_TYPE)
(define (BasicPlayer.jsetstatic_CONTROL_TYPE value) (set! BasicPlayer.jcell_CONTROL_TYPE value))

(define (BasicPlayer.jnew_0)
  (define this (new BasicPlayer% [jclass "BasicPlayer"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_listenersList this (BasicArrayListD.jnew_0))
    
    
    (let ()
      (let/ec jreturn
        (send this jm_setLoopCount_1 0)
        (send this jm_setState_1 (Player.jstatic_UNREALIZED))))
  this)



