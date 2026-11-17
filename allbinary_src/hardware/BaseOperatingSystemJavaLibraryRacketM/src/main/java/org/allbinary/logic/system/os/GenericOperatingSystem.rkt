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
  "./OperatingSystemInterface.rkt")
(lazy-require ["../../../../../org/allbinary/logic/java/character/CharacterSet.rkt" (CharacterSet.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringValidationUtil.rkt" (StringValidationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["./SystemProperties.rkt" (SystemProperties.jm_getInstance_0)])
(provide (all-defined-out))

(define GenericOperatingSystem%
  (class JObject%
    (super-new)
    (field [f_osName JR.null])
    (field [f_osArch JR.null])
    (field [f_osVersion JR.null])
    (field [f_characterSet JR.null])
    (field [f_scalable #f])
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_osName this)))))
    (define/public (jm_getVersion_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_osVersion this)))))
    (define/public (jm_getArch_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_osArch this)))))
    (define/public (jm_getCharacterSet_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_characterSet this)))))
    (define/public (jm_isOverScan_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_getOverScanXPercent_0)
    (let ()
      (let/ec jreturn
        (jreturn 100))))
    (define/public (jm_getOverScanYPercent_0)
    (let ()
      (let/ec jreturn
        (jreturn 100))))
    (define/public (jm_isScalable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_scalable this)))))
    (define/public (jm_isAutoHide_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/override (jm_toString_0)
    (let ([_NEW_LINE JR.null][_osBuffer JR.null])
      (let/ec jreturn
        (set! _NEW_LINE (get-field f_NEW_LINE (CommonSeps.jm_getInstance_0)))
        (set! _osBuffer (StringMaker.jnew_0))
        (send _osBuffer jm_append_1 "Operating System Info: \n")
        (send _osBuffer jm_append_1 (send this jm_getName_0))
        (send _osBuffer jm_append_1 _NEW_LINE)
        (send _osBuffer jm_append_1 (send this jm_getArch_0))
        (send _osBuffer jm_append_1 _NEW_LINE)
        (send _osBuffer jm_append_1 (send this jm_getVersion_0))
        (send _osBuffer jm_append_1 _NEW_LINE)
        (send _osBuffer jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (send this jm_getCharacterSet_0)))
        (send _osBuffer jm_append_1 _NEW_LINE)
        (jreturn (send _osBuffer jm_toString_0)))))))

(define (GenericOperatingSystem.jnew_0)
  (define this (new GenericOperatingSystem% [jclass "GenericOperatingSystem"]))
    
    
    
    (set-field! f_characterSet this (CharacterSet.jnew_0))
    (set-field! f_scalable this #f)
    (let ([_systemProperties JR.null][_stringValidationUtil JR.null][_EMPTY_STRING JR.null])
      (let/ec jreturn
        (set! _systemProperties (SystemProperties.jm_getInstance_0))
        (set! _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (set! _EMPTY_STRING (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
        (if (send _stringValidationUtil jm_isEmpty_1 (send _systemProperties jm_getName_0))
            (begin
            (set-field! f_osName this _EMPTY_STRING))
            (begin
            (set-field! f_osName this (send _systemProperties jm_getName_0))))
        (if (send _stringValidationUtil jm_isEmpty_1 (send _systemProperties jm_getArch_0))
            (begin
            (set-field! f_osArch this _EMPTY_STRING))
            (begin
            (set-field! f_osArch this (send _systemProperties jm_getArch_0))))
        (if (send _stringValidationUtil jm_isEmpty_1 (send _systemProperties jm_getVersion_0))
            (begin
            (set-field! f_osVersion this _EMPTY_STRING))
            (begin
            (set-field! f_osVersion this (send _systemProperties jm_getVersion_0))))))
  this)



