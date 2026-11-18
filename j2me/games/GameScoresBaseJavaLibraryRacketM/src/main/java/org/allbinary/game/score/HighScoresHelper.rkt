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
  "./HighScoresHelperBase.rkt")
(lazy-require ["../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstanceAt_2)])
(provide (all-defined-out))

(define HighScoresHelper%
  (class HighScoresHelperBase%
    (super-new)
    (field [f_circularIndexUtil JR.null])
    (field [f_lastIndex 0])
    (define/override (jm_setHighScoresArray_1 _highScoresArrayP)
    (let ()
      (let/ec jreturn
        (super jm_setHighScoresArray_1 _highScoresArrayP)
        (send (get-field f_circularIndexUtil this) jm_setSize_1 (vector-length (get-field f_highScoresArrayP this))))))
    (define/override (jm_getNextHighScores_0)
    (let ([_highScores JR.null][_index JR.null])
      (let/ec jreturn
        (set! _highScores (vector-ref (get-field f_highScoresArrayP this) (send (get-field f_circularIndexUtil this) jm_getIndex_0)))
        (set! _index 0)
        (let/ec jbreak (let jloop () (when (and (or (< (send _highScores jm_getTotal_0) 1) (= (get-field f_lastIndex this) (send (get-field f_circularIndexUtil this) jm_getIndex_0))) (< _index (vector-length (get-field f_highScoresArrayP this))))
                (let/ec jcontinue
            (send (get-field f_circularIndexUtil this) jm_next_0)
            (set! _highScores (vector-ref (get-field f_highScoresArrayP this) (send (get-field f_circularIndexUtil this) jm_getIndex_0)))
            (set! _index (JR.i32 (+ _index 1)))) (jloop))))
        (set-field! f_lastIndex this (send (get-field f_circularIndexUtil this) jm_getIndex_0))
        (jreturn _highScores))))
    (define/override (jm_isAnyHighScores_0)
    (let ([_anyScores JR.null][_highScores JR.null][_index JR.null])
      (let/ec jreturn
        (when (< (vector-length (get-field f_highScoresArrayP this)) 1)
            (begin
            (jreturn #f)))
        (set! _anyScores #f)
        (set! _highScores JR.null)
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_highScoresArrayP this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _highScores (vector-ref (get-field f_highScoresArrayP this) _index))
            (when (> (send _highScores jm_getTotal_0) 0)
                (begin
                (set! _anyScores #t))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn _anyScores))))))
(define (HighScoresHelper.jclassValue) HighScoresHelper%)

(define (HighScoresHelper.jnew_0)
  (define this (new HighScoresHelper% [jclass "HighScoresHelper"]))
    (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstanceAt_2 0 0))
    (set-field! f_lastIndex this (JR.i32 (- 1)))
  this)



