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
;; package org.allbinary.game.collision.layer

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define AllBinaryCollisionManager%
  (class JObject%
    (super-new)
    (define/public (jm_process_3 _layerManager _collidableInterfaceCompositeInterface _startIndex)
    (let ([_size JR.null][_collidableInterfaceCompositeInterface2 JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send _layerManager jm_getSize_0))
        (begin
            (set! _index (JR.i32 (+ _startIndex 1)))
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _collidableInterfaceCompositeInterface2 (send _layerManager jm_getLayerAt_1 _index))
            (send this jm_collide_3 _layerManager _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_collide_3 _layerManager _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2)
    (let ([_collidableBase2 JR.null][_collidableBase JR.null])
      (let/ec jreturn
        (set! _collidableBase2 (send _collidableInterfaceCompositeInterface2 jm_getCollidableInferface_0))
        (set! _collidableBase (send _collidableInterfaceCompositeInterface jm_getCollidableInferface_0))
        (when (send _collidableBase2 jm_isCollidable_1 _collidableInterfaceCompositeInterface)
            (begin
            (when (send _collidableBase jm_isCollisionInterface_2 _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2)
                (begin
                (send _collidableBase jm_collideInterface_2 _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2)
                (send _collidableBase2 jm_collideInterface_2 _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface))))))))))
(define (AllBinaryCollisionManager.jclassValue) AllBinaryCollisionManager%)

(define AllBinaryCollisionManager.jcell_allBinaryCollisionManager 'jnone)
(define (AllBinaryCollisionManager.jstatic_allBinaryCollisionManager)
  (when (eq? AllBinaryCollisionManager.jcell_allBinaryCollisionManager 'jnone) (set! AllBinaryCollisionManager.jcell_allBinaryCollisionManager (AllBinaryCollisionManager.jnew_0)))
  AllBinaryCollisionManager.jcell_allBinaryCollisionManager)
(define (AllBinaryCollisionManager.jsetstatic_allBinaryCollisionManager value) (set! AllBinaryCollisionManager.jcell_allBinaryCollisionManager value))

(define (AllBinaryCollisionManager.jnew_0)
  (define this (new AllBinaryCollisionManager% [jclass "AllBinaryCollisionManager"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AllBinaryCollisionManager.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AllBinaryCollisionManager.jstatic_allBinaryCollisionManager)))))



