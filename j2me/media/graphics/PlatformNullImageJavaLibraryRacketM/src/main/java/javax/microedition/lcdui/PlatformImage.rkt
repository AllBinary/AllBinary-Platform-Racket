#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package javax.microedition.lcdui

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["./NullImage.rkt" (NullImage.jstatic_NULL_IMAGE)])
(provide (all-defined-out))

;PlatformNullImageJavaLibrary
(define PlatformImage%
  (class JObject%
    (super-new)
    (define/public (jm_getImage_1 _graphicsSurface2)
    (let ()
      (let/ec jreturn
        (jreturn (NullImage.jstatic_NULL_IMAGE)))))
    (define/public (jm_getSurfaceWidth_2 _graphicsSurface2 _width)
    (let ()
      (let/ec jreturn
        (jreturn _width))))
    (define/public (jm_getSurfaceHeight_2 _graphicsSurface2 _height)
    (let ()
      (let/ec jreturn
        (jreturn _height))))
    (define/public (jm_getWidth_2 _image _width)
    (let ()
      (let/ec jreturn
        (jreturn _width))))
    (define/public (jm_getHeight_2 _image _height)
    (let ()
      (let/ec jreturn
        (jreturn _height))))
    (define/public (jm_getGraphics_4 _graphicsSurface _width _height _image)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_drawImage_6 _image _x _y _anchor _g2 _g)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_drawRegion_10 _image _x_src _y_src _width _height _transform _x_dst _y_dst _anchor _g)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getRGB_8 _argb _offset _scanlength _x _y _width _height _image)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setRGB_8 _argb _offset _scanlength _x _y _width _height _image)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getData_1 _image)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_INT_ARRAY (NullUtil.jm_getInstance_0))))))))
(define (PlatformImage.jclassValue) PlatformImage%)

(define (PlatformImage.jnew_0)
  (define this (new PlatformImage% [jclass "PlatformImage"]))
  this)



