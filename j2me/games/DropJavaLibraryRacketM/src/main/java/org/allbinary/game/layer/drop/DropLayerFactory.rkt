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
;; package org.allbinary.game.layer.drop

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define DropLayerFactory%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (field [f_basicArrayListUtil JR.null])
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_clear_0))))
    (define/public (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_list this) jm_size_0)))))
    (define/public (jm_getRandomInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_basicArrayListUtil this) jm_getRandom_1 (get-field f_list this))))))
    (define/public (jm_add_1 _layerInterfaceFactoryInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_add_1 _layerInterfaceFactoryInterface))))
    (define/public (jm_getList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_list this)))))))
(define (DropLayerFactory.jclassValue) DropLayerFactory%)

(define DropLayerFactory.jcell_DROP_LAYER_FACTORY 'jnone)
(define (DropLayerFactory.jstatic_DROP_LAYER_FACTORY)
  (when (eq? DropLayerFactory.jcell_DROP_LAYER_FACTORY 'jnone) (set! DropLayerFactory.jcell_DROP_LAYER_FACTORY (DropLayerFactory.jnew_0)))
  DropLayerFactory.jcell_DROP_LAYER_FACTORY)
(define (DropLayerFactory.jsetstatic_DROP_LAYER_FACTORY value) (set! DropLayerFactory.jcell_DROP_LAYER_FACTORY value))

(define (DropLayerFactory.jnew_0)
  (define this (new DropLayerFactory% [jclass "DropLayerFactory"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (set-field! f_basicArrayListUtil this (BasicArrayListUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (DropLayerFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DropLayerFactory.jstatic_DROP_LAYER_FACTORY)))))



