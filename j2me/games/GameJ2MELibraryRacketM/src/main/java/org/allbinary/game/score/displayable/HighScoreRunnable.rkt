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
;; package org.allbinary.game.score.displayable

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/thread/ARunnable.rkt")
(lazy-require ["../../../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isHTML_0)])
(lazy-require ["../../../../../org/allbinary/logic/ABSystemWrapper.rkt" (ABSystemWrapper.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define HighScoreRunnable%
  (class ARunnable%
    (super-new)
    (field [f_highScoresCanvas JR.null])
    (define/override (jm_run_0)
    (let ([_commonStrings JR.null][_logUtil JR.null][_highScoresCanvas JR.null][_isHTML JR.null][_stringMaker JR.null][_systemWrapper JR.null][_currentTimeMillis JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (set! _logUtil (LogUtil.jm_getInstance_0))
        (set! _highScoresCanvas (get-field f_highScoresCanvas this))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send _logUtil jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_RUN _commonStrings) _e))])
            (set! _isHTML (J2MEUtil.jm_isHTML_0))
            (when (not _isHTML)
                (begin
                (let/ec jbreak (let jloop () (when (not (get-field f_hasPainted _highScoresCanvas))
                        (let/ec jcontinue
                    (void)) (jloop))))
                (set-field! f_hasPainted _highScoresCanvas #f)))
            (set! _stringMaker (StringMaker.jnew_0))
            (set! _systemWrapper (ABSystemWrapper.jm_getInstance_0))
            (set! _currentTimeMillis (send _systemWrapper jm_currentTimeMillis_0))
            (send _logUtil jm_putF_3 (send (send (send _stringMaker jm_append_1 "HighScoresCanvas - Request repaint to be sure: ") jm_appendlong_1 _currentTimeMillis) jm_toString_0) this (get-field f_RUN _commonStrings))
            (JR.className (get-field f_repaintBehavior _highScoresCanvas))
            (when (not _isHTML)
                (begin
                (let/ec jbreak (let jloop () (when (not (get-field f_hasPainted _highScoresCanvas))
                        (let/ec jcontinue
                    (void)) (jloop))))))
            (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
            (send _logUtil jm_putF_3 (send (send (send _stringMaker jm_append_1 "HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ") jm_appendlong_1 _currentTimeMillis) jm_toString_0) this (get-field f_RUN _commonStrings))
            (send _highScoresCanvas jm_executeUpdate_0)))))))
(define (HighScoreRunnable.jclassValue) HighScoreRunnable%)

(define (HighScoreRunnable.jnew_1 _highScoresCanvas)
  (define this (new HighScoreRunnable% [jclass "HighScoreRunnable"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_highScoresCanvas this _highScoresCanvas)))
  this)



