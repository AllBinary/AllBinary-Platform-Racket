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
;; package org.allbinary.logic.system.security.crypt.jcehelper

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../java/security/spec/KeySpec.rkt"
  "../../../../../../../javax/crypto/spec/DESKeySpec.rkt"
  "../../../../../../../javax/crypto/spec/DESedeKeySpec.rkt")
(lazy-require ["../../../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_putOE_4)])
(lazy-require ["../../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define KeySpecFactory%
  (class JObject%
    (super-new)
    (field [f_DES JR.null])
    (field [f_DESEDE JR.null])
    (field [f_BLOWFISH JR.null])
    (define/public (jm_getInstance_2 _algorithm _keyData)
    (let ([_tsUtil JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_putOE_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_GET_INSTANCE _commonStrings) _e)
            (raise (JR.newException "RuntimeException")))])
            (set! _tsUtil (TsUtil.jm_getInstance_0))
            (if (= (send _tsUtil jm_compareTo_2 _algorithm (get-field f_DES this)) 0)
                (begin
                (jreturn (DESKeySpec.jnew_1 _keyData)))
                (if (= (send _tsUtil jm_compareTo_2 _algorithm (get-field f_DESEDE this)) 0)
                (begin
                (jreturn (DESedeKeySpec.jnew_1 _keyData)))
                (begin
                (raise (JR.newException "RuntimeException")))))))))))
(define (KeySpecFactory.jclassValue) KeySpecFactory%)

(define KeySpecFactory.jcell_instance 'jnone)
(define (KeySpecFactory.jstatic_instance)
  (when (eq? KeySpecFactory.jcell_instance 'jnone) (set! KeySpecFactory.jcell_instance (KeySpecFactory.jnew_0)))
  KeySpecFactory.jcell_instance)
(define (KeySpecFactory.jsetstatic_instance value) (set! KeySpecFactory.jcell_instance value))

(define (KeySpecFactory.jnew_0)
  (define this (new KeySpecFactory% [jclass "KeySpecFactory"]))
    (set-field! f_DES this "DES")
    (set-field! f_DESEDE this "DESede")
    (set-field! f_BLOWFISH this "Blowfish")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (KeySpecFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (KeySpecFactory.jstatic_instance)))))



