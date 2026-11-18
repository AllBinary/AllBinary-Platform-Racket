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
;; package org.allbinary.animation.transition

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Runnable.rkt"
  "./AnimationListenerInterface.rkt")
(provide (all-defined-out))

(define RunAtEndAnimationListener%
  (class JObject%
    (super-new)
    (field [f_runnable JR.null])
    (define/public (jm_onPlatformAnimationStart_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onPlatformAnimationEnd_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onPlatformAnimationRepeat_0)
    (let ()
      (let/ec jreturn (void))))))
(define (RunAtEndAnimationListener.jclassValue) RunAtEndAnimationListener%)

(define (RunAtEndAnimationListener.jnew_1 _runnable)
  (define this (new RunAtEndAnimationListener% [jclass "RunAtEndAnimationListener"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_runnable this _runnable)))
  this)



