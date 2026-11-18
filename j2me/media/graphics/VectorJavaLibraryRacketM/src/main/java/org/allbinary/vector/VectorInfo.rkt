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
;; package org.allbinary.vector

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define VectorInfo%
  (class JObject%
    (super-new)
    (field [f_width 0])
    (field [f_height 0])
    (field [f_points JR.null])
    (field [f_totalFrames 0])
    (define/public (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_width this)))))
    (define/public (jm_setWidth_1 _width)
    (let ()
      (let/ec jreturn
        (set-field! f_width this _width))))
    (define/public (jm_getHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_height this)))))
    (define/public (jm_setHeight_1 _height)
    (let ()
      (let/ec jreturn
        (set-field! f_height this _height))))
    (define/public (jm_getPoints_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_points this)))))
    (define/public (jm_setPoints_1 _points)
    (let ()
      (let/ec jreturn
        (set-field! f_points this _points))))
    (define/public (jm_getTotalFrames_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_totalFrames this)))))
    (define/public (jm_setTotalFrames_1 _totalFrames)
    (let ()
      (let/ec jreturn
        (set-field! f_totalFrames this _totalFrames))))))
(define (VectorInfo.jclassValue) VectorInfo%)

(define (VectorInfo.jnew_4 _width _height _points _totalFrames)
  (define this (new VectorInfo% [jclass "VectorInfo"]))
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_width this _width)
        (set-field! f_height this _height)
        (set-field! f_points this _points)
        (set-field! f_totalFrames this _totalFrames)))
  this)



