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
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define UrlGlobalsInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getMainPath_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_getTestHtmlPath_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_getWebappPath_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_isTestingMode_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))
(define (UrlGlobalsInterface.jclassValue) UrlGlobalsInterface%)

(define (UrlGlobalsInterface.jnew_0)
  (define this (new UrlGlobalsInterface% [jclass "UrlGlobalsInterface"]))
  this)



