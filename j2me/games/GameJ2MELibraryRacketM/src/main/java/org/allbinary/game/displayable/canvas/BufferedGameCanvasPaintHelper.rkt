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
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/graphics/paint/ProcessPaintable.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/NullCanvas.rkt" (NullCanvas.jstatic_NULL_CANVAS)])
(lazy-require ["../../../../../javax/microedition/lcdui/NullImage.rkt" (NullImage.jstatic_NULL_IMAGE)])
(lazy-require ["../../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1 CircularIndexUtil.jm_createInstanceAt_2)])
(provide (all-defined-out))

(define BufferedGameCanvasPaintHelper%
  (class ProcessPaintable%
    (super-new)
    (field [f_gameCanvas JR.null])
    (field [f_offScreenImage JR.null])
    (field [f_previousImage JR.null])
    (field [f_circularIndexUtil JR.null])
    (field [f_drawCircularIndexUtil JR.null])
    (field [f_anchor 0])
    (define/override (jm_process_0)
    (let ([_myCanvas JR.null])
      (let/ec jreturn
        (set! _myCanvas (get-field f_gameCanvas this))
        (send _myCanvas jm_draw_1 (JR.className (vector-ref (get-field f_offScreenImage this) (send (get-field f_circularIndexUtil this) jm_getIndex_0))))
        (send (get-field f_circularIndexUtil this) jm_next_0)
        (send (get-field f_drawCircularIndexUtil this) jm_next_0))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (set-field! f_previousImage this (vector-ref (get-field f_offScreenImage this) (send (get-field f_drawCircularIndexUtil this) jm_getIndex_0)))
        (send _graphics jm_drawImage_4 (get-field f_previousImage this) 0 0 (get-field f_anchor this)))))))
(define (BufferedGameCanvasPaintHelper.jclassValue) BufferedGameCanvasPaintHelper%)

(define BufferedGameCanvasPaintHelper.jcell_MAX_IMAGES 'jnone)
(define (BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES)
  (when (eq? BufferedGameCanvasPaintHelper.jcell_MAX_IMAGES 'jnone) (set! BufferedGameCanvasPaintHelper.jcell_MAX_IMAGES 4))
  BufferedGameCanvasPaintHelper.jcell_MAX_IMAGES)
(define (BufferedGameCanvasPaintHelper.jsetstatic_MAX_IMAGES value) (set! BufferedGameCanvasPaintHelper.jcell_MAX_IMAGES value))

(define (BufferedGameCanvasPaintHelper.jnew_1 _gameCanvas)
  (define this (new BufferedGameCanvasPaintHelper% [jclass "BufferedGameCanvasPaintHelper"]))
    (set-field! f_gameCanvas this (NullCanvas.jstatic_NULL_CANVAS))
    (set-field! f_offScreenImage this (JR.newArray JR.null (BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES)))
    (set-field! f_previousImage this (NullImage.jstatic_NULL_IMAGE))
    (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 (BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES)))
    (set-field! f_drawCircularIndexUtil this (CircularIndexUtil.jm_createInstanceAt_2 (JR.i32 (- (BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES) 1)) (BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES)))
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" "No Longer Used"))))
  this)



