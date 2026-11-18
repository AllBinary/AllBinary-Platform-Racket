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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/math/PositionStrings.rkt" (PositionStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define GPoint%
  (class JObject%
    (super-new)
    (field [f_x 0])
    (field [f_y 0])
    (field [f_z 0])
    (define/public (jm_getX_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_x this)))))
    (define/public (jm_getY_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_y this)))))
    (define/public (jm_getZ_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_z this)))))
    (define/public (jm_getRawX_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_x this)))))
    (define/public (jm_getRawY_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_y this)))))
    (define/public (jm_getRawZ_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_z this)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (GPoint.jm_toStringStatic_3 (send this jm_getX_0) (send this jm_getY_0) (send this jm_getZ_0))))))))
(define (GPoint.jclassValue) GPoint%)

(define GPoint.jcell_POINT_LABEL 'jnone)
(define (GPoint.jstatic_POINT_LABEL)
  (when (eq? GPoint.jcell_POINT_LABEL 'jnone) (set! GPoint.jcell_POINT_LABEL "Point: "))
  GPoint.jcell_POINT_LABEL)
(define (GPoint.jsetstatic_POINT_LABEL value) (set! GPoint.jcell_POINT_LABEL value))

(define (GPoint.jnew_3 _x _y _z)
  (define this (new GPoint% [jclass "GPoint"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_x this _x)
        (set-field! f_y this _y)
        (set-field! f_z this _z)))
  this)

(define (GPoint.jm_getInstance_1 _point)
    (let ()
      (let/ec jreturn
        (jreturn (GPoint.jnew_3 (send _point jm_getX_0) (send _point jm_getY_0) (send _point jm_getZ_0))))))

(define (GPoint.jm_toStringStatic_3 _x _y _z)
    (let ([_stringBuffer JR.null][_positionStrings JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _positionStrings (PositionStrings.jm_getInstance_0))
        (send _stringBuffer jm_append_1 (GPoint.jstatic_POINT_LABEL))
        (send _stringBuffer jm_append_1 (get-field f_X_LABEL _positionStrings))
        (send _stringBuffer jm_appendint_1 _x)
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (get-field f_Y_LABEL _positionStrings))
        (send _stringBuffer jm_appendint_1 _y)
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (get-field f_Z_LABEL _positionStrings))
        (send _stringBuffer jm_appendint_1 _z)
        (jreturn (send _stringBuffer jm_toString_0)))))



