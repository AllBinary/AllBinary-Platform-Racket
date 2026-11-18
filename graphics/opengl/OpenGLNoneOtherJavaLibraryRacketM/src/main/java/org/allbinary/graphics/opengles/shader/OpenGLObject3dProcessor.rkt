#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.opengles.shader

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define OpenGLObject3dProcessor%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (define/public (jm_process_2 _gl _object3d)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_process_3 _gl _object3d _index)
    (let ()
      (let/ec jreturn (void))))))
(define (OpenGLObject3dProcessor.jclassValue) OpenGLObject3dProcessor%)

(define (OpenGLObject3dProcessor.jnew_0)
  (define this (new OpenGLObject3dProcessor% [jclass "OpenGLObject3dProcessor"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
  this)



