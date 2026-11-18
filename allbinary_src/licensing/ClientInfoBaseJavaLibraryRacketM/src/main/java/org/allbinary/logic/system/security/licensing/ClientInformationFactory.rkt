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
;; package org.allbinary.logic.system.security.licensing

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./ClientInformation.rkt" (ClientInformation.jnew_4)])
(provide (all-defined-out))

(define ClientInformationFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_0)
    (let ([_logUtil JR.null][_commonStrings JR.null][_stringUtil JR.null])
      (let/ec jreturn
        (set! _logUtil (LogUtil.jm_getInstance_0))
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (send _logUtil jm_putF_3 (get-field f_NOT_IMPLEMENTED _commonStrings) this (get-field f_GET_INSTANCE _commonStrings))
        (set! _stringUtil (StringUtil.jm_getInstance_0))
        (jreturn (ClientInformation.jnew_4 (get-field f_NULL_STRING _stringUtil) (get-field f_NULL_STRING _stringUtil) (get-field f_NULL_STRING _stringUtil) (get-field f_NULL_STRING _stringUtil))))))))
(define (ClientInformationFactory.jclassValue) ClientInformationFactory%)

(define (ClientInformationFactory.jnew_0)
  (define this (new ClientInformationFactory% [jclass "ClientInformationFactory"]))
  this)



