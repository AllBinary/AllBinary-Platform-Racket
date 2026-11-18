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
;; package org.allbinary.animation.caption

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/Animation.rkt")
(provide (all-defined-out))

(define CaptionAnimationHelperBase%
  (class Animation%
    (super-new)
    (define/public (jm_isShowing_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_tick_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_update_2 _message _basicColor)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn (void))))))
(define (CaptionAnimationHelperBase.jclassValue) CaptionAnimationHelperBase%)

(define CaptionAnimationHelperBase.jcell_INSTANCE 'jnone)
(define (CaptionAnimationHelperBase.jstatic_INSTANCE)
  (when (eq? CaptionAnimationHelperBase.jcell_INSTANCE 'jnone) (set! CaptionAnimationHelperBase.jcell_INSTANCE (CaptionAnimationHelperBase.jnew_0)))
  CaptionAnimationHelperBase.jcell_INSTANCE)
(define (CaptionAnimationHelperBase.jsetstatic_INSTANCE value) (set! CaptionAnimationHelperBase.jcell_INSTANCE value))

(define (CaptionAnimationHelperBase.jnew_0)
  (define this (new CaptionAnimationHelperBase% [jclass "CaptionAnimationHelperBase"]))
  this)



