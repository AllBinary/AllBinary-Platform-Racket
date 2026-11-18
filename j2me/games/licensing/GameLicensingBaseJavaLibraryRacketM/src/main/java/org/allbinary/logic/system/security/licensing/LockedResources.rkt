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
  "../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define LockedResources%
  (class JObject%
    (super-new)
    (field [f_LOCKED_DEMO_GAME_FEATURE_RESOURCE JR.null])))
(define (LockedResources.jclassValue) LockedResources%)

(define LockedResources.jcell_instance 'jnone)
(define (LockedResources.jstatic_instance)
  (when (eq? LockedResources.jcell_instance 'jnone) (set! LockedResources.jcell_instance (LockedResources.jnew_0)))
  LockedResources.jcell_instance)
(define (LockedResources.jsetstatic_instance value) (set! LockedResources.jcell_instance value))

(define (LockedResources.jnew_0)
  (define this (new LockedResources% [jclass "LockedResources"]))
    (set-field! f_LOCKED_DEMO_GAME_FEATURE_RESOURCE this "/locked_demo_game_feature_64_by_64.png")
  this)

(define (LockedResources.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LockedResources.jstatic_instance)))))



