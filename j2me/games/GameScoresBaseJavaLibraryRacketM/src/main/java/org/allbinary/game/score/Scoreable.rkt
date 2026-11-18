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
;; package org.allbinary.game.score

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Integer.rkt"
  "./ScoreableInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define Scoreable%
  (class JObject%
    (super-new)
    (field [f_points 0])
    (define/public (jm_addPoints_1 _points)
    (let ()
      (let/ec jreturn
        (set-field! f_points this (JR.i32 (+ (get-field f_points this) _points))))))
    (define/public (jm_removePoints_1 _points)
    (let ()
      (let/ec jreturn
        (set-field! f_points this (JR.i32 (- (get-field f_points this) _points))))))
    (define/public (jm_setPoints_1 _points)
    (let ()
      (let/ec jreturn
        (set-field! f_points this _points))))
    (define/public (jm_getPoints_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_points this)))))))
(define (Scoreable.jclassValue) Scoreable%)

(define Scoreable.jcell_ID 'jnone)
(define (Scoreable.jstatic_ID)
  (when (eq? Scoreable.jcell_ID 'jnone) (set! Scoreable.jcell_ID (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 3)))
  Scoreable.jcell_ID)
(define (Scoreable.jsetstatic_ID value) (set! Scoreable.jcell_ID value))

(define (Scoreable.jnew_1 _points)
  (define this (new Scoreable% [jclass "Scoreable"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_points this _points)))
  this)



