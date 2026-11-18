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
;; package org.allbinary.graphics.displayable.screen

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./AboutCommandProcessor.rkt" (AboutCommandProcessor.jm_getInstance_0)])
(provide (all-defined-out))

(define WebCommandProcessor%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_aboutCommandProcessor JR.null])
    (field [f_list JR.null])
    (define/public (jm_process_3 _midletCommandListener _command _canvas)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_PROCESS _commonStrings) _e))])
            (send (get-field f_list this) jm_removeAt_1 0)))))))
(define (WebCommandProcessor.jclassValue) WebCommandProcessor%)

(define WebCommandProcessor.jcell_instance 'jnone)
(define (WebCommandProcessor.jstatic_instance)
  (when (eq? WebCommandProcessor.jcell_instance 'jnone) (set! WebCommandProcessor.jcell_instance (WebCommandProcessor.jnew_0)))
  WebCommandProcessor.jcell_instance)
(define (WebCommandProcessor.jsetstatic_instance value) (set! WebCommandProcessor.jcell_instance value))

(define (WebCommandProcessor.jnew_0)
  (define this (new WebCommandProcessor% [jclass "WebCommandProcessor"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_aboutCommandProcessor this (AboutCommandProcessor.jm_getInstance_0))
    (set-field! f_list this (BasicArrayListD.jnew_0))
  this)

(define (WebCommandProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (WebCommandProcessor.jstatic_instance)))))



