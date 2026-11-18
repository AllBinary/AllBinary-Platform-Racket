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
;; package org.allbinary.game.combat.destroy.event

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.rkt")
(lazy-require ["./DestroyedEvent.rkt" (DestroyedEvent.jnew_1)])
(provide (all-defined-out))

(define DestroyEventFactory%
  (class JObject%
    (super-new)
    (field [f_combatGameCanvas JR.null])
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DestroyedEvent.jnew_1 (get-field f_combatGameCanvas this))))))))
(define (DestroyEventFactory.jclassValue) DestroyEventFactory%)

(define (DestroyEventFactory.jnew_1 _combatGameCanvas)
  (define this (new DestroyEventFactory% [jclass "DestroyEventFactory"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_combatGameCanvas this _combatGameCanvas)))
  this)



