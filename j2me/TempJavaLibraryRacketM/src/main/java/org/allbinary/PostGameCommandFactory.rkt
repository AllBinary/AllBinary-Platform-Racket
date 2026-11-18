#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary

(require racket/class racket/lazy-require
  "../../allbinary_java.rkt")
(provide (all-defined-out))

(define PostGameCommandFactory%
  (class JObject%
    (super-new)
    (define/public (jm_addCommands_1 _canvas)
    (let ()
      (let/ec jreturn (void))))))
(define (PostGameCommandFactory.jclassValue) PostGameCommandFactory%)

(define PostGameCommandFactory.jcell_instance 'jnone)
(define (PostGameCommandFactory.jstatic_instance)
  (when (eq? PostGameCommandFactory.jcell_instance 'jnone) (set! PostGameCommandFactory.jcell_instance (PostGameCommandFactory.jnew_0)))
  PostGameCommandFactory.jcell_instance)
(define (PostGameCommandFactory.jsetstatic_instance value) (set! PostGameCommandFactory.jcell_instance value))

(define (PostGameCommandFactory.jnew_0)
  (define this (new PostGameCommandFactory% [jclass "PostGameCommandFactory"]))
  this)

(define (PostGameCommandFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))



