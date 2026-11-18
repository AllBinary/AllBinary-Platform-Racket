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
(lazy-require ["./AppUrlGlobals.rkt" (AppUrlGlobals.jstatic_NULL_APP_URL_GLOBALS)])
(provide (all-defined-out))

(define URLGLOBALS%
  (class JObject%
    (super-new)))
(define (URLGLOBALS.jclassValue) URLGLOBALS%)

(define URLGLOBALS.jcell_urlGlobalsInterface 'jnone)
(define (URLGLOBALS.jstatic_urlGlobalsInterface)
  (when (eq? URLGLOBALS.jcell_urlGlobalsInterface 'jnone) (set! URLGLOBALS.jcell_urlGlobalsInterface (AppUrlGlobals.jstatic_NULL_APP_URL_GLOBALS)))
  URLGLOBALS.jcell_urlGlobalsInterface)
(define (URLGLOBALS.jsetstatic_urlGlobalsInterface value) (set! URLGLOBALS.jcell_urlGlobalsInterface value))

(define (URLGLOBALS.jnew_0)
  (define this (new URLGLOBALS% [jclass "URLGLOBALS"]))
  this)

(define (URLGLOBALS.jm_init_1 _urlGlobalsInterface)
    (let ()
      (let/ec jreturn
        (set! URLGLOBALS.jcell_urlGlobalsInterface _urlGlobalsInterface))))

(define (URLGLOBALS.jm_isTestingMode_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (URLGLOBALS.jstatic_urlGlobalsInterface))))))

(define (URLGLOBALS.jm_getWebappPath_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (URLGLOBALS.jstatic_urlGlobalsInterface))))))

(define (URLGLOBALS.jm_getTestHtmlPath_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (URLGLOBALS.jstatic_urlGlobalsInterface))))))

(define (URLGLOBALS.jm_getMainPath_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (URLGLOBALS.jstatic_urlGlobalsInterface))))))



