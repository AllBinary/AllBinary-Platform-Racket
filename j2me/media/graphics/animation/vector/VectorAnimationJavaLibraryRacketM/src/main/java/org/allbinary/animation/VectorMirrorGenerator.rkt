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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/graphics/pipeline/BasicGraphicsPipeline.rkt" (BasicGraphicsPipeline.jnew_1)])
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListS.rkt" (BasicArrayListS.jnew_1)])
(lazy-require ["./VectorAnimationUtil.rkt" (VectorAnimationUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define VectorMirrorGenerator%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_vectorAnimationUtil JR.null])
    (define/public (jm_getInstance_2 jp1 jp2)
      (cond))))
(define (VectorMirrorGenerator.jclassValue) VectorMirrorGenerator%)

(define VectorMirrorGenerator.jcell_instance 'jnone)
(define (VectorMirrorGenerator.jstatic_instance)
  (when (eq? VectorMirrorGenerator.jcell_instance 'jnone) (set! VectorMirrorGenerator.jcell_instance (VectorMirrorGenerator.jnew_0)))
  VectorMirrorGenerator.jcell_instance)
(define (VectorMirrorGenerator.jsetstatic_instance value) (set! VectorMirrorGenerator.jcell_instance value))

(define (VectorMirrorGenerator.jnew_0)
  (define this (new VectorMirrorGenerator% [jclass "VectorMirrorGenerator"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_vectorAnimationUtil this (VectorAnimationUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (VectorMirrorGenerator.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (VectorMirrorGenerator.jstatic_instance)))))



