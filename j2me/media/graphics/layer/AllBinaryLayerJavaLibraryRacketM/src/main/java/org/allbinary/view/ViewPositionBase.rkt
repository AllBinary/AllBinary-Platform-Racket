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
;; package org.allbinary.view

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/graphics/GPoint.rkt")
(provide (all-defined-out))

(define ViewPositionBase%
  (class GPoint%
    (super-new)
    (define/public (jm_getX2_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getX_0)))))
    (define/public (jm_getY2_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getY_0)))))
    (define/public (jm_getZ2_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getZ_0)))))
    (define/public (jm_setAllbinaryLayer_1 _allbinaryLayer)
    (let ()
      (let/ec jreturn (void))))))
(define (ViewPositionBase.jclassValue) ViewPositionBase%)

(define ViewPositionBase.jcell_NULL_VIEW_POSITION 'jnone)
(define (ViewPositionBase.jstatic_NULL_VIEW_POSITION)
  (when (eq? ViewPositionBase.jcell_NULL_VIEW_POSITION 'jnone) (set! ViewPositionBase.jcell_NULL_VIEW_POSITION (ViewPositionBase.jnew_3 0 0 0)))
  ViewPositionBase.jcell_NULL_VIEW_POSITION)
(define (ViewPositionBase.jsetstatic_NULL_VIEW_POSITION value) (set! ViewPositionBase.jcell_NULL_VIEW_POSITION value))

(define (ViewPositionBase.jnew_3 _x _y _z)
  (define this (new ViewPositionBase% [jclass "ViewPositionBase"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



