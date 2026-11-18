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
;; package org.allbinary.image.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./OpenGLImageFactory.rkt" (OpenGLImageFactory.jstatic_NULL_OPENGL_IMAGE_FACTORY)])
(provide (all-defined-out))

(define OpenGLImageSpecificFactory%
  (class JObject%
    (super-new)
    (field [f_imageFactory JR.null])
    (field [f_updating #f])
    (define/public (jm_setImageFactory_1 _imageFactory)
    (let ()
      (let/ec jreturn
        (set-field! f_imageFactory this _imageFactory)
        (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Selected Image Factory: ") jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (get-field f_imageFactory this))) jm_toString_0) this "setImageFactory"))))
    (define/public (jm_getImageFactory_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_imageFactory this)))))))
(define (OpenGLImageSpecificFactory.jclassValue) OpenGLImageSpecificFactory%)

(define OpenGLImageSpecificFactory.jcell_instance 'jnone)
(define (OpenGLImageSpecificFactory.jstatic_instance)
  (when (eq? OpenGLImageSpecificFactory.jcell_instance 'jnone) (set! OpenGLImageSpecificFactory.jcell_instance (OpenGLImageSpecificFactory.jnew_0)))
  OpenGLImageSpecificFactory.jcell_instance)
(define (OpenGLImageSpecificFactory.jsetstatic_instance value) (set! OpenGLImageSpecificFactory.jcell_instance value))

(define (OpenGLImageSpecificFactory.jnew_0)
  (define this (new OpenGLImageSpecificFactory% [jclass "OpenGLImageSpecificFactory"]))
    (set-field! f_imageFactory this (OpenGLImageFactory.jstatic_NULL_OPENGL_IMAGE_FACTORY))
    (set-field! f_updating this #f)
  this)

(define (OpenGLImageSpecificFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLImageSpecificFactory.jstatic_instance)))))



