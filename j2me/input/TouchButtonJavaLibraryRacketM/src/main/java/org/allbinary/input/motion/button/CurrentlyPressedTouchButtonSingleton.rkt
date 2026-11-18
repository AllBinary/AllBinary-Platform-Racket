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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define CurrentlyPressedTouchButtonSingleton%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_size_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_list this) jm_size_0)))))
    (define/public (jm_removeAt_1 _index)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_list this) jm_removeAt_1 _index)))))
    (define/public (jm_remove_1 _touchButtonInput)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_list this) jm_remove_1 _touchButtonInput)))))
    (define/public (jm_get_1 _index)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_objectArray (get-field f_list this)) _index)))))
    (define/public (jm_contains_1 _touchButtonInput)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_list this) jm_contains_1 _touchButtonInput)))))
    (define/public (jm_add_1 _touchButtonInput)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_add_1 _touchButtonInput))))))
(define (CurrentlyPressedTouchButtonSingleton.jclassValue) CurrentlyPressedTouchButtonSingleton%)

(define CurrentlyPressedTouchButtonSingleton.jcell_instance 'jnone)
(define (CurrentlyPressedTouchButtonSingleton.jstatic_instance)
  (when (eq? CurrentlyPressedTouchButtonSingleton.jcell_instance 'jnone) (set! CurrentlyPressedTouchButtonSingleton.jcell_instance (CurrentlyPressedTouchButtonSingleton.jnew_0)))
  CurrentlyPressedTouchButtonSingleton.jcell_instance)
(define (CurrentlyPressedTouchButtonSingleton.jsetstatic_instance value) (set! CurrentlyPressedTouchButtonSingleton.jcell_instance value))

(define (CurrentlyPressedTouchButtonSingleton.jnew_0)
  (define this (new CurrentlyPressedTouchButtonSingleton% [jclass "CurrentlyPressedTouchButtonSingleton"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (CurrentlyPressedTouchButtonSingleton.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CurrentlyPressedTouchButtonSingleton.jstatic_instance)))))



