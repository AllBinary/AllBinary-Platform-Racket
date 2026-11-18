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
;; package org.allbinary.globals

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringValidationUtil.rkt" (StringValidationUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/system/loader/WebappClassLoaderInfo.rkt" (WebappClassLoaderInfo.jm_setLoader_1)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./AppUrlGlobals.rkt" (AppUrlGlobals.jnew_0)])
(lazy-require ["./URLGLOBALS.rkt" (URLGLOBALS.jm_init_1 URLGLOBALS.jm_getWebappPath_0)])
(provide (all-defined-out))

(define Globals%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_init_2 _classLoader _pathString)
    (let ([_commonStrings JR.null][_appUrlGlobals JR.null][_stringBuffer JR.null][_stringValidationUtil JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (set! _appUrlGlobals (AppUrlGlobals.jnew_0))
        (send _appUrlGlobals jm_setWebappPath_1 _pathString)
        (URLGLOBALS.jm_init_1 _appUrlGlobals)
        (WebappClassLoaderInfo.jm_setLoader_1 _classLoader)
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "Setting Up AllBinary System Configuration Args: ")
        (send _stringBuffer jm_append_1 _pathString)
        (send _stringBuffer jm_append_1 " ClassLoader: ")
        (send _stringBuffer jm_append_1 (JR.className _classLoader))
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (get-field f_INIT _commonStrings))
        (set! _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (when (send _stringValidationUtil jm_isEmpty_1 _pathString)
            (begin
            (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
            (send _stringBuffer jm_append_1 "No Path Provided. Using Process Path: ")
            (send _stringBuffer jm_append_1 _pathString)
            (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
            (send _stringBuffer jm_append_1 (get-field f_EQUALS (CommonSeps.jm_getInstance_0)))
            (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
            (send _stringBuffer jm_append_1 (URLGLOBALS.jm_getWebappPath_0))
            (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (get-field f_INIT _commonStrings))))
        (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
        (send _stringBuffer jm_append_1 "Webapp Path Set To: ")
        (send _stringBuffer jm_append_1 (URLGLOBALS.jm_getWebappPath_0))
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (get-field f_INIT _commonStrings)))))))
(define (Globals.jclassValue) Globals%)

(define Globals.jcell_instance 'jnone)
(define (Globals.jstatic_instance)
  (when (eq? Globals.jcell_instance 'jnone) (set! Globals.jcell_instance (Globals.jnew_0)))
  Globals.jcell_instance)
(define (Globals.jsetstatic_instance value) (set! Globals.jcell_instance value))

(define (Globals.jnew_0)
  (define this (new Globals% [jclass "Globals"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (Globals.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (Globals.jstatic_instance)))))



