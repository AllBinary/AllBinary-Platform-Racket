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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["./PCGameKey.rkt" (PCGameKey.jm_getString_1)])
(lazy-require ["./PCKeyFactory.rkt" (PCKeyFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define PlatformKeyFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getString_1 _keyCode)
    (let ()
      (let/ec jreturn
        (jreturn (PCGameKey.jm_getString_1 _keyCode)))))
    (define/public (jm_isSubmission_1 _input)
    (let ()
      (let/ec jreturn
        (jreturn (send (PCKeyFactory.jm_getInstance_0) jm_isSubmission_1 _input)))))
    (define/public (jm_isDelete_1 _input)
    (let ()
      (let/ec jreturn
        (jreturn (send (PCKeyFactory.jm_getInstance_0) jm_isDelete_1 _input)))))
    (define/public (jm_isBackSpace_1 _input)
    (let ()
      (let/ec jreturn
        (jreturn (send (PCKeyFactory.jm_getInstance_0) jm_isBackSpace_1 _input)))))
    (define/public (jm_isUp_1 _input)
    (let ()
      (let/ec jreturn
        (jreturn (send (PCKeyFactory.jm_getInstance_0) jm_isUp_1 _input)))))
    (define/public (jm_isDown_1 _input)
    (let ()
      (let/ec jreturn
        (jreturn (send (PCKeyFactory.jm_getInstance_0) jm_isDown_1 _input)))))
    (define/public (jm_isEnter_1 _input)
    (let ()
      (let/ec jreturn
        (jreturn (send (PCKeyFactory.jm_getInstance_0) jm_isEnter_1 _input)))))
    (define/public (jm_isLeft_1 _input)
    (let ()
      (let/ec jreturn
        (jreturn (send (PCKeyFactory.jm_getInstance_0) jm_isLeft_1 _input)))))
    (define/public (jm_isRight_1 _input)
    (let ()
      (let/ec jreturn
        (jreturn (send (PCKeyFactory.jm_getInstance_0) jm_isRight_1 _input)))))))
(define (PlatformKeyFactory.jclassValue) PlatformKeyFactory%)

(define PlatformKeyFactory.jcell_instance 'jnone)
(define (PlatformKeyFactory.jstatic_instance)
  (when (eq? PlatformKeyFactory.jcell_instance 'jnone) (set! PlatformKeyFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  PlatformKeyFactory.jcell_instance)
(define (PlatformKeyFactory.jsetstatic_instance value) (set! PlatformKeyFactory.jcell_instance value))

(define (PlatformKeyFactory.jnew_0)
  (define this (new PlatformKeyFactory% [jclass "PlatformKeyFactory"]))
  this)

(define (PlatformKeyFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (PlatformKeyFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! PlatformKeyFactory.jcell_instance (PlatformKeyFactory.jnew_0))))
        (jreturn (PlatformKeyFactory.jstatic_instance)))))



