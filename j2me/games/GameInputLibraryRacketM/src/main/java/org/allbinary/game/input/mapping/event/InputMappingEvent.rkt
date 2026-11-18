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
;; package org.allbinary.game.input.mapping.event

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(lazy-require ["../../../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping.rkt" (InputToGameKeyMapping.jm_getNullInstance_0)])
(provide (all-defined-out))

(define InputMappingEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_inputToGameKeyMapping JR.null])
    (define/public (jm_setInputToGameKeyMapping_1 _inputToGameKeyMapping)
    (let ()
      (let/ec jreturn
        (set-field! f_inputToGameKeyMapping this _inputToGameKeyMapping))))
    (define/public (jm_getInputToGameKeyMapping_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_inputToGameKeyMapping this)))))))
(define (InputMappingEvent.jclassValue) InputMappingEvent%)

(define (InputMappingEvent.jnew_1 _anyType)
  (define this (new InputMappingEvent% [jclass "InputMappingEvent"]))
    (set-field! f_inputToGameKeyMapping this (InputToGameKeyMapping.jm_getNullInstance_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)



