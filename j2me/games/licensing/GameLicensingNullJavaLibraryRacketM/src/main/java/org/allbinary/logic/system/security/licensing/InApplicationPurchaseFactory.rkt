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
;; package org.allbinary.logic.system.security.licensing

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define InApplicationPurchaseFactory%
  (class JObject%
    (super-new)
    (define/public (jm_init_2 _anyType _stateObject)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onCreate_2 _anyType _stateObject)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onStart_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onResult_3 _requestCode _resultCode _data)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onSaveState_1 _anyType)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onStop_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onDestroy_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_purchase_1 _lockableFeature)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isPurchased_1 _lockableFeature)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_add_1 _lockableFeature)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getUserName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_isEnabled_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))
(define (InApplicationPurchaseFactory.jclassValue) InApplicationPurchaseFactory%)

(define InApplicationPurchaseFactory.jcell_instance 'jnone)
(define (InApplicationPurchaseFactory.jstatic_instance)
  (when (eq? InApplicationPurchaseFactory.jcell_instance 'jnone) (set! InApplicationPurchaseFactory.jcell_instance (InApplicationPurchaseFactory.jnew_0)))
  InApplicationPurchaseFactory.jcell_instance)
(define (InApplicationPurchaseFactory.jsetstatic_instance value) (set! InApplicationPurchaseFactory.jcell_instance value))

(define (InApplicationPurchaseFactory.jnew_0)
  (define this (new InApplicationPurchaseFactory% [jclass "InApplicationPurchaseFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (InApplicationPurchaseFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (InApplicationPurchaseFactory.jstatic_instance)))))



