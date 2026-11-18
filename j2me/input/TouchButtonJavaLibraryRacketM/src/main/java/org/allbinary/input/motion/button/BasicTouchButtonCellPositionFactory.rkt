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
(lazy-require ["../../../../../org/allbinary/graphics/CellPositionFactory.rkt" (CellPositionFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./TouchButtonLocationHelper.rkt" (TouchButtonLocationHelper.jnew_0)])
(provide (all-defined-out))

(define BasicTouchButtonCellPositionFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_TOP_RIGHT JR.null])
    (field [f_TOP_LEFT JR.null])
    (field [f_SECOND_FROM_TOP_LEFT JR.null])
    (field [f_SECOND_FROM_TOP_RIGHT JR.null])
    (field [f_TOP_SECOND_FROM_LEFT JR.null])
    (field [f_TOP_SECOND_FROM_RIGHT JR.null])
    (field [f_BOTTOM_RIGHT JR.null])
    (field [f_BOTTOM_SECOND_FROM_RIGHT JR.null])
    (field [f_SECOND_FROM_BOTTOM_RIGHT JR.null])
    (field [f_THIRD_FROM_BOTTOM_RIGHT JR.null])
    (field [f_FOURTH_FROM_BOTTOM_RIGHT JR.null])
    (field [f_SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT JR.null])
    (field [f_SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT JR.null])
    (field [f_SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT JR.null])
    (field [f_BOTTOM_THIRD_FROM_RIGHT JR.null])
    (field [f_BOTTOM_FOURTH_FROM_RIGHT JR.null])
    (field [f_BOTTOM_SECOND_FROM_LEFT JR.null])
    (field [f_SECOND_FROM_BOTTOM_LEFT JR.null])
    (field [f_THIRD_FROM_BOTTOM_LEFT JR.null])
    (field [f_BOTTOM_LEFT JR.null])
    (field [f_SECOND_FROM_BOTTOM_SECOND_FROM_LEFT JR.null])))
(define (BasicTouchButtonCellPositionFactory.jclassValue) BasicTouchButtonCellPositionFactory%)

(define (BasicTouchButtonCellPositionFactory.jnew_0)
  (define this (new BasicTouchButtonCellPositionFactory% [jclass "BasicTouchButtonCellPositionFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    (let ([_touchButtonLocationHelper JR.null][_cellPositionFactory JR.null])
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)))
        (set! _touchButtonLocationHelper (TouchButtonLocationHelper.jnew_0))
        (set! _cellPositionFactory (CellPositionFactory.jm_getInstance_0))
        (send _cellPositionFactory jm_init_2 (send _touchButtonLocationHelper jm_getTotalColumns_0) (send _touchButtonLocationHelper jm_getTotalRows_0))
        (set-field! f_TOP_LEFT this (send _cellPositionFactory jm_getInstanceColRow_2 0 0))
        (set-field! f_TOP_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 1)) 0))
        (set-field! f_BOTTOM_LEFT this (send _cellPositionFactory jm_getInstanceColRow_2 0 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 1))))
        (set-field! f_BOTTOM_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 1)) (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 1))))
        (set-field! f_BOTTOM_SECOND_FROM_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 2)) (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 1))))
        (set-field! f_SECOND_FROM_BOTTOM_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 1)) (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 2))))
        (set-field! f_SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 2)) (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 2))))
        (set-field! f_BOTTOM_SECOND_FROM_LEFT this (send _cellPositionFactory jm_getInstanceColRow_2 1 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 1))))
        (set-field! f_SECOND_FROM_BOTTOM_LEFT this (send _cellPositionFactory jm_getInstanceColRow_2 0 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 2))))
        (set-field! f_SECOND_FROM_BOTTOM_SECOND_FROM_LEFT this (send _cellPositionFactory jm_getInstanceColRow_2 1 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 2))))
        (if (> (send _touchButtonLocationHelper jm_getTotalRows_0) 2)
            (begin
            (set-field! f_SECOND_FROM_TOP_LEFT this (send _cellPositionFactory jm_getInstanceColRow_2 0 1))
            (set-field! f_SECOND_FROM_TOP_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 1)) 1)))
            (begin
            (set-field! f_SECOND_FROM_TOP_LEFT this (get-field f_NONE _cellPositionFactory))
            (set-field! f_SECOND_FROM_TOP_RIGHT this (get-field f_NONE _cellPositionFactory))))
        (if (>= (send _touchButtonLocationHelper jm_getTotalRows_0) 4)
            (begin
            (set-field! f_THIRD_FROM_BOTTOM_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 1)) (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 3))))
            (set-field! f_FOURTH_FROM_BOTTOM_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 1)) (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 4))))
            (set-field! f_THIRD_FROM_BOTTOM_LEFT this (send _cellPositionFactory jm_getInstanceColRow_2 0 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 3)))))
            (begin
            (set-field! f_THIRD_FROM_BOTTOM_RIGHT this (get-field f_NONE _cellPositionFactory))
            (set-field! f_FOURTH_FROM_BOTTOM_RIGHT this (get-field f_NONE _cellPositionFactory))
            (set-field! f_THIRD_FROM_BOTTOM_LEFT this (get-field f_NONE _cellPositionFactory))))
        (if (>= (send _touchButtonLocationHelper jm_getTotalColumns_0) 4)
            (begin
            (set-field! f_SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 3)) (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 2))))
            (set-field! f_SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 4)) (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 2))))
            (set-field! f_BOTTOM_THIRD_FROM_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 3)) (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 1))))
            (set-field! f_BOTTOM_FOURTH_FROM_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 4)) (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalRows_0) 1))))
            (set-field! f_TOP_SECOND_FROM_LEFT this (send _cellPositionFactory jm_getInstanceColRow_2 1 0))
            (set-field! f_TOP_SECOND_FROM_RIGHT this (send _cellPositionFactory jm_getInstanceColRow_2 (JR.i32 (- (send _touchButtonLocationHelper jm_getTotalColumns_0) 2)) 0)))
            (begin
            (set-field! f_SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT this (get-field f_NONE _cellPositionFactory))
            (set-field! f_SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT this (get-field f_NONE _cellPositionFactory))
            (set-field! f_BOTTOM_THIRD_FROM_RIGHT this (get-field f_NONE _cellPositionFactory))
            (set-field! f_BOTTOM_FOURTH_FROM_RIGHT this (get-field f_NONE _cellPositionFactory))
            (set-field! f_TOP_SECOND_FROM_LEFT this (get-field f_NONE _cellPositionFactory))
            (set-field! f_TOP_SECOND_FROM_RIGHT this (get-field f_NONE _cellPositionFactory))))))
  this)



