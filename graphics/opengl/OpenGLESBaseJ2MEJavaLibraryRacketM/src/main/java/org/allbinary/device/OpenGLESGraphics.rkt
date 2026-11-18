#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.device

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.rkt"
  "./GraphicsInterface.rkt")
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./NullGL10.rkt" (NullGL10.jstatic_NULL_GL10)])
(provide (all-defined-out))

(define OpenGLESGraphics%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (field [f_gl JR.null])
    (define/public (jm_updateGL_1 _gl)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_set_1 _gl)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setOrthoginalMode_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setCameraMode_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getGlP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gl this)))))
    (define/public (jm_setFontDebug_2 _font _fontDebug)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))))
(define (OpenGLESGraphics.jclassValue) OpenGLESGraphics%)

(define (OpenGLESGraphics.jnew_0)
  (define this (new OpenGLESGraphics% [jclass "OpenGLESGraphics"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_gl this (NullGL10.jstatic_NULL_GL10))
    (let ()
      (let/ec jreturn (void)))
  this)



