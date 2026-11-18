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
;; package org.allbinary.canvas

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Integer.rkt")
(lazy-require ["../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define GameGlobalsFactory%
  (class JObject%
    (super-new)
    (field [f_newCanvas #f])
    (field [f_newDisplaybleTime 0])
    (field [f_point JR.null])))
(define (GameGlobalsFactory.jclassValue) GameGlobalsFactory%)

(define GameGlobalsFactory.jcell_instance 'jnone)
(define (GameGlobalsFactory.jstatic_instance)
  (when (eq? GameGlobalsFactory.jcell_instance 'jnone) (set! GameGlobalsFactory.jcell_instance (GameGlobalsFactory.jnew_0)))
  GameGlobalsFactory.jcell_instance)
(define (GameGlobalsFactory.jsetstatic_instance value) (set! GameGlobalsFactory.jcell_instance value))

(define (GameGlobalsFactory.jnew_0)
  (define this (new GameGlobalsFactory% [jclass "GameGlobalsFactory"]))
    (set-field! f_newCanvas this #t)
    (set-field! f_newDisplaybleTime this (Integer.jstatic_MIN_VALUE))
    (set-field! f_point this (get-field f_ZERO_ZERO (PointFactory.jm_getInstance_0)))
  this)

(define (GameGlobalsFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameGlobalsFactory.jstatic_instance)))))



