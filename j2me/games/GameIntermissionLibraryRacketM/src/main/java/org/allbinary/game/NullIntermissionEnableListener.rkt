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
;; package org.allbinary.game

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./IntermissionEnableListenerInterface.rkt")
(provide (all-defined-out))

(define NullIntermissionEnableListener%
  (class JObject%
    (super-new)
    (define/public (jm_notifyIntermission_1 _enable)
    (let ()
      (let/ec jreturn (void))))))
(define (NullIntermissionEnableListener.jclassValue) NullIntermissionEnableListener%)

(define NullIntermissionEnableListener.jcell_SINGLETON 'jnone)
(define (NullIntermissionEnableListener.jstatic_SINGLETON)
  (when (eq? NullIntermissionEnableListener.jcell_SINGLETON 'jnone) (set! NullIntermissionEnableListener.jcell_SINGLETON (NullIntermissionEnableListener.jnew_0)))
  NullIntermissionEnableListener.jcell_SINGLETON)
(define (NullIntermissionEnableListener.jsetstatic_SINGLETON value) (set! NullIntermissionEnableListener.jcell_SINGLETON value))

(define (NullIntermissionEnableListener.jnew_0)
  (define this (new NullIntermissionEnableListener% [jclass "NullIntermissionEnableListener"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NullIntermissionEnableListener.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullIntermissionEnableListener.jstatic_SINGLETON)))))



