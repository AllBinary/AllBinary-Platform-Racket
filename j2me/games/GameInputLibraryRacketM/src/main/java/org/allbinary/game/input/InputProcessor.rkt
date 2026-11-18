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
(lazy-require ["./GameInputStrings.rkt" (GameInputStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define InputProcessor%
  (class JObject%
    (super-new)
    (field [f_gameInputStrings JR.null])
    (define/public (jm_keyPressedByDevice_2 _keyCode _deviceId)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_keyReleasedByDevice_3 _canvas _keyCode _deviceId)
    (let ()
      (let/ec jreturn (void))))))
(define (InputProcessor.jclassValue) InputProcessor%)

(define (InputProcessor.jnew_0)
  (define this (new InputProcessor% [jclass "InputProcessor"]))
    (set-field! f_gameInputStrings this (GameInputStrings.jm_getInstance_0))
  this)



