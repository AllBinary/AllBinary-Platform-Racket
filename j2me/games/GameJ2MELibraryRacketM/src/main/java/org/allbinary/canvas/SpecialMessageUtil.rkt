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
;; package org.allbinary.canvas

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/system/Memory.rkt" (Memory.jm_getInfo_0)])
(lazy-require ["./GameStatisticsFactory.rkt" (GameStatisticsFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define SpecialMessageUtil%
  (class JObject%
    (super-new)
    (define/public (jm_get_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (Memory.jm_getInfo_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (send (GameStatisticsFactory.jm_getInstance_0) jm_toString_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 " Option: ")
        (if (send (Features.jm_getInstance_0) jm_isDefault_1 (get-field f_OPENGL_AUTO_SELECT (OpenGLFeatureFactory.jm_getInstance_0)))
            (begin
            (send _stringBuffer jm_append_1 (JR.className (get-field f_OPENGL_AUTO_SELECT (OpenGLFeatureFactory.jm_getInstance_0)))))
            (begin
            (send _stringBuffer jm_append_1 (JR.className (get-field f_OPENGL_MINIMUM (OpenGLFeatureFactory.jm_getInstance_0))))))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (SpecialMessageUtil.jclassValue) SpecialMessageUtil%)

(define SpecialMessageUtil.jcell_SINGLETON 'jnone)
(define (SpecialMessageUtil.jstatic_SINGLETON)
  (when (eq? SpecialMessageUtil.jcell_SINGLETON 'jnone) (set! SpecialMessageUtil.jcell_SINGLETON (SpecialMessageUtil.jnew_0)))
  SpecialMessageUtil.jcell_SINGLETON)
(define (SpecialMessageUtil.jsetstatic_SINGLETON value) (set! SpecialMessageUtil.jcell_SINGLETON value))

(define (SpecialMessageUtil.jnew_0)
  (define this (new SpecialMessageUtil% [jclass "SpecialMessageUtil"]))
  this)

(define (SpecialMessageUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SpecialMessageUtil.jstatic_SINGLETON)))))



