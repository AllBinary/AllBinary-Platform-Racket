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
;; package org.allbinary.game.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/system/os/OperatingSystemFactory.rkt" (OperatingSystemFactory.jm_getInstance_0)])
(lazy-require ["./ColorFillPaintable.rkt" (ColorFillPaintable.jnew_1)])
(lazy-require ["./OverScanColorFillPaintable.rkt" (OverScanColorFillPaintable.jnew_1)])
(provide (all-defined-out))

(define ColorFillPaintableFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_2 _basicColor _forThreedCanvas)
    (let ([_operatingSystem JR.null])
      (let/ec jreturn
        (set! _operatingSystem (send (OperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0))
        (if (send _operatingSystem jm_isOverScan_0)
            (begin
            (jreturn (OverScanColorFillPaintable.jnew_1 _basicColor)))
            (begin
            (jreturn (ColorFillPaintable.jnew_1 _basicColor)))))))))
(define (ColorFillPaintableFactory.jclassValue) ColorFillPaintableFactory%)

(define ColorFillPaintableFactory.jcell_instance 'jnone)
(define (ColorFillPaintableFactory.jstatic_instance)
  (when (eq? ColorFillPaintableFactory.jcell_instance 'jnone) (set! ColorFillPaintableFactory.jcell_instance (ColorFillPaintableFactory.jnew_0)))
  ColorFillPaintableFactory.jcell_instance)
(define (ColorFillPaintableFactory.jsetstatic_instance value) (set! ColorFillPaintableFactory.jcell_instance value))

(define (ColorFillPaintableFactory.jnew_0)
  (define this (new ColorFillPaintableFactory% [jclass "ColorFillPaintableFactory"]))
  this)

(define (ColorFillPaintableFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ColorFillPaintableFactory.jstatic_instance)))))



