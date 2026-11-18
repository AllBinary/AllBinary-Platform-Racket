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
;; package org.allbinary.direction

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonPhoneStrings.rkt" (CommonPhoneStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["./Direction.rkt" (Direction.jnew_4)])
(provide (all-defined-out))

(define DirectionFactory%
  (class JObject%
    (super-new)
    (field [f_NAME JR.null])
    (field [f_LEFT JR.null])
    (field [f_RIGHT JR.null])
    (field [f_DOWN JR.null])
    (field [f_UP JR.null])
    (field [f_UP_LEFT JR.null])
    (field [f_UP_RIGHT JR.null])
    (field [f_DOWN_LEFT JR.null])
    (field [f_DOWN_RIGHT JR.null])
    (field [f_NOT_BORDERED_WITH JR.null])
    (field [f_NO_DIRECTION JR.null])
    (field [f_TOP JR.null])
    (field [f_BOTTOM JR.null])
    (field [f_ALL_DIRECTION JR.null])))
(define (DirectionFactory.jclassValue) DirectionFactory%)

(define DirectionFactory.jcell_instance 'jnone)
(define (DirectionFactory.jstatic_instance)
  (when (eq? DirectionFactory.jcell_instance 'jnone) (set! DirectionFactory.jcell_instance (DirectionFactory.jnew_0)))
  DirectionFactory.jcell_instance)
(define (DirectionFactory.jsetstatic_instance value) (set! DirectionFactory.jcell_instance value))

(define (DirectionFactory.jnew_0)
  (define this (new DirectionFactory% [jclass "DirectionFactory"]))
    (set-field! f_NAME this "DIRECTION")
    (set-field! f_LEFT this (Direction.jnew_4 (get-field f_LEFT (CommonPhoneStrings.jm_getInstance_0)) "WEST" 0 1))
    (set-field! f_RIGHT this (Direction.jnew_4 (get-field f_RIGHT (CommonPhoneStrings.jm_getInstance_0)) "EAST" 1 0))
    (set-field! f_DOWN this (Direction.jnew_4 (get-field f_DOWN (CommonPhoneStrings.jm_getInstance_0)) "SOUTH" 2 0))
    (set-field! f_UP this (Direction.jnew_4 (get-field f_UP (CommonPhoneStrings.jm_getInstance_0)) "NORTH" 3 0))
    
    
    
    
    (set-field! f_NOT_BORDERED_WITH this (Direction.jnew_4 "NOT_BORDERED_WITH" "NOT_BORDERED_WITH" 8 0))
    (set-field! f_NO_DIRECTION this (Direction.jnew_4 "NO_DIRECTION" "NO_DIRECTION" 9 0))
    (set-field! f_TOP this (Direction.jnew_4 "TOP" "TOP" 10 0))
    (set-field! f_BOTTOM this (Direction.jnew_4 "BOTTOM" "BOTTOM" 11 0))
    (set-field! f_ALL_DIRECTION this (Direction.jnew_4 "ALL_DIRECTION" "ALL_DIRECTION" 12 0))
    (let ([_stringBuffer JR.null][_commonSeps JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set-field! f_UP_LEFT this (Direction.jnew_4 "UP LEFT" (send (send (send (send _stringBuffer jm_append_1 (send (get-field f_UP this) jm_getOtherName_0)) jm_append_1 (get-field f_SPACE _commonSeps)) jm_append_1 (send (get-field f_LEFT this) jm_getOtherName_0)) jm_toString_0) 4 0))
        (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
        (set-field! f_UP_RIGHT this (Direction.jnew_4 "UP RIGHT" (send (send (send (send _stringBuffer jm_append_1 (send (get-field f_UP this) jm_getOtherName_0)) jm_append_1 (get-field f_SPACE _commonSeps)) jm_append_1 (send (get-field f_RIGHT this) jm_getOtherName_0)) jm_toString_0) 5 0))
        (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
        (set-field! f_DOWN_LEFT this (Direction.jnew_4 "DOWN LEFT" (send (send (send (send _stringBuffer jm_append_1 (send (get-field f_DOWN this) jm_getOtherName_0)) jm_append_1 (get-field f_SPACE _commonSeps)) jm_append_1 (send (get-field f_LEFT this) jm_getOtherName_0)) jm_toString_0) 6 0))
        (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
        (set-field! f_DOWN_RIGHT this (Direction.jnew_4 "DOWN RIGHT" (send (send (send (send _stringBuffer jm_append_1 (send (get-field f_DOWN this) jm_getOtherName_0)) jm_append_1 (get-field f_SPACE _commonSeps)) jm_append_1 (send (get-field f_RIGHT this) jm_getOtherName_0)) jm_toString_0) 7 0))))
  this)

(define (DirectionFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DirectionFactory.jstatic_instance)))))



