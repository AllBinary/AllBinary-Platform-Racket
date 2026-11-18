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
;; package org.allbinary.game.combat.damage

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./DamageFloaters.rkt")
(lazy-require ["../../../../../org/allbinary/game/rand/MyRandomFactory.rkt" (MyRandomFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorArrayIndexer.rkt" (BasicColorArrayIndexer.jnew_1)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorSetUtil.rkt" (BasicColorSetUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/java/character/CharArrayFactory.rkt" (CharArrayFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/math/PrimitiveLongUtil.rkt" (PrimitiveLongUtil.jm_createPowerOfTen_1)])
(lazy-require ["../../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define PtsDamageFloaters%
  (class DamageFloaters%
    (super-new)
    (field [f_basicSetColorUtil JR.null])
    (field [f_layerInterface JR.null])
    (field [f_lastDamage JR.null])
    (field [f_lastDamageString JR.null])
    (field [f_lastDamageStringSizeArray JR.null])
    (field [f_circularIndexUtil JR.null])
    (field [f_primitiveLongUtil JR.null])
    (field [f_myRandomFactory JR.null])
    (define/override (jm_add_1 _damage)
    (let ([_index JR.null])
      (let/ec jreturn
        (set! _index (send (get-field f_circularIndexUtil this) jm_getIndex_0))
        (vector-set! (get-field f_lastDamage this) _index _damage)
        (vector-set! (get-field f_lastDamageString this) _index (send (get-field f_primitiveLongUtil this) jm_getCharArray_1 (vector-ref (get-field f_lastDamage this) _index)))
        (vector-set! (get-field f_lastDamageStringSizeArray this) _index (send (get-field f_primitiveLongUtil this) jm_getCurrentTotalDigits_0))
        (send (get-field f_circularIndexUtil this) jm_next_0))))
    (define/override (jm_paint_1 _graphics)
    (let ([_viewPosition JR.null][_x JR.null][_y JR.null][_delta JR.null][_index JR.null])
      (let/ec jreturn
        (set! _viewPosition (send (get-field f_layerInterface this) jm_getViewPosition_0))
        (set! _x (send _viewPosition jm_getX_0))
        (set! _y (send _viewPosition jm_getY_0))
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_lastDamage this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (when (not (= (vector-ref (get-field f_lastDamage this) _index) 0))
                (begin
                (set! _delta (JR.i32 (* 10 (JR.i32 (+ _index 2)))))
                (send (get-field f_basicSetColorUtil this) jm_setBasicColorP_2 _graphics (JR.className (PtsDamageFloaters.jstatic_basicColorArrayIndexer)))
                (send _graphics jm_drawChars_6 (vector-ref (get-field f_lastDamageString this) _index) 0 (vector-ref (get-field f_lastDamageStringSizeArray this) _index) (JR.i32 (- _x (send (get-field f_myRandomFactory this) jm_getNextInt_1 _delta))) (JR.i32 (- _y _delta)) 0)
                (JR.className (PtsDamageFloaters.jstatic_basicColorArrayIndexer))))
            (vector-set! (get-field f_lastDamage this) _index 0))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))))
(define (PtsDamageFloaters.jclassValue) PtsDamageFloaters%)

(define PtsDamageFloaters.jcell_basicColorArrayIndexer 'jnone)
(define (PtsDamageFloaters.jstatic_basicColorArrayIndexer)
  (when (eq? PtsDamageFloaters.jcell_basicColorArrayIndexer 'jnone) (set! PtsDamageFloaters.jcell_basicColorArrayIndexer (BasicColorArrayIndexer.jnew_1 (vector (get-field f_WHITE (BasicColorFactory.jm_getInstance_0)) (get-field f_RED (BasicColorFactory.jm_getInstance_0)) (get-field f_YELLOW (BasicColorFactory.jm_getInstance_0)) (get-field f_BLUE (BasicColorFactory.jm_getInstance_0))))))
  PtsDamageFloaters.jcell_basicColorArrayIndexer)
(define (PtsDamageFloaters.jsetstatic_basicColorArrayIndexer value) (set! PtsDamageFloaters.jcell_basicColorArrayIndexer value))

(define (PtsDamageFloaters.jnew_1 _layerInterface)
  (define this (new PtsDamageFloaters% [jclass "PtsDamageFloaters"]))
    (set-field! f_basicSetColorUtil this (BasicColorSetUtil.jm_getInstance_0))
    
    (set-field! f_lastDamage this (JR.newArray 0 5))
    (set-field! f_lastDamageString this (JR.newArray 0 5 0))
    (set-field! f_lastDamageStringSizeArray this (JR.newArray 0 5))
    (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 5))
    
    (set-field! f_myRandomFactory this (MyRandomFactory.jm_getInstance_0))
    (let ([_CHAR_ARRAY JR.null][_index JR.null])
      (let/ec jreturn
        (set-field! f_primitiveLongUtil this (PrimitiveLongUtil.jm_createPowerOfTen_1 100000))
        (set-field! f_layerInterface this _layerInterface)
        (set! _CHAR_ARRAY (send (CharArrayFactory.jm_getInstance_0) jm_getZeroCharArray_0))
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_lastDamageString this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (vector-set! (get-field f_lastDamageString this) _index _CHAR_ARRAY))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))))
  this)



