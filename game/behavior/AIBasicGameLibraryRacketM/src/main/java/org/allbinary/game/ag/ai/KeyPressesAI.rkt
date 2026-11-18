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
;; package org.allbinary.game.ag.ai

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/ai/BasicAI.rkt"
  "../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../org/allbinary/util/HashtableUtil.rkt" (HashtableUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define KeyPressesAI%
  (class BasicAI%
    (super-new)
    (inherit/super jm_processKeyAI_1)
    (field [f_on #f])
    (field [f_keys JR.null])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_index JR.null])
      (let/ec jreturn
        (when (get-field f_on this)
            (begin
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index (vector-length (get-field f_keys this)))
                    (let/ec jcontinue
                (super jm_processKeyAI_1 (JR.className (vector-ref (get-field f_keys this) _index))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
    (define/public (jm_toggle_0)
    (let ()
      (let/ec jreturn
        (if (send this jm_isOn_0)
            (begin
            (send this jm_setOn_1 #f))
            (begin
            (send this jm_setOn_1 #t))))))
    (define/public (jm_disable_0)
    (let ()
      (let/ec jreturn
        (send this jm_setOn_1 #f))))
    (define/public (jm_enable_0)
    (let ()
      (let/ec jreturn
        (send this jm_setOn_1 #t))))
    (define/public (jm_setOn_1 _on)
    (let ()
      (let/ec jreturn
        (set-field! f_on this _on))))
    (define/public (jm_isOn_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_on this)))))))
(define (KeyPressesAI.jclassValue) KeyPressesAI%)

(define (KeyPressesAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)
  (define this (new KeyPressesAI% [jclass "KeyPressesAI"]))
    (set-field! f_on this #t)
    
    (let ([_objectArray JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (void)
        (set-field! f_keys this (JR.newArray JR.null (send _hashtable jm_size_0)))
        (set! _objectArray (send (HashtableUtil.jm_getInstance_0) jm_getKeysAsArray_1 _hashtable))
        (set! _size (vector-length _objectArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! (get-field f_keys this) _index (send _hashtable jm_get_1 (vector-ref _objectArray _index))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))))
  this)



