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
  "../../../../allbinary_java.rkt"
  "./Input.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define PCGameKey%
  (class Input%
    (super-new)
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.concat "PCGameKey: " (super jm_toString_0))))))))
(define (PCGameKey.jclassValue) PCGameKey%)

(define (PCGameKey.jnew_2 _keyCode _name)
  (define this (new PCGameKey% [jclass "PCGameKey"]))
    (let ([_id JR.null])
      (let/ec jreturn
        (void)
        (set! _id (send this jm_getId_0))
        (when (>= _id 0)
            (begin
            (send (InputFactory.jm_getInstance_0) jm_add_2 _id this)))))
  this)

(define (PCGameKey.jm_getString_1 _keyCode)
    (let ([_input JR.null])
      (let/ec jreturn
        (set! _input (send (InputFactory.jm_getInstance_0) jm_getInstanceById_1 _keyCode))
        (if (not (JR.null? _input))
            (begin
            (jreturn (send _input jm_getName_0)))
            (begin
            (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))))



