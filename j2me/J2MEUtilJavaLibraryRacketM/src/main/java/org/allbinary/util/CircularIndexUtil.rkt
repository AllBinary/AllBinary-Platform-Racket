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
;; package org.allbinary.util

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(provide (all-defined-out))

(define CircularIndexUtil%
  (class JObject%
    (super-new)
    (field [f_index 0])
    (field [f_lastIndex 0])
    (field [f_size 0])
    (define/public (jm_next_0)
    (let ()
      (let/ec jreturn
        (if (>= (get-field f_index this) (get-field f_lastIndex this))
            (begin
            (set-field! f_index this 0))
            (begin
            (set-field! f_index this (JR.i32 (+ (get-field f_index this) 1)))))
        (jreturn (get-field f_index this)))))
    (define/public (jm_previous_0)
    (let ()
      (let/ec jreturn
        (if (< (get-field f_index this) 1)
            (begin
            (set-field! f_index this (get-field f_lastIndex this)))
            (begin
            (set-field! f_index this (JR.i32 (- (get-field f_index this) 1)))))
        (jreturn (get-field f_index this)))))
    (define/public (jm_setIndex_1 _index)
    (let ()
      (let/ec jreturn
        (when (> _index (get-field f_lastIndex this))
            (begin
            (jreturn (void))))
        (set-field! f_index this _index))))
    (define/public (jm_getIndex_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_index this)))))
    (define/public (jm_setSize_1 _size)
    (let ()
      (let/ec jreturn
        (set-field! f_size this _size)
        (set-field! f_lastIndex this (JR.i32 (- _size 1)))
        (set-field! f_index this 0))))
    (define/public (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_size this)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_INDEX_LABEL (CommonLabels.jm_getInstance_0))) jm_appendint_1 (get-field f_index this)) jm_append_1 "lastIndex: ") jm_appendint_1 (get-field f_lastIndex this)) jm_append_1 "size: ") jm_appendint_1 (get-field f_size this)) jm_toString_0)))))))

(define CircularIndexUtil.jcell_NULL_CIRCULAR_INDEX_UTIL 'jnone)
(define (CircularIndexUtil.jstatic_NULL_CIRCULAR_INDEX_UTIL)
  (when (eq? CircularIndexUtil.jcell_NULL_CIRCULAR_INDEX_UTIL 'jnone) (set! CircularIndexUtil.jcell_NULL_CIRCULAR_INDEX_UTIL (CircularIndexUtil.jnew_2 0 0)))
  CircularIndexUtil.jcell_NULL_CIRCULAR_INDEX_UTIL)

(define (CircularIndexUtil.jnew_2 _index _size)
  (define this (new CircularIndexUtil% [jclass "CircularIndexUtil"]))
    (set-field! f_index this 0)
    (set-field! f_lastIndex this 0)
    (set-field! f_size this 0)
    (let ()
      (let/ec jreturn
        (send this jm_setSize_1 _size)
        (send this jm_setIndex_1 _index)))
  this)

(define (CircularIndexUtil.jm_createInstance_1 _max)
    (let ()
      (let/ec jreturn
        (jreturn (CircularIndexUtil.jnew_2 0 _max)))))

(define (CircularIndexUtil.jm_createInstanceAt_2 _index _max)
    (let ()
      (let/ec jreturn
        (jreturn (CircularIndexUtil.jnew_2 _index _max)))))



