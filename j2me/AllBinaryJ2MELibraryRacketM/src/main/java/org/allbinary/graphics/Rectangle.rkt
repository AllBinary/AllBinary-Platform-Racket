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
(lazy-require ["../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define Rectangle%
  (class JObject%
    (super-new)
    (field [f_point JR.null])
    (field [f_width 0])
    (field [f_height 0])
    (define/public (jm_getPoint_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_point this)))))
    (define/public (jm_setPoint_1 _point)
    (let ()
      (let/ec jreturn
        (set-field! f_point this _point))))
    (define/public (jm_getMaxX_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ (send (get-field f_point this) jm_getX_0) (get-field f_width this)))))))
    (define/public (jm_getMaxY_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ (send (get-field f_point this) jm_getY_0) (get-field f_height this)))))))
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
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (send (send this jm_getPoint_0) jm_toString_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (get-field f_WIDTH_LABEL (CommonLabels.jm_getInstance_0)))
        (send _stringBuffer jm_appendint_1 (send this jm_getWidth_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (get-field f_HEIGHT_LABEL (CommonLabels.jm_getInstance_0)))
        (send _stringBuffer jm_appendint_1 (send this jm_getHeight_0))
        (send _stringBuffer jm_append_1 " MaxX: ")
        (send _stringBuffer jm_appendint_1 (send this jm_getMaxX_0))
        (send _stringBuffer jm_append_1 " MaxY: ")
        (send _stringBuffer jm_appendint_1 (send this jm_getMaxY_0))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (Rectangle.jclassValue) Rectangle%)

(define (Rectangle.jnew_3 _point _width _height)
  (define this (new Rectangle% [jclass "Rectangle"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_point this _point)
        (set-field! f_width this _width)
        (set-field! f_height this _height)))
  this)



