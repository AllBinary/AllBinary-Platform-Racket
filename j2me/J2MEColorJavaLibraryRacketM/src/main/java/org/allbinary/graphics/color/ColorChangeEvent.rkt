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
  "../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(lazy-require ["./BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define ColorChangeEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_basicColor JR.null])
    (define/public (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_basicColor this _basicColor))))
    (define/public (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicColor this)))))))

(define (ColorChangeEvent.jnew_1 _anyType)
  (define this (new ColorChangeEvent% [jclass "ColorChangeEvent"]))
    (set-field! f_basicColor this (get-field f_WHITE (BasicColorFactory.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (void)))
  this)



