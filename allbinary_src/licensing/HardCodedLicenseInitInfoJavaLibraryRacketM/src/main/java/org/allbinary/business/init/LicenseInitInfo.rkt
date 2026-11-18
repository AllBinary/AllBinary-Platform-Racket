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
;; package org.allbinary.business.init

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/debug/DebugFactory.rkt" (DebugFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/debug/NoDebug.rkt" (NoDebug.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define LicenseInitInfo%
  (class JObject%
    (super-new)
    (field [f_id JR.null])
    (field [f_serverList JR.null])
    (define/public (jm_getLicenseId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_id this)))))
    (define/public (jm_getServer_1 _index)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_serverList this) jm_get_1 _index)))))
    (define/public (jm_getNumberOfServers_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_serverList this) jm_size_0)))))
    (define/public (jm_setLicenseId_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_id this _value))))
    (define/public (jm_clearServers_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_serverList this) jm_clear_0))))
    (define/public (jm_setServer_2 _value _index)
    (let ()
      (let/ec jreturn
        (send (get-field f_serverList this) jm_addAt_2 _index _value))))
    (define/public (jm_addServer_1 _value)
    (let ()
      (let/ec jreturn
        (send (get-field f_serverList this) jm_add_1 _value))))
    (define/public (jm_getServerList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_serverList this)))))
    (define/public (jm_setServerList_1 _servers)
    (let ()
      (let/ec jreturn
        (when (eq? (DebugFactory.jm_getInstance_0) (NoDebug.jm_getInstance_0))
            (begin
            (set-field! f_serverList this _servers))))))))
(define (LicenseInitInfo.jclassValue) LicenseInitInfo%)

(define (LicenseInitInfo.jnew_0)
  (define this (new LicenseInitInfo% [jclass "LicenseInitInfo"]))
    (set-field! f_id this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_serverList this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)



