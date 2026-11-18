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
;; package org.allbinary.graphics.displayable

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(provide (all-defined-out))

(define GameTickDisplayInfoSingleton%
  (class JObject%
    (super-new)
    (field [f_displayInfoSingleton JR.null])
    (field [f_lastWidth 0])
    (field [f_lastHeight 0])
    (field [f_lastHalfWidth 0])
    (field [f_lastHalfHeight 0])
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn
        (set-field! f_lastWidth this (send (get-field f_displayInfoSingleton this) jm_getLastWidth_0))
        (set-field! f_lastHeight this (send (get-field f_displayInfoSingleton this) jm_getLastHeight_0))
        (set-field! f_lastHalfWidth this (send (get-field f_displayInfoSingleton this) jm_getLastHalfWidth_0))
        (set-field! f_lastHalfHeight this (send (get-field f_displayInfoSingleton this) jm_getLastHalfHeight_0)))))
    (define/public (jm_getLastWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_lastWidth this)))))
    (define/public (jm_getLastHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_lastHeight this)))))
    (define/public (jm_getLastHalfWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_lastHalfWidth this)))))
    (define/public (jm_getLastHalfHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_lastHalfHeight this)))))))
(define (GameTickDisplayInfoSingleton.jclassValue) GameTickDisplayInfoSingleton%)

(define GameTickDisplayInfoSingleton.jcell_instance 'jnone)
(define (GameTickDisplayInfoSingleton.jstatic_instance)
  (when (eq? GameTickDisplayInfoSingleton.jcell_instance 'jnone) (set! GameTickDisplayInfoSingleton.jcell_instance (GameTickDisplayInfoSingleton.jnew_0)))
  GameTickDisplayInfoSingleton.jcell_instance)
(define (GameTickDisplayInfoSingleton.jsetstatic_instance value) (set! GameTickDisplayInfoSingleton.jcell_instance value))

(define (GameTickDisplayInfoSingleton.jnew_0)
  (define this (new GameTickDisplayInfoSingleton% [jclass "GameTickDisplayInfoSingleton"]))
    (set-field! f_displayInfoSingleton this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_lastWidth this (send (get-field f_displayInfoSingleton this) jm_getLastWidth_0))
    (set-field! f_lastHeight this (send (get-field f_displayInfoSingleton this) jm_getLastHeight_0))
    (set-field! f_lastHalfWidth this (send (get-field f_displayInfoSingleton this) jm_getLastHalfWidth_0))
    (set-field! f_lastHalfHeight this (send (get-field f_displayInfoSingleton this) jm_getLastHalfHeight_0))
  this)

(define (GameTickDisplayInfoSingleton.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameTickDisplayInfoSingleton.jstatic_instance)))))



