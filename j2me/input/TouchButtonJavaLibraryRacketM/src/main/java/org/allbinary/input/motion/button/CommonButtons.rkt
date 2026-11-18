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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(provide (all-defined-out))

(define CommonButtons%
  (class JObject%
    (super-new)
    (field [f_STANDARD_BUTTON_SIZE 0])
    (field [f_NORMAL_BUTTON JR.null])
    (field [f_LARGE_BUTTON JR.null])))
(define (CommonButtons.jclassValue) CommonButtons%)

(define CommonButtons.jcell_instance 'jnone)
(define (CommonButtons.jstatic_instance)
  (when (eq? CommonButtons.jcell_instance 'jnone) (set! CommonButtons.jcell_instance (CommonButtons.jnew_0)))
  CommonButtons.jcell_instance)
(define (CommonButtons.jsetstatic_instance value) (set! CommonButtons.jcell_instance value))

(define (CommonButtons.jnew_0)
  (define this (new CommonButtons% [jclass "CommonButtons"]))
    
    
    
    (let ([_displayInfo JR.null][_commonButtonSize JR.null][_totalColumns JR.null][_totalRows JR.null][_max JR.null])
      (let/ec jreturn
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (set! _commonButtonSize 128)
        (let/ec jbreak (let jloop () (when (> _commonButtonSize 64)
                (let/ec jcontinue
            (set! _totalColumns (JR.idiv (send _displayInfo jm_getLastWidth_0) _commonButtonSize))
            (set! _totalRows (JR.idiv (send _displayInfo jm_getLastHeight_0) _commonButtonSize))
            (set! _max _totalColumns)
            (when (> _totalRows _max)
                (begin
                (set! _max _totalRows)))
            (when (> _max 9)
                (begin
                (jbreak (void))))
            (set! _commonButtonSize (arithmetic-shift _commonButtonSize (- (bitwise-and 1 31))))) (jloop))))
        (set-field! f_STANDARD_BUTTON_SIZE this _commonButtonSize)
        (set-field! f_NORMAL_BUTTON this (Rectangle.jnew_3 (get-field f_ZERO_ZERO (PointFactory.jm_getInstance_0)) (get-field f_STANDARD_BUTTON_SIZE this) (get-field f_STANDARD_BUTTON_SIZE this)))
        (set-field! f_LARGE_BUTTON this (Rectangle.jnew_3 (get-field f_ZERO_ZERO (PointFactory.jm_getInstance_0)) (JR.i32 (arithmetic-shift (get-field f_STANDARD_BUTTON_SIZE this) (bitwise-and 1 31))) (JR.i32 (arithmetic-shift (get-field f_STANDARD_BUTTON_SIZE this) (bitwise-and 1 31)))))))
  this)

(define (CommonButtons.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CommonButtons.jstatic_instance)))))



