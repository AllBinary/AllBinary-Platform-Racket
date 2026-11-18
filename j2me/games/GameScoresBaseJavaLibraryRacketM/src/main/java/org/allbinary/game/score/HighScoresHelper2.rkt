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
(lazy-require ["./NullHighScoresSingletonFactory.rkt" (NullHighScoresSingletonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define HighScoresHelper2%
  (class HighScoresHelperBase%
    (super-new)
    (field [f_circularIndexUtil JR.null])
    (field [f_selectedHighScores JR.null])
    (define/override (jm_setSelectedHighScores_1 _selectedHighScores)
    (let ()
      (let/ec jreturn
        (set-field! f_selectedHighScores this _selectedHighScores))))
    (define/override (jm_getSelectedHighScores_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_selectedHighScores this)))))
    (define/override (jm_setHighScoresArray_1 _highScoresArrayP)
    (let ()
      (let/ec jreturn
        (super jm_setHighScoresArray_1 _highScoresArrayP)
        (send (get-field f_circularIndexUtil this) jm_setSize_1 (vector-length (get-field f_highScoresArrayP this)))
        (send this jm_selectHighScores_0))))
    (define/override (jm_selectHighScores_0)
    (let ([_highScores JR.null][_index JR.null])
      (let/ec jreturn
        (when (= (vector-length (get-field f_highScoresArrayP this)) 0)
            (begin
            (send this jm_setSelectedHighScores_1 (NullHighScoresSingletonFactory.jm_getInstance_0))
            (jreturn (void))))
        (send (get-field f_circularIndexUtil this) jm_next_0)
        (set! _highScores (vector-ref (get-field f_highScoresArrayP this) (send (get-field f_circularIndexUtil this) jm_getIndex_0)))
        (set! _index 0)
        (let/ec jbreak (let jloop () (when (and (< (send _highScores jm_getTotal_0) 1) (< _index (vector-length (get-field f_highScoresArrayP this))))
                (let/ec jcontinue
            (set! _highScores (vector-ref (get-field f_highScoresArrayP this) (send (get-field f_circularIndexUtil this) jm_next_0)))
            (set! _index (JR.i32 (+ _index 1)))) (jloop))))
        (send this jm_setSelectedHighScores_1 _highScores))))))
(define (HighScoresHelper2.jclassValue) HighScoresHelper2%)

(define (HighScoresHelper2.jnew_0)
  (define this (new HighScoresHelper2% [jclass "HighScoresHelper2"]))
    (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstanceAt_2 0 0))
    (set-field! f_selectedHighScores this (NullHighScoresSingletonFactory.jm_getInstance_0))
  this)



