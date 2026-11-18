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
;; package org.allbinary.emulator

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define InitEmulatorFactory%
  (class JObject%
    (super-new)
    (field [f_initEmulator #f])
    (define/public (jm_setInitEmulator_1 _initEmulator)
    (let ()
      (let/ec jreturn
        (set-field! f_initEmulator this _initEmulator))))
    (define/public (jm_isInitEmulator_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initEmulator this)))))))
(define (InitEmulatorFactory.jclassValue) InitEmulatorFactory%)

(define InitEmulatorFactory.jcell_instance 'jnone)
(define (InitEmulatorFactory.jstatic_instance)
  (when (eq? InitEmulatorFactory.jcell_instance 'jnone) (set! InitEmulatorFactory.jcell_instance (InitEmulatorFactory.jnew_0)))
  InitEmulatorFactory.jcell_instance)
(define (InitEmulatorFactory.jsetstatic_instance value) (set! InitEmulatorFactory.jcell_instance value))

(define (InitEmulatorFactory.jnew_0)
  (define this (new InitEmulatorFactory% [jclass "InitEmulatorFactory"]))
    (set-field! f_initEmulator this #f)
  this)

(define (InitEmulatorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (InitEmulatorFactory.jstatic_instance)))))



