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
;; package org.allbinary.game.ag.ai

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/logic/util/visitor/Visitor.rkt"
  "../../../../../java/lang/Boolean.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/java/bool/BooleanFactory.rkt" (BooleanFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define LastKeyAIVisitor%
  (class Visitor%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_TRUE JR.null])
    (define/override (jm_visit_1 _anyType)
    (let ([_basicAI JR.null][_key JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_VISIT _commonStrings) _e))])
            (set! _basicAI _anyType)
            (set! _key (send _basicAI jm_getLastKey_0))
            (when (not (= _key (JR.i32 (- 1))))
                (begin
                (send _basicAI jm_processKeyAI_1 _key))))
        (jreturn (get-field f_TRUE this)))))))
(define (LastKeyAIVisitor.jclassValue) LastKeyAIVisitor%)

(define (LastKeyAIVisitor.jnew_0)
  (define this (new LastKeyAIVisitor% [jclass "LastKeyAIVisitor"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_TRUE this (get-field f_TRUE (BooleanFactory.jm_getInstance_0)))
    (let ()
      (let/ec jreturn (void)))
  this)



