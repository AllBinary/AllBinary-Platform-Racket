#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.score

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./HighScoresBase.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["./RecordStoreHighScores.rkt" (RecordStoreHighScores.jm_getInstance_6)])
(lazy-require ["./ScoreComparator.rkt" (ScoreComparator.jnew_1)])
(lazy-require ["./HighScoresHelper2.rkt" (HighScoresHelper2.jnew_0)])
(provide (all-defined-out))

(define BasicHighScoresFactory%
  (class HighScoresBase%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_abeClientInformation JR.null])
    (field [f_highScoresArray JR.null])
    (field [f_TOP JR.null])
    (field [f_SCORES JR.null])
    (field [f_PERSONAL_HIGH_SCORES JR.null])
    (field [f_FETCH JR.null])
    (define/override (jm_fetchHighScores_2 _gameInfo _highScoresResultsListener)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 "Getting Local HighScores" this (get-field f_FETCH this))
        (send this jm_fetchHighScoresPreload_3 _gameInfo _highScoresResultsListener #t))))
    (define/override (jm_fetchHighScoresPreload_3 _gameInfo _highScoresResultsListener _preload)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_FETCH this) _e))])
            (vector-set! (get-field f_highScoresArray this) 0 (RecordStoreHighScores.jm_getInstance_6 (get-field f_abeClientInformation this) _gameInfo (get-field f_TOP this) (get-field f_PERSONAL_HIGH_SCORES this) (get-field f_SCORES this) (ScoreComparator.jnew_1 #t)))
            (send _highScoresResultsListener jm_setHighScoresArray_1 (get-field f_highScoresArray this))))))
    (define/override (jm_createHighScoresHelper_0)
    (let ()
      (let/ec jreturn
        (jreturn (HighScoresHelper2.jnew_0)))))))
(define (BasicHighScoresFactory.jclassValue) BasicHighScoresFactory%)

(define (BasicHighScoresFactory.jnew_2 _abeClientInformation _softwareInformation)
  (define this (new BasicHighScoresFactory% [jclass "BasicHighScoresFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (set-field! f_highScoresArray this (JR.newArray JR.null 1))
    (set-field! f_TOP this "Top")
    (set-field! f_SCORES this "Scores")
    (set-field! f_PERSONAL_HIGH_SCORES this "Personal Top Scores")
    (set-field! f_FETCH this "fetchHighScores")
    (let ()
      (let/ec jreturn
        (set-field! f_abeClientInformation this _abeClientInformation)))
  this)

(define (BasicHighScoresFactory.jm_loaded_1 _index2)
    (let ()
      (let/ec jreturn
        (when (>= _index2 0)
            (begin
            (jreturn #t)))
        (jreturn #f))))



