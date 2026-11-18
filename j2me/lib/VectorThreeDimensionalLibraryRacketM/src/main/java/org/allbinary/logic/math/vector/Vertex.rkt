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
;; package org.allbinary.logic.math.vector

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/math/BasicDecimal.rkt" (BasicDecimal.jnew_1)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/math/PositionStrings.rkt" (PositionStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define Vertex%
  (class JObject%
    (super-new)
    (field [f_x JR.null])
    (field [f_y JR.null])
    (field [f_z JR.null])
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null][_positionStrings JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _positionStrings (PositionStrings.jm_getInstance_0))
        (send _stringBuffer jm_append_1 (get-field f_X_LABEL _positionStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_x this) jm_toString_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (get-field f_Y_LABEL _positionStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_y this) jm_toString_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (get-field f_Z_LABEL _positionStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_z this) jm_toString_0))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (Vertex.jclassValue) Vertex%)

(define (Vertex.jnew_0)
  (define this (new Vertex% [jclass "Vertex"]))
    (set-field! f_x this (BasicDecimal.jnew_1 0))
    (set-field! f_y this (BasicDecimal.jnew_1 0))
    (set-field! f_z this (BasicDecimal.jnew_1 0))
    (let ()
      (let/ec jreturn (void)))
  this)



