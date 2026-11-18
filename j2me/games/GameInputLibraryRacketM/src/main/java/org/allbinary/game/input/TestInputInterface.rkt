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
  "../../../../org/allbinary/graphics/paint/PaintableInterface.rkt")
(provide (all-defined-out))

(define TestInputInterface%
  (class JObject%
    (super-new)
    (define/public (jm_up_0)
      (raise (JR.newException "AbstractMethodError" "up")))
    (define/public (jm_down_0)
      (raise (JR.newException "AbstractMethodError" "down")))
    (define/public (jm_left_0)
      (raise (JR.newException "AbstractMethodError" "left")))
    (define/public (jm_right_0)
      (raise (JR.newException "AbstractMethodError" "right")))
    (define/public (jm_strafeLeft_0)
      (raise (JR.newException "AbstractMethodError" "strafeLeft")))
    (define/public (jm_strafeRight_0)
      (raise (JR.newException "AbstractMethodError" "strafeRight")))))
(define (TestInputInterface.jclassValue) TestInputInterface%)

(define (TestInputInterface.jnew_0)
  (define this (new TestInputInterface% [jclass "TestInputInterface"]))
  this)



