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
;; package org.allbinary.game.physics.velocity

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./VelocityBehaviorBase.rkt")
(provide (all-defined-out))

(define NoDragVelocityBehavior%
  (class VelocityBehaviorBase%
    (super-new)))
(define (NoDragVelocityBehavior.jclassValue) NoDragVelocityBehavior%)

(define NoDragVelocityBehavior.jcell_instance 'jnone)
(define (NoDragVelocityBehavior.jstatic_instance)
  (when (eq? NoDragVelocityBehavior.jcell_instance 'jnone) (set! NoDragVelocityBehavior.jcell_instance (NoDragVelocityBehavior.jnew_0)))
  NoDragVelocityBehavior.jcell_instance)
(define (NoDragVelocityBehavior.jsetstatic_instance value) (set! NoDragVelocityBehavior.jcell_instance value))

(define (NoDragVelocityBehavior.jnew_0)
  (define this (new NoDragVelocityBehavior% [jclass "NoDragVelocityBehavior"]))
  this)



