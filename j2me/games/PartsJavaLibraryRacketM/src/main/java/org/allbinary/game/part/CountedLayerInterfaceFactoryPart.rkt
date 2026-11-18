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
;; package org.allbinary.game.part

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "./PartInterface.rkt")
(lazy-require ["../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.rkt" (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)])
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveLongUtil.rkt" (PrimitiveLongUtil.jm_createPowerOfTen_1)])
(provide (all-defined-out))

(define CountedLayerInterfaceFactoryPart%
  (class JObject%
    (super-new)
    (field [f_updateMyFontProcessor JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_animationInterface JR.null])
    (field [f_total 0])
    (field [f_totalString JR.null])
    (field [f_xOffset 0])
    (field [f_countedPickedUpLayerInterfaceFactory JR.null])
    (field [f_primitiveLongUtil JR.null])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (send this jm_setXOffset_1 (JR.i32 (+ (send _font jm_charsWidth_3 (get-field f_totalString this) 0 (send (get-field f_primitiveLongUtil this) jm_getCurrentTotalDigits_0)) (arithmetic-shift (send _font jm_getSize_0) (- (bitwise-and 1 31))))))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_init_2 _total _countedPickedUpLayerInterfaceFactory)
    (let ()
      (let/ec jreturn
        (send this jm_setCountedPickedUpLayerInterfaceFactory_1 _countedPickedUpLayerInterfaceFactory)
        (set-field! f_total this _total))))
    (define/public (jm_getInstance_4 _hashtable _x _y _z)
    (let ()
      (let/ec jreturn
        (if (> (get-field f_total this) 0)
            (begin
            (send this jm_setTotal_1 (JR.i32 (- (get-field f_total this) 1)))
            (jreturn (send (send this jm_getCountedPickedUpLayerInterfaceFactory_0) jm_getNextInstance_4 _hashtable _x _y _z)))
            (begin
            (raise (JR.newException "Exception" "No more left. Could use a listener to automatically remove")))))))
    (define/public (jm_getTotal_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_total this)))))
    (define/public (jm_setTotal_1 _total)
    (let ()
      (let/ec jreturn
        (set-field! f_total this _total)
        (set-field! f_totalString this (send (get-field f_primitiveLongUtil this) jm_getCharArray_1 _total))
        (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this)))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getAnimationInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animationInterface this)))))
    (define/public (jm_setAnimationInterface_1 _animationInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_animationInterface this _animationInterface))))
    (define/public (jm_getXOffset_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_xOffset this)))))
    (define/public (jm_setXOffset_1 _totalStringWidth)
    (let ()
      (let/ec jreturn
        (set-field! f_xOffset this _totalStringWidth))))
    (define/public (jm_getTotalString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_totalString this)))))
    (define/public (jm_getCountedPickedUpLayerInterfaceFactory_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_countedPickedUpLayerInterfaceFactory this)))))
    (define/public (jm_setCountedPickedUpLayerInterfaceFactory_1 _countedPickedUpLayerInterfaceFactory)
    (let ()
      (let/ec jreturn
        (set-field! f_countedPickedUpLayerInterfaceFactory this _countedPickedUpLayerInterfaceFactory))))))
(define (CountedLayerInterfaceFactoryPart.jclassValue) CountedLayerInterfaceFactoryPart%)

(define CountedLayerInterfaceFactoryPart.jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY 'jnone)
(define (CountedLayerInterfaceFactoryPart.jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY)
  (when (eq? CountedLayerInterfaceFactoryPart.jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY 'jnone) (set! CountedLayerInterfaceFactoryPart.jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY (CountedLayerInterfaceFactoryPart.jnew_2 0 (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY))))
  CountedLayerInterfaceFactoryPart.jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY)
(define (CountedLayerInterfaceFactoryPart.jsetstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY value) (set! CountedLayerInterfaceFactoryPart.jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY value))

(define (CountedLayerInterfaceFactoryPart.jnew_2 _total _countedPickedUpLayerInterfaceFactory)
  (define this (new CountedLayerInterfaceFactoryPart% [jclass "CountedLayerInterfaceFactoryPart"]))
    (set-field! f_updateMyFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
    (set-field! f_animationInterface this (JR.className (NullAnimationFactory.jm_getFactoryInstance_0)))
    
    (set-field! f_totalString this (get-field f_NULL_CHAR_ARRAY (NullUtil.jm_getInstance_0)))
    
    (set-field! f_countedPickedUpLayerInterfaceFactory this (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY))
    
    (let ()
      (let/ec jreturn
        (set-field! f_primitiveLongUtil this (PrimitiveLongUtil.jm_createPowerOfTen_1 1000))
        (send this jm_init_2 _total _countedPickedUpLayerInterfaceFactory)))
  this)



