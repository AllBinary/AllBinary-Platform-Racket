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
;; package org.allbinary.game.ag.layer.weapon.mine

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/game/layer/resources/BasicGameResources.rkt")
(lazy-require ["../../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define MineWeaponResources%
  (class BasicGameResources%
    (super-new)
    (field [f_DROP_TEXT_RESOURCE JR.null])
    (field [f_DROP_RESOURCE JR.null])
    (field [f_DROP_ICON_RESOURCE JR.null])))
(define (MineWeaponResources.jclassValue) MineWeaponResources%)

(define MineWeaponResources.jcell_instance 'jnone)
(define (MineWeaponResources.jstatic_instance)
  (when (eq? MineWeaponResources.jcell_instance 'jnone) (set! MineWeaponResources.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  MineWeaponResources.jcell_instance)
(define (MineWeaponResources.jsetstatic_instance value) (set! MineWeaponResources.jcell_instance value))

(define (MineWeaponResources.jnew_0)
  (define this (new MineWeaponResources% [jclass "MineWeaponResources"]))
    (set-field! f_DROP_TEXT_RESOURCE this "/mine_drop_text_20_by_20.png")
    (set-field! f_DROP_RESOURCE this "/mine_drop_20_by_20.png")
    (set-field! f_DROP_ICON_RESOURCE this "/mine_drop_icon_20_by_20.png")
    (let ([_ROOT JR.null][_SMALL JR.null][_MEDIUM JR.null][_SIZE_FOUR JR.null][_SIZE_FIVE JR.null][_SIZE_SIX JR.null][_SIZE JR.null])
      (let/ec jreturn
        (set! _ROOT "/mine")
        (set! _SMALL "_20_by_20.png")
        (set! _MEDIUM _SMALL)
        (set! _SIZE_FOUR _SMALL)
        (set! _SIZE_FIVE _SMALL)
        (set! _SIZE_SIX _SMALL)
        (set! _SIZE (vector _SMALL _MEDIUM _SIZE_FOUR _SIZE_FIVE _SIZE_SIX))
        (send this jm_init_2 _ROOT _SIZE)))
  this)

(define (MineWeaponResources.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (MineWeaponResources.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! MineWeaponResources.jcell_instance (MineWeaponResources.jnew_0))))
        (jreturn (MineWeaponResources.jstatic_instance)))))



