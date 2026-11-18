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
;; package org.allbinary.content

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define NotificationUtil%
  (class JObject%
    (super-new)
    (define/public (jm_notify_3 _command _resource _message)
    (let ()
      (let/ec jreturn (void))))))
(define (NotificationUtil.jclassValue) NotificationUtil%)

(define NotificationUtil.jcell_SINGLETON 'jnone)
(define (NotificationUtil.jstatic_SINGLETON)
  (when (eq? NotificationUtil.jcell_SINGLETON 'jnone) (set! NotificationUtil.jcell_SINGLETON (NotificationUtil.jnew_0)))
  NotificationUtil.jcell_SINGLETON)
(define (NotificationUtil.jsetstatic_SINGLETON value) (set! NotificationUtil.jcell_SINGLETON value))

(define (NotificationUtil.jnew_0)
  (define this (new NotificationUtil% [jclass "NotificationUtil"]))
  this)

(define (NotificationUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NotificationUtil.jstatic_SINGLETON)))))



