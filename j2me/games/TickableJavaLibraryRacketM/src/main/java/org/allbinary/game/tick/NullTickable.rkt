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
;; package org.allbinary.game.tick

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./TickableInterface.rkt")
(provide (all-defined-out))

(define NullTickable%
  (class JObject%
    (super-new)
    (field [f_NAME JR.null])
    (define/public (jm_processTick_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NAME this)))))))
(define (NullTickable.jclassValue) NullTickable%)

(define NullTickable.jcell_SINGLETON 'jnone)
(define (NullTickable.jstatic_SINGLETON)
  (when (eq? NullTickable.jcell_SINGLETON 'jnone) (set! NullTickable.jcell_SINGLETON (NullTickable.jnew_0)))
  NullTickable.jcell_SINGLETON)
(define (NullTickable.jsetstatic_SINGLETON value) (set! NullTickable.jcell_SINGLETON value))

(define (NullTickable.jnew_0)
  (define this (new NullTickable% [jclass "NullTickable"]))
    (set-field! f_NAME this "NulLTickable")
  this)

(define (NullTickable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullTickable.jstatic_SINGLETON)))))



