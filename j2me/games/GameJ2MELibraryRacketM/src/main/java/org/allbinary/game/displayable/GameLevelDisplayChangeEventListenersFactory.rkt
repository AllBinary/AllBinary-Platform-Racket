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
;; package org.allbinary.game.displayable

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.rkt" (DisplayChangeEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define GameLevelDisplayChangeEventListenersFactory%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_add_1 _displayChangeEventListener)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_add_1 _displayChangeEventListener)
        (send (DisplayChangeEventHandler.jm_getInstance_0) jm_addListenerInterface_1 _displayChangeEventListener))))
    (define/public (jm_clear_0)
    (let ([_displayChangeEventHandler JR.null][_displayChangeEventListener JR.null][_index JR.null])
      (let/ec jreturn
        (set! _displayChangeEventHandler (DisplayChangeEventHandler.jm_getInstance_0))
        (set! _displayChangeEventListener JR.null)
        (begin
            (set! _index (send (get-field f_list this) jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _displayChangeEventListener (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
            (send _displayChangeEventHandler jm_removeListener_1 _displayChangeEventListener)) (jloop)))))
        (send (get-field f_list this) jm_clear_0))))))
(define (GameLevelDisplayChangeEventListenersFactory.jclassValue) GameLevelDisplayChangeEventListenersFactory%)

(define GameLevelDisplayChangeEventListenersFactory.jcell_instance 'jnone)
(define (GameLevelDisplayChangeEventListenersFactory.jstatic_instance)
  (when (eq? GameLevelDisplayChangeEventListenersFactory.jcell_instance 'jnone) (set! GameLevelDisplayChangeEventListenersFactory.jcell_instance (GameLevelDisplayChangeEventListenersFactory.jnew_0)))
  GameLevelDisplayChangeEventListenersFactory.jcell_instance)
(define (GameLevelDisplayChangeEventListenersFactory.jsetstatic_instance value) (set! GameLevelDisplayChangeEventListenersFactory.jcell_instance value))

(define (GameLevelDisplayChangeEventListenersFactory.jnew_0)
  (define this (new GameLevelDisplayChangeEventListenersFactory% [jclass "GameLevelDisplayChangeEventListenersFactory"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
  this)

(define (GameLevelDisplayChangeEventListenersFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameLevelDisplayChangeEventListenersFactory.jstatic_instance)))))



