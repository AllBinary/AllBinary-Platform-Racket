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
;; package org.allbinary.logic.system.os.windows

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.rkt" (LogConfigTypeFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/config/type/LogConfigTypes.rkt" (LogConfigTypes.jstatic_LOGGING)])
(lazy-require ["../../../../../../org/allbinary/logic/system/os/NoOperatingSystem.rkt" (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM)])
(lazy-require ["../../../../../../org/allbinary/logic/system/os/OperatingSystems.rkt" (OperatingSystems.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/system/os/SystemProperties.rkt" (SystemProperties.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./WindowsOS.rkt" (WindowsOS.jnew_0)])
(provide (all-defined-out))

(define WindowsOperatingSystemFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_getOperatingSystemInstance_0)
    (let ([_operatingSystems JR.null][_osName JR.null][_operatingSystemInterface JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (when (JR.className (LogConfigTypes.jstatic_LOGGING))
                (begin
                (set! _commonStrings (CommonStrings.jm_getInstance_0))
                (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_GET_INSTANCE _commonStrings) _e)))
            (jreturn (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM)))])
            (set! _operatingSystems (OperatingSystems.jm_getInstance_0))
            (set! _osName (send (SystemProperties.jm_getInstance_0) jm_getName_0))
            (set! _operatingSystemInterface JR.null)
            (if (eq? (JR.compareTo _osName (get-field f_WINDOWS_NT _operatingSystems)) 0)
                (begin
                (set! _operatingSystemInterface (WindowsOS.jnew_0)))
                (if (eq? (JR.compareTo _osName (get-field f_WINDOWS_10 _operatingSystems)) 0)
                (begin
                (set! _operatingSystemInterface (WindowsOS.jnew_0)))
                (if (eq? (JR.compareTo _osName (get-field f_WINDOWS_11 _operatingSystems)) 0)
                (begin
                (set! _operatingSystemInterface (WindowsOS.jnew_0)))
                (if (eq? (JR.compareTo _osName (get-field f_WINDOWS2000 _operatingSystems)) 0)
                (begin
                (set! _operatingSystemInterface (WindowsOS.jnew_0)))
                (if (eq? (JR.compareTo _osName (get-field f_WINDOWS_XP _operatingSystems)) 0)
                (begin
                (set! _operatingSystemInterface (WindowsOS.jnew_0)))
                (if (eq? (JR.compareTo _osName (get-field f_WINDOWS_VISTA _operatingSystems)) 0)
                (begin
                (set! _operatingSystemInterface (WindowsOS.jnew_0)))
                (begin
                (if (send _operatingSystems jm_isUnknownSpecificOSAllowed_0)
                    (begin
                    (set! _operatingSystemInterface (WindowsOS.jnew_0)))
                    (begin
                    (raise (JR.newException "Exception" (JR.concat "Specific Windows OS Not Supported: " _osName))))))))))))
            (jreturn _operatingSystemInterface)))))))
(define (WindowsOperatingSystemFactory.jclassValue) WindowsOperatingSystemFactory%)

(define WindowsOperatingSystemFactory.jcell_instance 'jnone)
(define (WindowsOperatingSystemFactory.jstatic_instance)
  (when (eq? WindowsOperatingSystemFactory.jcell_instance 'jnone) (set! WindowsOperatingSystemFactory.jcell_instance (WindowsOperatingSystemFactory.jnew_0)))
  WindowsOperatingSystemFactory.jcell_instance)
(define (WindowsOperatingSystemFactory.jsetstatic_instance value) (set! WindowsOperatingSystemFactory.jcell_instance value))

(define (WindowsOperatingSystemFactory.jnew_0)
  (define this (new WindowsOperatingSystemFactory% [jclass "WindowsOperatingSystemFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (WindowsOperatingSystemFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (WindowsOperatingSystemFactory.jstatic_instance)))))



