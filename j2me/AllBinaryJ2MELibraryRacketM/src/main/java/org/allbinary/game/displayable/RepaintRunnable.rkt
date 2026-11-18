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
;; package org.allbinary.game.displayable

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/thread/ARunnable.rkt")
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define RepaintRunnable%
  (class ARunnable%
    (super-new)
    (field [f_canvas JR.null])
    (define/override (jm_run_0)
    (let ([_commonStrings JR.null][_logUtil JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (set! _logUtil (LogUtil.jm_getInstance_0))
            (send _logUtil jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_RUN _commonStrings) _e))])
            (send (get-field f_canvas this) jm_repaint_0)
            (send (DisplayInfoSingleton.jm_getInstance_0) jm_process_0)))))))
(define (RepaintRunnable.jclassValue) RepaintRunnable%)

(define (RepaintRunnable.jnew_1 _canvas)
  (define this (new RepaintRunnable% [jclass "RepaintRunnable"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_canvas this _canvas)))
  this)



