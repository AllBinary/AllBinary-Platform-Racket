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
;; package org.allbinary.graphics.form.item.validation

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/util/visitor/Visitor.rkt")
(lazy-require ["../../../../../../org/allbinary/game/input/TextNotificationUtil.rkt" (TextNotificationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/java/bool/BooleanFactory.rkt" (BooleanFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringValidationUtil.rkt" (StringValidationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define TextItemNumberVisitor%
  (class Visitor%
    (super-new)
    (field [f_logUtil JR.null])
    (define/override (jm_visit_1 _anyType)
    (let ([_value JR.null][_stringValidationUtil JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (set! _value _anyType)
        (if (< (string-length _value) 2)
            (begin
            (set! _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
            (if (send _stringValidationUtil jm_isNumber_1 _value)
                (begin
                (jreturn (get-field f_TRUE (BooleanFactory.jm_getInstance_0))))
                (begin
                (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                    (set! _commonStrings (CommonStrings.jm_getInstance_0))
                    (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_VISIT _commonStrings) _e))])
                    (send (TextNotificationUtil.jm_getInstance_0) jm_fireError_1 "Numbers Only"))
                (jreturn (get-field f_FALSE (BooleanFactory.jm_getInstance_0))))))
            (begin
            (jreturn (get-field f_FALSE (BooleanFactory.jm_getInstance_0))))))))))
(define (TextItemNumberVisitor.jclassValue) TextItemNumberVisitor%)

(define (TextItemNumberVisitor.jnew_0)
  (define this (new TextItemNumberVisitor% [jclass "TextItemNumberVisitor"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)



