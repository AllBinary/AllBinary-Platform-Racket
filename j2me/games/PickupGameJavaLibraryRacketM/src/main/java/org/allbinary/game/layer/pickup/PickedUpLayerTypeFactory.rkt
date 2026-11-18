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
;; package org.allbinary.game.layer.pickup

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./PickedUpLayerType.rkt" (PickedUpLayerType.jnew_1)])
(provide (all-defined-out))

(define PickedUpLayerTypeFactory%
  (class JObject%
    (super-new)
    (field [f_NONE JR.null])
    (field [f_BEAM JR.null])
    (field [f_MINE JR.null])
    (field [f_PROJECTILE JR.null])
    (field [f_ENHANCEMENT JR.null])
    (field [f_MORPH JR.null])
    (field [f_PART JR.null])
    (field [f_HEAL JR.null])
    (field [f_LIFE JR.null])
    (field [f_POINTS JR.null])))
(define (PickedUpLayerTypeFactory.jclassValue) PickedUpLayerTypeFactory%)

(define PickedUpLayerTypeFactory.jcell_instance 'jnone)
(define (PickedUpLayerTypeFactory.jstatic_instance)
  (when (eq? PickedUpLayerTypeFactory.jcell_instance 'jnone) (set! PickedUpLayerTypeFactory.jcell_instance (PickedUpLayerTypeFactory.jnew_0)))
  PickedUpLayerTypeFactory.jcell_instance)
(define (PickedUpLayerTypeFactory.jsetstatic_instance value) (set! PickedUpLayerTypeFactory.jcell_instance value))

(define (PickedUpLayerTypeFactory.jnew_0)
  (define this (new PickedUpLayerTypeFactory% [jclass "PickedUpLayerTypeFactory"]))
    (set-field! f_NONE this (PickedUpLayerType.jnew_1 (get-field f_NULL_STRING (StringUtil.jm_getInstance_0))))
    (set-field! f_BEAM this (PickedUpLayerType.jnew_1 "BEAM"))
    (set-field! f_MINE this (PickedUpLayerType.jnew_1 "MINE"))
    (set-field! f_PROJECTILE this (PickedUpLayerType.jnew_1 "PROJECTILE"))
    (set-field! f_ENHANCEMENT this (PickedUpLayerType.jnew_1 "Enhancement"))
    (set-field! f_MORPH this (PickedUpLayerType.jnew_1 "Morph"))
    (set-field! f_PART this (PickedUpLayerType.jnew_1 "Part"))
    (set-field! f_HEAL this (PickedUpLayerType.jnew_1 "Heal"))
    (set-field! f_LIFE this (PickedUpLayerType.jnew_1 "Life"))
    (set-field! f_POINTS this (PickedUpLayerType.jnew_1 "Points"))
  this)

(define (PickedUpLayerTypeFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PickedUpLayerTypeFactory.jstatic_instance)))))



