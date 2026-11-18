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
;; package org.allbinary.logic.system.security.licensing

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "./LockedUtilInterface.rkt")
(provide (all-defined-out))

(define LockedUtil%
  (class JObject%
    (super-new)
    (define/public (jm_isLocked_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/public (jm_isLockedFeature_1 _lockableFeatrue)
    (let ()
      (let/ec jreturn
        (jreturn #t))))))
(define (LockedUtil.jclassValue) LockedUtil%)

(define LockedUtil.jcell_instance 'jnone)
(define (LockedUtil.jstatic_instance)
  (when (eq? LockedUtil.jcell_instance 'jnone) (set! LockedUtil.jcell_instance (LockedUtil.jnew_0)))
  LockedUtil.jcell_instance)
(define (LockedUtil.jsetstatic_instance value) (set! LockedUtil.jcell_instance value))

(define (LockedUtil.jnew_0)
  (define this (new LockedUtil% [jclass "LockedUtil"]))
  this)

(define (LockedUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LockedUtil.jstatic_instance)))))



