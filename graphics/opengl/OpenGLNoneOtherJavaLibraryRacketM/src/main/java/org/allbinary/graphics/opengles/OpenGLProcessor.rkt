#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define OpenGLProcessor%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (define/public (jm_process_1 _gl)
    (let ()
      (let/ec jreturn (void))))))
(define (OpenGLProcessor.jclassValue) OpenGLProcessor%)

(define (OpenGLProcessor.jnew_0)
  (define this (new OpenGLProcessor% [jclass "OpenGLProcessor"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
  this)



