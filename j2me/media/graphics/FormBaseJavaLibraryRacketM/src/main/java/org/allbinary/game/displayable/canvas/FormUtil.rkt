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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(provide (all-defined-out))

(define FormUtil%
  (class JObject%
    (super-new)
    (define/public (jm_createFormRectangle_0)
    (let ([_displayInfo JR.null][_pointFactory JR.null][_rectangle JR.null])
      (let/ec jreturn
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (set! _pointFactory (PointFactory.jm_getInstance_0))
        (set! _rectangle (Rectangle.jnew_3 (send _pointFactory jm_createXY_2 30 10) (JR.i32 (- (send _displayInfo jm_getLastWidth_0) 30)) (JR.i32 (- (send _displayInfo jm_getLastHeight_0) 35))))
        (jreturn _rectangle))))))
(define (FormUtil.jclassValue) FormUtil%)

(define FormUtil.jcell_instance 'jnone)
(define (FormUtil.jstatic_instance)
  (when (eq? FormUtil.jcell_instance 'jnone) (set! FormUtil.jcell_instance (FormUtil.jnew_0)))
  FormUtil.jcell_instance)
(define (FormUtil.jsetstatic_instance value) (set! FormUtil.jcell_instance value))

(define (FormUtil.jnew_0)
  (define this (new FormUtil% [jclass "FormUtil"]))
  this)

(define (FormUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FormUtil.jstatic_instance)))))



