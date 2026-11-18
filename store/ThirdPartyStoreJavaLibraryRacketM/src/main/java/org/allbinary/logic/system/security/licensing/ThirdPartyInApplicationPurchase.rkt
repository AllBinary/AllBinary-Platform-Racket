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
  "../../../../../../allbinary_java.rkt"
  "./ThirdPartyInApplicationPurchaseInterface.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ThirdPartyInApplicationPurchase%
  (class JObject%
    (super-new)
    (define/public (jm_isPurchased_1 _lockableFeature)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_onCreate_2 _anyType _stateObject)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onDestroy_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onStart_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onActivityResult_3 _requestCode _resultCode _dataObject)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onSaveInstanceState_1 _anyType)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onStop_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_requestPurchase_1 _lockableFeature)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_requestReceipts_0)
    (let ()
      (let/ec jreturn (void))))
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
        (jreturn #f))))
    (define/public (jm_requestProducts_0)
    (let ()
      (let/ec jreturn (void))))))
(define (ThirdPartyInApplicationPurchase.jclassValue) ThirdPartyInApplicationPurchase%)

(define (ThirdPartyInApplicationPurchase.jnew_0)
  (define this (new ThirdPartyInApplicationPurchase% [jclass "ThirdPartyInApplicationPurchase"]))
  this)



