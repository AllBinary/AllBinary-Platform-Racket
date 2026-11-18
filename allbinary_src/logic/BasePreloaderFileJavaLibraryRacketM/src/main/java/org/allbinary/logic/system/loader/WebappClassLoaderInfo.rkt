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
;; package org.allbinary.logic.system.loader

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define WebappClassLoaderInfo%
  (class JObject%
    (super-new)))
(define (WebappClassLoaderInfo.jclassValue) WebappClassLoaderInfo%)

(define WebappClassLoaderInfo.jcell_classLoader 'jnone)
(define (WebappClassLoaderInfo.jstatic_classLoader)
  (when (eq? WebappClassLoaderInfo.jcell_classLoader 'jnone) (set! WebappClassLoaderInfo.jcell_classLoader (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  WebappClassLoaderInfo.jcell_classLoader)
(define (WebappClassLoaderInfo.jsetstatic_classLoader value) (set! WebappClassLoaderInfo.jcell_classLoader value))

(define (WebappClassLoaderInfo.jnew_0)
  (define this (new WebappClassLoaderInfo% [jclass "WebappClassLoaderInfo"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (WebappClassLoaderInfo.jm_setLoader_1 _classLoader)
    (let ()
      (let/ec jreturn
        (set! WebappClassLoaderInfo.jcell_classLoader _classLoader))))

(define (WebappClassLoaderInfo.jm_getLoader_0)
    (let ()
      (let/ec jreturn
        (jreturn (WebappClassLoaderInfo.jstatic_classLoader)))))



