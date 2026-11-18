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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./GameRunnable.rkt")
(provide (all-defined-out))

(define NullWaitGameRunnable%
  (class GameRunnable%
    (super-new)))
(define (NullWaitGameRunnable.jclassValue) NullWaitGameRunnable%)

(define NullWaitGameRunnable.jcell_instance 'jnone)
(define (NullWaitGameRunnable.jstatic_instance)
  (when (eq? NullWaitGameRunnable.jcell_instance 'jnone) (set! NullWaitGameRunnable.jcell_instance (NullWaitGameRunnable.jnew_0)))
  NullWaitGameRunnable.jcell_instance)
(define (NullWaitGameRunnable.jsetstatic_instance value) (set! NullWaitGameRunnable.jcell_instance value))

(define (NullWaitGameRunnable.jnew_0)
  (define this (new NullWaitGameRunnable% [jclass "NullWaitGameRunnable"]))
  this)

(define (NullWaitGameRunnable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullWaitGameRunnable.jstatic_instance)))))



