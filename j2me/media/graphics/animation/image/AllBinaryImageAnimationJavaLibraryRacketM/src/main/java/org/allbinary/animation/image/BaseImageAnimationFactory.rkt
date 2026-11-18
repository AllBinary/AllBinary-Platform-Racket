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
;; package org.allbinary.animation.image

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface.rkt")
(lazy-require ["../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../org/allbinary/image/AnimationFactoryImageScaleUtil.rkt" (AnimationFactoryImageScaleUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/media/ScaleProperties.rkt" (ScaleProperties.jstatic_instance)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["./AnimationFactoryInitializationVisitor.rkt" (AnimationFactoryInitializationVisitor.jnew_0)])
(provide (all-defined-out))

(define BaseImageAnimationFactory%
  (class JObject%
    (super-new)
    (field [f_animationFactoryImageScaleUtil JR.null])
    (field [f_image JR.null])
    (field [f_animationBehaviorFactory JR.null])
    (field [f_sequenceArray JR.null])
    (field [f_animationFactoryInitializationVisitor JR.null])
    (field [f_scaleProperties JR.null])
    (define/public (jm_getInstance_1 _instanceId)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (NullAnimationFactory.jm_getFactoryInstance_0))))))
    (define/public (jm_getImage_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_image this)))))
    (define/public (jm_getSequenceArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_sequenceArray this)))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn
        (set-field! f_scaleProperties this _scaleProperties)
        (if (get-field f_shouldScale (get-field f_scaleProperties this))
            (begin
            (set-field! f_scaleWidth (get-field f_scaleProperties this) (JR.d2i (* (JR.toDouble (get-field f_width (get-field f_animationFactoryInitializationVisitor this))) (get-field f_scaleX (get-field f_scaleProperties this)))))
            (set-field! f_scaleHeight (get-field f_scaleProperties this) (JR.d2i (* (JR.toDouble (get-field f_height (get-field f_animationFactoryInitializationVisitor this))) (get-field f_scaleY (get-field f_scaleProperties this))))))
            (begin
            (void))))))
    (define/public (jm_getAnimationFactoryInitializationVisitorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animationFactoryInitializationVisitor this)))))
    (define/public (jm_getScalePropertiesP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_scaleProperties this)))))
    (define/override (jm_toString_0)
    (let ([_commonSeps JR.null][_commonLabels JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set! _commonLabels (CommonLabels.jm_getInstance_0))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (super jm_toString_0))
        (send _stringBuffer jm_append_1 (get-field f_HEIGHT_LABEL _commonLabels))
        (send _stringBuffer jm_appendint_1 (send (get-field f_image this) jm_getHeight_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE _commonSeps))
        (send _stringBuffer jm_append_1 (send (get-field f_animationFactoryInitializationVisitor this) jm_toString_0))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (BaseImageAnimationFactory.jclassValue) BaseImageAnimationFactory%)

(define (BaseImageAnimationFactory.jnew_7 _image _sequenceArray _width _height _dx _dy _animationBehaviorFactory)
  (define this (new BaseImageAnimationFactory% [jclass "BaseImageAnimationFactory"]))
    (set-field! f_animationFactoryImageScaleUtil this (AnimationFactoryImageScaleUtil.jm_getInstance_0))
    
    
    
    
    (set-field! f_scaleProperties this (ScaleProperties.jstatic_instance))
    (let ()
      (let/ec jreturn
        (set-field! f_animationFactoryInitializationVisitor this (AnimationFactoryInitializationVisitor.jnew_0))
        (set-field! f_image this _image)
        (set-field! f_width (get-field f_animationFactoryInitializationVisitor this) _width)
        (set-field! f_height (get-field f_animationFactoryInitializationVisitor this) _height)
        (set-field! f_animationBehaviorFactory this _animationBehaviorFactory)
        (set-field! f_sequenceArray this _sequenceArray)
        (set-field! f_dx (get-field f_animationFactoryInitializationVisitor this) _dx)
        (set-field! f_dy (get-field f_animationFactoryInitializationVisitor this) _dy)))
  this)

(define (BaseImageAnimationFactory.jm_createFactoryBase_5 _image _sequenceArray _width _height _animationBehaviorFactory)
    (let ()
      (let/ec jreturn
        (jreturn (BaseImageAnimationFactory.jnew_7 _image _sequenceArray _width _height 0 0 _animationBehaviorFactory)))))



