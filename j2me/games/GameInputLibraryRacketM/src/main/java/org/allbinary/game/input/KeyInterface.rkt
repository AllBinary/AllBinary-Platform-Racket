#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
(provide (all-defined-out))

(define KeyInterface%
  (class JObject%
    (super-new)
    (define/public (jm_keyPressed_1 _keyCode)
      (raise (JR.newException "AbstractMethodError" "keyPressed")))
    (define/public (jm_keyReleased_1 _keyCode)
      (raise (JR.newException "AbstractMethodError" "keyReleased")))
    (define/public (jm_keyPressedByDevice_2 _keyCode _deviceId)
      (raise (JR.newException "AbstractMethodError" "keyPressedByDevice")))
    (define/public (jm_keyReleasedByDevice_2 _keyCode _deviceId)
      (raise (JR.newException "AbstractMethodError" "keyReleasedByDevice")))))
(define (KeyInterface.jclassValue) KeyInterface%)

(define (KeyInterface.jnew_0)
  (define this (new KeyInterface% [jclass "KeyInterface"]))
  this)



