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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./ScreenEmptyListener.rkt" (ScreenEmptyListener.jnew_0)])
(provide (all-defined-out))

(define ScreenListenerHandler%
  (class JObject%
    (super-new)
    (field [f_screenListenerInterface JR.null])
    (define/public (jm_setListener_1 _screenListenerInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_screenListenerInterface this _screenListenerInterface))))
    (define/public (jm_fireWithState_1 _isFullScreen)
    (let ()
      (let/ec jreturn
        (send (get-field f_screenListenerInterface this) jm_onFullScreen_1 _isFullScreen))))
    (define/public (jm_fire_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_screenListenerInterface this) jm_onFullScreenDisplay_0))))))

(define ScreenListenerHandler.jcell_instance 'jnone)
(define (ScreenListenerHandler.jstatic_instance)
  (when (eq? ScreenListenerHandler.jcell_instance 'jnone) (set! ScreenListenerHandler.jcell_instance (ScreenListenerHandler.jnew_0)))
  ScreenListenerHandler.jcell_instance)

(define (ScreenListenerHandler.jnew_0)
  (define this (new ScreenListenerHandler% [jclass "ScreenListenerHandler"]))
    (set-field! f_screenListenerInterface this (ScreenEmptyListener.jnew_0))
  this)

(define (ScreenListenerHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ScreenListenerHandler.jstatic_instance)))))



