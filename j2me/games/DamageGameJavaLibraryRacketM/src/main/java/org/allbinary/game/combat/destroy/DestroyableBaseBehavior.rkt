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
;; package org.allbinary.game.combat.destroy

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./DestroyableInterface.rkt")
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define DestroyableBaseBehavior%
  (class JObject%
    (super-new)
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className this)))))
    (define/public (jm_isDestroyed_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (CommonStrings.jm_getInstance_0)))))))
    (define/public (jm_setDestroyed_1 _destroyed)
    (let ()
      (let/ec jreturn (void))))))
(define (DestroyableBaseBehavior.jclassValue) DestroyableBaseBehavior%)

(define DestroyableBaseBehavior.jcell_instance 'jnone)
(define (DestroyableBaseBehavior.jstatic_instance)
  (when (eq? DestroyableBaseBehavior.jcell_instance 'jnone) (set! DestroyableBaseBehavior.jcell_instance (DestroyableBaseBehavior.jnew_0)))
  DestroyableBaseBehavior.jcell_instance)
(define (DestroyableBaseBehavior.jsetstatic_instance value) (set! DestroyableBaseBehavior.jcell_instance value))

(define (DestroyableBaseBehavior.jnew_0)
  (define this (new DestroyableBaseBehavior% [jclass "DestroyableBaseBehavior"]))
  this)

(define (DestroyableBaseBehavior.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DestroyableBaseBehavior.jstatic_instance)))))



