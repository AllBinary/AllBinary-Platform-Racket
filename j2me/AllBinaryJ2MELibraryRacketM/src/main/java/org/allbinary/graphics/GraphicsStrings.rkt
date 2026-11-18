#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define GraphicsStrings%
  (class JObject%
    (super-new)
    (field [f_ANIMATION JR.null])
    (field [f_ANGLE JR.null])
    (field [f_MOVEMENT_ANGLE JR.null])
    (field [f_ROTATION JR.null])
    (field [f_OPACITY JR.null])
    (field [f_HTML JR.null])
    (field [f_WIDTH JR.null])
    (field [f_HEIGHT JR.null])))
(define (GraphicsStrings.jclassValue) GraphicsStrings%)

(define GraphicsStrings.jcell_instance 'jnone)
(define (GraphicsStrings.jstatic_instance)
  (when (eq? GraphicsStrings.jcell_instance 'jnone) (set! GraphicsStrings.jcell_instance (GraphicsStrings.jnew_0)))
  GraphicsStrings.jcell_instance)
(define (GraphicsStrings.jsetstatic_instance value) (set! GraphicsStrings.jcell_instance value))

(define (GraphicsStrings.jnew_0)
  (define this (new GraphicsStrings% [jclass "GraphicsStrings"]))
    (set-field! f_ANIMATION this "animation")
    (set-field! f_ANGLE this "angle")
    (set-field! f_MOVEMENT_ANGLE this "movement_angle")
    (set-field! f_ROTATION this "rotation")
    (set-field! f_OPACITY this "opacity")
    (set-field! f_HTML this "HTML")
    (set-field! f_WIDTH this "width")
    (set-field! f_HEIGHT this "height")
  this)

(define (GraphicsStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GraphicsStrings.jstatic_instance)))))



