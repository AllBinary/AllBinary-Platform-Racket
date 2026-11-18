#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
  "./HighScoresHelperBaseInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./LastFetchHighScoresFactory.rkt" (LastFetchHighScoresFactory.jm_getInstance_0)])
(lazy-require ["./NullHighScoresSingletonFactory.rkt" (NullHighScoresSingletonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define HighScoresHelperBase%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_highScoresArrayP JR.null])
    (define/public (jm_setHighScoresArray_1 _highScoresArrayP)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (if (not (JR.null? _highScoresArrayP))
            (begin
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START _commonStrings)) jm_appendint_1 (vector-length _highScoresArrayP)) jm_toString_0) this "setHighScoresArray"))
            (begin
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_START _commonStrings) this "setHighScoresArray")))
        (set-field! f_highScoresArrayP this _highScoresArrayP))))
    (define/public (jm_getNextHighScores_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullHighScoresSingletonFactory.jm_getInstance_0)))))
    (define/public (jm_isAnyHighScores_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_setSelectedHighScores_1 _selectedHighScores)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getSelectedHighScores_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullHighScoresSingletonFactory.jm_getInstance_0)))))
    (define/public (jm_getHighScoresArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_highScoresArrayP this)))))
    (define/public (jm_selectHighScores_0)
    (let ()
      (let/ec jreturn (void))))))
(define (HighScoresHelperBase.jclassValue) HighScoresHelperBase%)

(define (HighScoresHelperBase.jnew_0)
  (define this (new HighScoresHelperBase% [jclass "HighScoresHelperBase"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_highScoresArrayP this (get-field f_highScoresArray (LastFetchHighScoresFactory.jm_getInstance_0)))
  this)



