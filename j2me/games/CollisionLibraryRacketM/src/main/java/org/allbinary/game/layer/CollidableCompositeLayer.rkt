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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/game/collision/CollidableInterfaceCompositeInterface.rkt"
  "./AllBinaryGameLayer.rkt")
(lazy-require ["../../../../org/allbinary/ai/ArtificialIntelligence.rkt" (ArtificialIntelligence.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory.rkt" (CollidableNeverCollideBehaviorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/RectangleFactory.rkt" (RectangleFactory.jstatic_SINGLETON)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/view/ViewPositionBase.rkt" (ViewPositionBase.jstatic_NULL_VIEW_POSITION)])
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define CollidableCompositeLayer%
  (class AllBinaryGameLayer%
    (super-new)
    (field [f_collidableInferface JR.null])
    (define/public (jm_getArtificialIntelligenceInterface_0)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)) this)
        (jreturn (ArtificialIntelligence.jm_getInstance_0)))))
    (define/public (jm_getCollidableInferface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_collidableInferface this)))))
    (define/public (jm_setCollidableInferface_1 _collidableInferface)
    (let ()
      (let/ec jreturn
        (set-field! f_collidableInferface this _collidableInferface))))
    (define/override (jm_implmentsCollidableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/override (jm_toStringAppend_1 _stringBuffer)
    (let ([_commonSeps JR.null])
      (let/ec jreturn
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (super jm_toStringAppend_1 _stringBuffer)
        (send _stringBuffer jm_append_1 (get-field f_NEW_LINE _commonSeps))
        (send _stringBuffer jm_append_1 (send (send this jm_getCollidableInferface_0) jm_toString_0)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send this jm_toStringAppend_1 _stringBuffer)
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (CollidableCompositeLayer.jclassValue) CollidableCompositeLayer%)

(define CollidableCompositeLayer.jcell_NULL_COLLIDABLE_COMPOSITE_LAYER 'jnone)
(define (CollidableCompositeLayer.jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER)
  (when (eq? CollidableCompositeLayer.jcell_NULL_COLLIDABLE_COMPOSITE_LAYER 'jnone) (set! CollidableCompositeLayer.jcell_NULL_COLLIDABLE_COMPOSITE_LAYER (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  CollidableCompositeLayer.jcell_NULL_COLLIDABLE_COMPOSITE_LAYER)
(define (CollidableCompositeLayer.jsetstatic_NULL_COLLIDABLE_COMPOSITE_LAYER value) (set! CollidableCompositeLayer.jcell_NULL_COLLIDABLE_COMPOSITE_LAYER value))

(define (CollidableCompositeLayer.jnew_4 _name _layerInfo _viewPosition _collidableBaseBehaviorFactory)
  (define this (new CollidableCompositeLayer% [jclass "CollidableCompositeLayer"]))
    (set-field! f_collidableInferface this (send (CollidableNeverCollideBehaviorFactory.jm_getInstance_0) jm_createBehavior_0))
    (let ()
      (let/ec jreturn
        (void)
        (when (not (eq? _collidableBaseBehaviorFactory (CollidableNeverCollideBehaviorFactory.jm_getInstance_0)))
            (begin
            (send this jm_setCollidableInferface_1 (send _collidableBaseBehaviorFactory jm_createBehavior_0))))))
  this)

(define (CollidableCompositeLayer.jm_getNullInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (CollidableCompositeLayer.jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! CollidableCompositeLayer.jcell_NULL_COLLIDABLE_COMPOSITE_LAYER (CollidableCompositeLayer.jnew_4 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (RectangleFactory.jstatic_SINGLETON) (ViewPositionBase.jstatic_NULL_VIEW_POSITION) (CollidableNeverCollideBehaviorFactory.jm_getInstance_0)))))
        (jreturn (CollidableCompositeLayer.jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER)))))



