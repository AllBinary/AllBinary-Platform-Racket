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
;; package org.allbinary.logic.communication.http

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define HttpData%
  (class JObject%
    (super-new)
    (field [f_EQUALS JR.null])
    (field [f_PARAM_SEP JR.null])
    (field [f_URL_PARAM_SEP JR.null])
    (field [f_URL_LABEL JR.null])))

(define HttpData.jcell_instance 'jnone)
(define (HttpData.jstatic_instance)
  (when (eq? HttpData.jcell_instance 'jnone) (set! HttpData.jcell_instance (HttpData.jnew_0)))
  HttpData.jcell_instance)

(define (HttpData.jnew_0)
  (define this (new HttpData% [jclass "HttpData"]))
    
    
    
    (set-field! f_URL_LABEL this "Url: ")
    (let ([_commonSeps JR.null])
      (let/ec jreturn
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set-field! f_EQUALS this (get-field f_EQUALS _commonSeps))
        (set-field! f_PARAM_SEP this (get-field f_AMPERSAND _commonSeps))
        (set-field! f_URL_PARAM_SEP this (get-field f_QUESTION _commonSeps))))
  this)

(define (HttpData.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (HttpData.jstatic_instance)))))



