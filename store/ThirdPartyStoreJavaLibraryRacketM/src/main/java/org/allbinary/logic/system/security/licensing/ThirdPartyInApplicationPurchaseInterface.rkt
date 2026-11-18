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
(provide (all-defined-out))

(define ThirdPartyInApplicationPurchaseInterface%
  (class JObject%
    (super-new)
    (define/public (jm_isPurchased_1 _lockableFeature)
      (raise (JR.newException "AbstractMethodError" "isPurchased")))
    (define/public (jm_onCreate_2 _anyType _stateObject)
      (raise (JR.newException "AbstractMethodError" "onCreate")))
    (define/public (jm_onDestroy_0)
      (raise (JR.newException "AbstractMethodError" "onDestroy")))
    (define/public (jm_onStart_0)
      (raise (JR.newException "AbstractMethodError" "onStart")))
    (define/public (jm_onActivityResult_3 _requestCode _resultCode _dataObject)
      (raise (JR.newException "AbstractMethodError" "onActivityResult")))
    (define/public (jm_onSaveInstanceState_1 _anyType)
      (raise (JR.newException "AbstractMethodError" "onSaveInstanceState")))
    (define/public (jm_onStop_0)
      (raise (JR.newException "AbstractMethodError" "onStop")))
    (define/public (jm_requestPurchase_1 _lockableFeature)
      (raise (JR.newException "AbstractMethodError" "requestPurchase")))
    (define/public (jm_requestReceipts_0)
      (raise (JR.newException "AbstractMethodError" "requestReceipts")))
    (define/public (jm_add_1 _lockableFeature)
      (raise (JR.newException "AbstractMethodError" "add")))
    (define/public (jm_getUserName_0)
      (raise (JR.newException "AbstractMethodError" "getUserName")))
    (define/public (jm_isEnabled_0)
      (raise (JR.newException "AbstractMethodError" "isEnabled")))))
(define (ThirdPartyInApplicationPurchaseInterface.jclassValue) ThirdPartyInApplicationPurchaseInterface%)

(define (ThirdPartyInApplicationPurchaseInterface.jnew_0)
  (define this (new ThirdPartyInApplicationPurchaseInterface% [jclass "ThirdPartyInApplicationPurchaseInterface"]))
  this)



