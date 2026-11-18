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
  "../../../allbinary_java.rkt"
  "./UrlGlobalsInterface.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

;implements
(define AppUrlGlobals%
  (class UrlGlobalsInterface%
    (super-new)
    (field [f_path JR.null])
    (define/override (jm_isTestingMode_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/override (jm_getWebappPath_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_path this)))))
    (define/public (jm_setWebappPath_1 _path)
    (let ()
      (let/ec jreturn
        (set-field! f_path this _path)
        (when (not (or (JR.endsWith (get-field f_path this) "\\") (JR.endsWith (get-field f_path this) "/")))
            (begin
            (set-field! f_path this (JR.concat (get-field f_path this) "\\")))))))
    (define/override (jm_getTestHtmlPath_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/override (jm_getMainPath_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_path this)))))))
(define (AppUrlGlobals.jclassValue) AppUrlGlobals%)

(define AppUrlGlobals.jcell_NULL_APP_URL_GLOBALS 'jnone)
(define (AppUrlGlobals.jstatic_NULL_APP_URL_GLOBALS)
  (when (eq? AppUrlGlobals.jcell_NULL_APP_URL_GLOBALS 'jnone) (set! AppUrlGlobals.jcell_NULL_APP_URL_GLOBALS (AppUrlGlobals.jnew_0)))
  AppUrlGlobals.jcell_NULL_APP_URL_GLOBALS)
(define (AppUrlGlobals.jsetstatic_NULL_APP_URL_GLOBALS value) (set! AppUrlGlobals.jcell_NULL_APP_URL_GLOBALS value))

(define (AppUrlGlobals.jnew_0)
  (define this (new AppUrlGlobals% [jclass "AppUrlGlobals"]))
    (set-field! f_path this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
  this)



