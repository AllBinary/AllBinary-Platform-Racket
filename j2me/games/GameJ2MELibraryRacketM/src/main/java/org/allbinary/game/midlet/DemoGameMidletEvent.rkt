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
;; package org.allbinary.game.midlet

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(provide (all-defined-out))

(define DemoGameMidletEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_demoGameMidletState JR.null])
    (define/public (jm_init_1 _anyType)
    (let ()
      (let/ec jreturn
        (send this jm_setSource_1 _anyType))))
    (define/public (jm_setDemoGameMidletState_1 _demoGameMidletState)
    (let ()
      (let/ec jreturn
        (set-field! f_demoGameMidletState this _demoGameMidletState))))
    (define/public (jm_getDemoGameMidletState_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_demoGameMidletState this)))))))
(define (DemoGameMidletEvent.jclassValue) DemoGameMidletEvent%)

(define (DemoGameMidletEvent.jnew_2 _anyType _demoGameMidletState)
  (define this (new DemoGameMidletEvent% [jclass "DemoGameMidletEvent"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_demoGameMidletState this _demoGameMidletState)))
  this)



