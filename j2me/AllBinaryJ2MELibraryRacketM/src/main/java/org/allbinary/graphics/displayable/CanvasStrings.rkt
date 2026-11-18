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
(lazy-require ["../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define CanvasStrings%
  (class JObject%
    (super-new)
    (field [f_CONSTRUCTOR JR.null])
    (field [f_PAUSE JR.null])
    (field [f_UN_PAUSE JR.null])
    (field [f_SET_FULL_SCREEN_MODE JR.null])
    (field [f_SIZE_CHANGED JR.null])
    (field [f_SCALED_IMAGES JR.null])
    (field [f_PAINT JR.null])
    (field [f_ON_DISPLAY_CHANGE_EVENT JR.null])
    (field [f_UPDATE_MEASUREMENT JR.null])
    (field [f_FD_WIDTH JR.null])
    (field [f_FD_HEIGHT JR.null])
    (field [f_EMPTY_CHILD_NAME_LIST JR.null])
    (field [f_ABOUT JR.null])
    (field [f_OPTIONS JR.null])
    (field [f_FONT_ATLAS JR.null])
    (field [f_OBJ_MODEL JR.null])
    (field [f_MD2_MODEL JR.null])
    (field [f__PNG JR.null])))
(define (CanvasStrings.jclassValue) CanvasStrings%)

(define CanvasStrings.jcell_instance 'jnone)
(define (CanvasStrings.jstatic_instance)
  (when (eq? CanvasStrings.jcell_instance 'jnone) (set! CanvasStrings.jcell_instance (CanvasStrings.jnew_0)))
  CanvasStrings.jcell_instance)
(define (CanvasStrings.jsetstatic_instance value) (set! CanvasStrings.jcell_instance value))

(define (CanvasStrings.jnew_0)
  (define this (new CanvasStrings% [jclass "CanvasStrings"]))
    (set-field! f_CONSTRUCTOR this "MyCanvas::MyCanvas")
    (set-field! f_PAUSE this "MyCanvas::pause")
    (set-field! f_UN_PAUSE this "MyCanvas::unPause")
    (set-field! f_SET_FULL_SCREEN_MODE this "setFullScreenMode")
    (set-field! f_SIZE_CHANGED this "sizeChanged")
    (set-field! f_SCALED_IMAGES this "scaledImages")
    (set-field! f_PAINT this "paint")
    (set-field! f_ON_DISPLAY_CHANGE_EVENT this "onDisplayChangeEvent")
    (set-field! f_UPDATE_MEASUREMENT this "updateMeasurement")
    (set-field! f_FD_WIDTH this " font/display width: ")
    (set-field! f_FD_HEIGHT this " font/display height: ")
    (set-field! f_EMPTY_CHILD_NAME_LIST this (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0))
    (set-field! f_ABOUT this "About")
    (set-field! f_OPTIONS this "Options")
    (set-field! f_FONT_ATLAS this "/font.png")
    (set-field! f_OBJ_MODEL this "_obj")
    (set-field! f_MD2_MODEL this "_md2")
    (set-field! f__PNG this ".png")
  this)

(define (CanvasStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CanvasStrings.jstatic_instance)))))



