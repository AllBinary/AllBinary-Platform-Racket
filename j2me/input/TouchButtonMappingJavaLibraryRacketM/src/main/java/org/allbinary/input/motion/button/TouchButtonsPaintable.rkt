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
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/graphics/paint/Paintable.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorSetUtil.rkt" (BasicColorSetUtil.jm_getInstance_0)])
(lazy-require ["./TouchButtonFactory.rkt" (TouchButtonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchButtonsPaintable%
  (class Paintable%
    (super-new)
    (field [f_foregroundBasicColor JR.null])
    (field [f_foregroundColor 0])
    (field [f_basicSetColorUtil JR.null])
    (field [f_touchButtonFactory JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ([_list JR.null][_touchButton JR.null][_index JR.null])
      (let/ec jreturn
        (set! _list (send (get-field f_touchButtonFactory this) jm_getList_0))
        (send (get-field f_basicSetColorUtil this) jm_setBasicColorP3_3 _graphics (get-field f_foregroundBasicColor this) (get-field f_foregroundColor this))
        (set! _touchButton JR.null)
        (begin
            (set! _index (send _list jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _touchButton (vector-ref (get-field f_objectArray _list) _index))
            (send _touchButton jm_paint_1 _graphics)) (jloop)))))
        (begin
            (set! _index (send _list jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _touchButton (vector-ref (get-field f_objectArray _list) _index))
            (send _touchButton jm_paintHint_1 _graphics)) (jloop))))))))))
(define (TouchButtonsPaintable.jclassValue) TouchButtonsPaintable%)

(define (TouchButtonsPaintable.jnew_1 _basicColor)
  (define this (new TouchButtonsPaintable% [jclass "TouchButtonsPaintable"]))
    
    
    (set-field! f_basicSetColorUtil this (BasicColorSetUtil.jm_getInstance_0))
    (set-field! f_touchButtonFactory this (TouchButtonFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_foregroundBasicColor this _basicColor)
        (set-field! f_foregroundColor this (send _basicColor jm_intValue_0))))
  this)



