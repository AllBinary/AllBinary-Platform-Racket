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
  "./HighScoresFactoryInterface.rkt")
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define HighScoresBase%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (define/public (jm_fetchHighScores_2 _gameInfo _highScoresResultsListener)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_fetchHighScoresPreload_3 _gameInfo _highScoresResultsListener _preload)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_createHighScoresHelper_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))))
(define (HighScoresBase.jclassValue) HighScoresBase%)

(define (HighScoresBase.jnew_0)
  (define this (new HighScoresBase% [jclass "HighScoresBase"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)



