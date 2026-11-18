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
  "./HighScoresBase.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["./HighScoresHelperBase.rkt" (HighScoresHelperBase.jnew_0)])
(provide (all-defined-out))

(define NoHighScoresFactory%
  (class HighScoresBase%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_NO_HIGH_SCORES JR.null])
    (define/override (jm_fetchHighScores_2 _gameInfo _highScoresResultsListener)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 "Getting No HighScores" this "fetchHighScores")
        (send _highScoresResultsListener jm_setHighScoresArray_1 (get-field f_NO_HIGH_SCORES this)))))
    (define/override (jm_createHighScoresHelper_0)
    (let ()
      (let/ec jreturn
        (jreturn (HighScoresHelperBase.jnew_0)))))))
(define (NoHighScoresFactory.jclassValue) NoHighScoresFactory%)

(define NoHighScoresFactory.jcell_instance 'jnone)
(define (NoHighScoresFactory.jstatic_instance)
  (when (eq? NoHighScoresFactory.jcell_instance 'jnone) (set! NoHighScoresFactory.jcell_instance (NoHighScoresFactory.jnew_0)))
  NoHighScoresFactory.jcell_instance)
(define (NoHighScoresFactory.jsetstatic_instance value) (set! NoHighScoresFactory.jcell_instance value))

(define (NoHighScoresFactory.jnew_0)
  (define this (new NoHighScoresFactory% [jclass "NoHighScoresFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_NO_HIGH_SCORES this (JR.newArray JR.null 0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NoHighScoresFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoHighScoresFactory.jstatic_instance)))))



