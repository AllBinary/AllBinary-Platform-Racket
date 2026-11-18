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
;; package org.allbinary.string

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define CommonPhoneStrings%
  (class JObject%
    (super-new)
    (field [f_UP JR.null])
    (field [f_DOWN JR.null])
    (field [f_LEFT JR.null])
    (field [f_RIGHT JR.null])
    (field [f_ZERO JR.null])
    (field [f_ONE JR.null])
    (field [f_TWO JR.null])
    (field [f_THREE JR.null])
    (field [f_FOUR JR.null])
    (field [f_FIVE JR.null])
    (field [f_SIX JR.null])
    (field [f_SEVEN JR.null])
    (field [f_EIGHT JR.null])
    (field [f_NINE JR.null])
    (field [f_POUND JR.null])
    (field [f_STAR JR.null])
    (field [f_FIRE JR.null])))
(define (CommonPhoneStrings.jclassValue) CommonPhoneStrings%)

(define CommonPhoneStrings.jcell_instance 'jnone)
(define (CommonPhoneStrings.jstatic_instance)
  (when (eq? CommonPhoneStrings.jcell_instance 'jnone) (set! CommonPhoneStrings.jcell_instance (CommonPhoneStrings.jnew_0)))
  CommonPhoneStrings.jcell_instance)
(define (CommonPhoneStrings.jsetstatic_instance value) (set! CommonPhoneStrings.jcell_instance value))

(define (CommonPhoneStrings.jnew_0)
  (define this (new CommonPhoneStrings% [jclass "CommonPhoneStrings"]))
    (set-field! f_UP this "UP")
    (set-field! f_DOWN this "DOWN")
    (set-field! f_LEFT this "LEFT")
    (set-field! f_RIGHT this "RIGHT")
    (set-field! f_ZERO this "0")
    (set-field! f_ONE this "1")
    (set-field! f_TWO this "2")
    (set-field! f_THREE this "3")
    (set-field! f_FOUR this "4")
    (set-field! f_FIVE this "5")
    (set-field! f_SIX this "6")
    (set-field! f_SEVEN this "7")
    (set-field! f_EIGHT this "8")
    (set-field! f_NINE this "9")
    (set-field! f_POUND this "#")
    (set-field! f_STAR this "*")
    (set-field! f_FIRE this "FIRE")
  this)

(define (CommonPhoneStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CommonPhoneStrings.jstatic_instance)))))



