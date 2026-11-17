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
;; package org.allbinary.graphics.color

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define SmallBasicColorCacheFactory%
  (class JObject%
    (super-new)
    (field [f_SIZE 0])
    (field [f_INDEX_TO_COLOR JR.null])
    (field [f_BASIC_COLOR_ARRAY JR.null])
    (field [f_colorIndex 0])
    (define/public (jm_add_1 _basicDefaultColor)
    (let ()
      (let/ec jreturn
        (vector-set! (get-field f_BASIC_COLOR_ARRAY this) (get-field f_colorIndex this) _basicDefaultColor)
        (vector-set! (get-field f_INDEX_TO_COLOR this) (get-field f_colorIndex this) (send _basicDefaultColor jm_intValue_0))
        (set-field! f_colorIndex this (JR.i32 (+ (get-field f_colorIndex this) 1))))))
    (define/public (jm_getAndOrCreate_1 _colorAsInt)
    (let ([_basicColor JR.null][_index JR.null][_ALPHA_MASK JR.null])
      (let/ec jreturn
        (set! _basicColor JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (get-field f_SIZE this))
                (let/ec jcontinue
            (when (= (vector-ref (get-field f_INDEX_TO_COLOR this) _index) _colorAsInt)
                (begin
                (jreturn (vector-ref (get-field f_BASIC_COLOR_ARRAY this) _index)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _ALPHA_MASK #xFF000000)
        (set! _basicColor (send (BasicColorFactory.jm_getInstance_0) jm_createInstanceAN_3 (bitwise-and _colorAsInt _ALPHA_MASK) (bitwise-and _colorAsInt #x00FFFFFF) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))
        (send this jm_add_1 _basicColor)
        (jreturn _basicColor))))))

(define SmallBasicColorCacheFactory.jcell_instance 'jnone)
(define (SmallBasicColorCacheFactory.jstatic_instance)
  (when (eq? SmallBasicColorCacheFactory.jcell_instance 'jnone) (set! SmallBasicColorCacheFactory.jcell_instance (SmallBasicColorCacheFactory.jnew_0)))
  SmallBasicColorCacheFactory.jcell_instance)

(define (SmallBasicColorCacheFactory.jnew_0)
  (define this (new SmallBasicColorCacheFactory% [jclass "SmallBasicColorCacheFactory"]))
    (set-field! f_SIZE this 255)
    (set-field! f_INDEX_TO_COLOR this (JR.newArray 0 (get-field f_SIZE this)))
    (set-field! f_BASIC_COLOR_ARRAY this (JR.newArray JR.null (get-field f_SIZE this)))
    (set-field! f_colorIndex this 0)
    (let ()
      (let/ec jreturn (void)))
  this)

(define (SmallBasicColorCacheFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SmallBasicColorCacheFactory.jstatic_instance)))))



