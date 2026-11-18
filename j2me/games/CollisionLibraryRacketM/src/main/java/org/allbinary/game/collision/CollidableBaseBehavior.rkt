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
;; package org.allbinary.game.collision

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./CollidableInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./LayerCollisionUtil.rkt" (LayerCollisionUtil.jm_getInstance_0)])
(lazy-require ["./CollisionTypeFactory.rkt" (CollisionTypeFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define CollidableBaseBehavior%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_layerCollisionUtil JR.null])
    (field [f_collidable #f])
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className this)))))
    (define/public (jm_setCollidable_1 _collidable)
    (let ()
      (let/ec jreturn
        (set-field! f_collidable this _collidable))))
    (define/public (jm_isCollidable_1 _ownerLayer)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_collidable this)))))
    (define/public (jm_collide_2 _ownerLayer _allbinaryCollidableLayer)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this))) jm_append_1 (get-field f_COLON_SEP (CommonLabels.jm_getInstance_0))) jm_append_1 (JR.className this)) jm_toString_0))))))
    (define/public (jm_isCollision_2 _ownerLayer _collisionLayer)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_layerCollisionUtil this) jm_isCollision_2 _ownerLayer _collisionLayer)))))
    (define/public (jm_isCollisionInterface_2 _ownerLayer _collidableInterfaceCompositeInterface)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_layerCollisionUtil this) jm_isCollision_2 _ownerLayer _collidableInterfaceCompositeInterface)))))
    (define/public (jm_collideInterface_2 _ownerLayer _collidableInterfaceCompositeInterface)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_paint_2 _ownerLayer _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getCollisionTypeWith_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NONE (CollisionTypeFactory.jm_getInstance_0))))))))
(define (CollidableBaseBehavior.jclassValue) CollidableBaseBehavior%)

(define (CollidableBaseBehavior.jnew_1 _collidable)
  (define this (new CollidableBaseBehavior% [jclass "CollidableBaseBehavior"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_layerCollisionUtil this (LayerCollisionUtil.jm_getInstance_0))
    (set-field! f_collidable this #t)
    (let ()
      (let/ec jreturn
        (set-field! f_collidable this _collidable)))
  this)



