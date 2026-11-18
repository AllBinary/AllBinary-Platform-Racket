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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.rkt"
  "./AnimationInterface.rkt")
(lazy-require ["../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/graphics/color/BasicColorSetUtil.rkt" (BasicColorSetUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define Animation%
  (class JObject%
    (super-new)
    (field [f_basicSetColorUtil JR.null])
    (field [f_basicColor JR.null])
    (field [f_colorP 0])
    (field [f_changeBasicColorP JR.null])
    (field [f_changeColorP 0])
    (field [f_alphaP 0])
    (define/public (jm_setAlpha_1 _alpha)
    (let ()
      (let/ec jreturn
        (set-field! f_alphaP this _alpha))))
    (define/public (jm_nextFrame_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_basicSetColorUtil this) jm_setBasicColorP3_3 _graphics (send this jm_getBasicColorP_0) (send this jm_getColor_0)))))
    (define/public (jm_paintThreedXYZ_4 _graphics _x _y _z)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isThreed_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicColor this)))))
    (define/public (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_basicColor this _basicColor)
        (set-field! f_colorP this (send (get-field f_basicColor this) jm_intValue_0)))))
    (define/public (jm_setBackgroundBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getChangeBasicColor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_changeBasicColorP this)))))
    (define/public (jm_changeBasicColor_1 _basicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_changeBasicColorP this _basicColor)
        (set-field! f_changeColorP this (send (get-field f_changeBasicColorP this) jm_intValue_0)))))
    (define/public (jm_getChangeColor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_changeColorP this)))))
    (define/public (jm_getColor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_colorP this)))))
    (define/public (jm_setScale_2 _scaleX _scaleY)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setMaxScale_2 _maxScaleX _maxScaleY)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_set_1 _gl)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setDx_1 _dx)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getDx_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_setDy_1 _dy)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getDy_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (Animation.jclassValue) Animation%)

(define (Animation.jnew_0)
  (define this (new Animation% [jclass "Animation"]))
    (set-field! f_basicSetColorUtil this (BasicColorSetUtil.jm_getInstance_0))
    (set-field! f_basicColor this (get-field f_WHITE (BasicColorFactory.jm_getInstance_0)))
    
    (set-field! f_changeBasicColorP this (get-field f_NULL_COLOR (BasicColorFactory.jm_getInstance_0)))
    
    
    (let ()
      (let/ec jreturn (void)))
  this)



