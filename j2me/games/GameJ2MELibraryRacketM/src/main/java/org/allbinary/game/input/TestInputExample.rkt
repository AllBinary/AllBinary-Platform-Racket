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
  "./TestInputInterface.rkt")
(provide (all-defined-out))

(define TestInputExample%
  (class JObject%
    (super-new)
    (field [f_testValue 0])
    (define/public (jm_up_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_down_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_left_0)
    (let ()
      (let/ec jreturn
        (set-field! f_testValue this (JR.i32 (+ (get-field f_testValue this) 1))))))
    (define/public (jm_right_0)
    (let ()
      (let/ec jreturn
        (set-field! f_testValue this (JR.i32 (- (get-field f_testValue this) 1))))))
    (define/public (jm_strafeLeft_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_strafeRight_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (TestInputExample.jclassValue) TestInputExample%)

(define (TestInputExample.jnew_0)
  (define this (new TestInputExample% [jclass "TestInputExample"]))
    
  this)



