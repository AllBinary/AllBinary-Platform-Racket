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
;; package org.allbinary.graphics.color

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(provide (all-defined-out))

(define ColorChangeEventHandler%
  (class BasicEventHandler%
    (super-new)))

(define ColorChangeEventHandler.jcell_eventHandler 'jnone)
(define (ColorChangeEventHandler.jstatic_eventHandler)
  (when (eq? ColorChangeEventHandler.jcell_eventHandler 'jnone) (set! ColorChangeEventHandler.jcell_eventHandler (ColorChangeEventHandler.jnew_0)))
  ColorChangeEventHandler.jcell_eventHandler)

(define (ColorChangeEventHandler.jnew_0)
  (define this (new ColorChangeEventHandler% [jclass "ColorChangeEventHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ColorChangeEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ColorChangeEventHandler.jstatic_eventHandler)))))



