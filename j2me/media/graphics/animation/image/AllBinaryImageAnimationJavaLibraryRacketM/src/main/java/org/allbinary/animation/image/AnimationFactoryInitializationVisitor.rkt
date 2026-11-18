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
;; package org.allbinary.animation.image

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/math/PositionStrings.rkt" (PositionStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define AnimationFactoryInitializationVisitor%
  (class JObject%
    (super-new)
    (field [f_width 0])
    (field [f_height 0])
    (field [f_dx 0])
    (field [f_dy 0])
    (field [f_originalDx 0])
    (field [f_originalDy 0])
    (define/public (jm_visit_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_toString_0)
    (let ([_commonSeps JR.null][_commonLabels JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set! _commonLabels (CommonLabels.jm_getInstance_0))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send (send _stringBuffer jm_append_1 (get-field f_DX_LABEL (PositionStrings.jm_getInstance_0))) jm_appendfloat_1 (JR.toDouble (get-field f_dx this)))
        (send (send _stringBuffer jm_append_1 (get-field f_DY_LABEL (PositionStrings.jm_getInstance_0))) jm_appendfloat_1 (JR.toDouble (get-field f_dy this)))
        (send _stringBuffer jm_append_1 (get-field f_WIDTH_LABEL _commonLabels))
        (send _stringBuffer jm_appendint_1 (get-field f_width this))
        (send _stringBuffer jm_append_1 (get-field f_SPACE _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_HEIGHT_LABEL _commonLabels))
        (send _stringBuffer jm_appendint_1 (get-field f_height this))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (AnimationFactoryInitializationVisitor.jclassValue) AnimationFactoryInitializationVisitor%)

(define (AnimationFactoryInitializationVisitor.jnew_0)
  (define this (new AnimationFactoryInitializationVisitor% [jclass "AnimationFactoryInitializationVisitor"]))
    
    
    
    
    
    
  this)



