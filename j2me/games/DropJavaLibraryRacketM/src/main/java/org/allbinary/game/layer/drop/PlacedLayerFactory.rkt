#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.layer.drop

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define PlacedLayerFactory%
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
        (send (get-field f_list this) jm_add_1 _layerInterfaceFactoryInterface))))))
(define (PlacedLayerFactory.jclassValue) PlacedLayerFactory%)

(define PlacedLayerFactory.jcell_instance 'jnone)
(define (PlacedLayerFactory.jstatic_instance)
  (when (eq? PlacedLayerFactory.jcell_instance 'jnone) (set! PlacedLayerFactory.jcell_instance (PlacedLayerFactory.jnew_0)))
  PlacedLayerFactory.jcell_instance)
(define (PlacedLayerFactory.jsetstatic_instance value) (set! PlacedLayerFactory.jcell_instance value))

(define (PlacedLayerFactory.jnew_0)
  (define this (new PlacedLayerFactory% [jclass "PlacedLayerFactory"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (set-field! f_basicArrayListUtil this (BasicArrayListUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (PlacedLayerFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PlacedLayerFactory.jstatic_instance)))))



