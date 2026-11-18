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
;; package org.allbinary.game.physics.acceleration

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define BasicAccelerationProperties%
  (class JObject%
    (super-new)
    (field [f_forward 0])
    (field [f_reverse 0])
    (define/public (jm_setReverse_1 _reverse)
    (let ()
      (let/ec jreturn
        (set-field! f_reverse this _reverse))))
    (define/public (jm_getReverse_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_reverse this)))))
    (define/public (jm_setForward_1 _forward)
    (let ()
      (let/ec jreturn
        (set-field! f_forward this _forward))))
    (define/public (jm_getForward_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_forward this)))))))
(define (BasicAccelerationProperties.jclassValue) BasicAccelerationProperties%)

(define (BasicAccelerationProperties.jnew_2 _forward _reverse)
  (define this (new BasicAccelerationProperties% [jclass "BasicAccelerationProperties"]))
    
    
    (let ()
      (let/ec jreturn
        (send this jm_setForward_1 _forward)
        (send this jm_setReverse_1 _reverse)))
  this)



