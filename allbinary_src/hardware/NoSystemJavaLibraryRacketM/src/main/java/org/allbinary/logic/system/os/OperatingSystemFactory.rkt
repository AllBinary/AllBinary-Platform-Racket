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
;; package org.allbinary.logic.system.os

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/lang/System.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./NoOperatingSystem.rkt" (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM)])
(provide (all-defined-out))

(define OperatingSystemFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_genericOperatingSystem JR.null])
    (define/public (jm_getOperatingSystemInstance_0)
    (let ([_commonStrings JR.null][_osString JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_GET_INSTANCE _commonStrings) _e))])
            (set! _osString (send (send (send (StringMaker.jnew_0) jm_append_1 "OperatingSystem Info: ") jm_append_1 (send (get-field f_genericOperatingSystem this) jm_toString_0)) jm_toString_0))
            (JR.println _osString)
            (send (get-field f_logUtil this) jm_putF_3 _osString this (get-field f_GET_INSTANCE _commonStrings)))
        (jreturn (get-field f_genericOperatingSystem this)))))))
(define (OperatingSystemFactory.jclassValue) OperatingSystemFactory%)

(define OperatingSystemFactory.jcell_instance 'jnone)
(define (OperatingSystemFactory.jstatic_instance)
  (when (eq? OperatingSystemFactory.jcell_instance 'jnone) (set! OperatingSystemFactory.jcell_instance (OperatingSystemFactory.jnew_0)))
  OperatingSystemFactory.jcell_instance)
(define (OperatingSystemFactory.jsetstatic_instance value) (set! OperatingSystemFactory.jcell_instance value))

(define (OperatingSystemFactory.jnew_0)
  (define this (new OperatingSystemFactory% [jclass "OperatingSystemFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_genericOperatingSystem this (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (OperatingSystemFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OperatingSystemFactory.jstatic_instance)))))



