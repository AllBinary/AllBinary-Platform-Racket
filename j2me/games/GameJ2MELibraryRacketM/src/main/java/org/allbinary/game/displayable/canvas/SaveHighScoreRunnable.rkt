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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/lang/Runnable.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define SaveHighScoreRunnable%
  (class JObject%
    (super-new)
    (field [f_progressCanvas JR.null])
    (field [f_isLast #f])
    (field [f_textBox JR.null])
    (define/public (jm_run_0)
    (let ([_logUtil JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (set! _logUtil (LogUtil.jm_getInstance_0))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send _logUtil jm_put_4 (get-field f_EXCEPTION _commonStrings) this "run" _e)
            (send (get-field f_progressCanvas this) jm_end_0))])
            (if (get-field f_isLast this)
                (begin
                (send (get-field f_textBox this) jm_submit_0))
                (begin
                (send (get-field f_textBox this) jm_saveHighScore_0)))))))))
(define (SaveHighScoreRunnable.jclassValue) SaveHighScoreRunnable%)

(define (SaveHighScoreRunnable.jnew_2 _isLast _textBox)
  (define this (new SaveHighScoreRunnable% [jclass "SaveHighScoreRunnable"]))
    (set-field! f_progressCanvas this (ProgressCanvasFactory.jm_getInstance_0))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_isLast this _isLast)
        (set-field! f_textBox this _textBox)))
  this)



