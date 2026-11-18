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
;; package org.allbinary.animation.image

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./ImageAnimation.rkt")
(lazy-require ["../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define ImageSegmentAnimation%
  (class ImageAnimation%
    (super-new)
    (field [f_startX 0])
    (field [f_startY 0])
    (field [f_drawWidth 0])
    (field [f_drawHeight 0])
    (field [f_circularIndexUtil JR.null])
    (field [f_sequenceArray JR.null])
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_circularIndexUtil this) jm_next_0))))
    (define/override (jm_previousFrame_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_circularIndexUtil this) jm_previous_0))))
    (define/override (jm_setFrame_1 _index)
    (let ()
      (let/ec jreturn
        (send (get-field f_circularIndexUtil this) jm_setIndex_1 _index))))
    (define/override (jm_getFrame_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_circularIndexUtil this) jm_getIndex_0)))))
    (define/override (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_circularIndexUtil this) jm_getSize_0)))))
    (define/override (jm_setSequence_1 _sequenceArray)
    (let ()
      (let/ec jreturn
        (set-field! f_sequenceArray this _sequenceArray))))
    (define/override (jm_getSequence_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_sequenceArray this)))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getStartX_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_startX this)))))
    (define/public (jm_setStartX_1 _startX)
    (let ()
      (let/ec jreturn
        (set-field! f_startX this _startX))))
    (define/public (jm_getStartY_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_startY this)))))
    (define/public (jm_setStartY_1 _startY)
    (let ()
      (let/ec jreturn
        (set-field! f_startY this _startY))))
    (define/public (jm_getDrawWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_drawWidth this)))))
    (define/public (jm_setDrawWidth_1 _drawWidth)
    (let ()
      (let/ec jreturn
        (set-field! f_drawWidth this _drawWidth))))
    (define/public (jm_getDrawHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_drawHeight this)))))
    (define/public (jm_setDrawHeight_1 _drawHeight)
    (let ()
      (let/ec jreturn
        (set-field! f_drawHeight this _drawHeight))))))
(define (ImageSegmentAnimation.jclassValue) ImageSegmentAnimation%)

(define (ImageSegmentAnimation.jnew_3 _image _sequenceArray _animationBehavior)
  (define this (new ImageSegmentAnimation% [jclass "ImageSegmentAnimation"]))
    
    
    
    
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_startX this 0)
        (set-field! f_startY this 0)
        (set-field! f_drawWidth this (JR.className (send this jm_getImage_0)))
        (set-field! f_drawHeight this (JR.className (send this jm_getImage_0)))
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 (get-field f_drawHeight this)))
        (set-field! f_sequenceArray this _sequenceArray)))
  this)



