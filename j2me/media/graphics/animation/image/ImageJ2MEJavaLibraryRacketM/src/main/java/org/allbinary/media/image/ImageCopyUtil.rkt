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
;; package org.allbinary.media.image

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/GameFeatureFactory.rkt" (GameFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./ImageCreationUtil.rkt" (ImageCreationUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ImageCopyUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_imageCreationUtil JR.null])
    (field [f_anchor 0])
    (field [f_gameFeatureFactory JR.null])
    (field [f_features JR.null])
    (field [f_NO_COPY JR.null])
    (define/public (jm_createImageForRotation_1 _originalImage)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_createImage_1 _originalImage)))))
    (define/public (jm_createImage_1 _originalImage)
    (let ([_image JR.null])
      (let/ec jreturn
        (when (not (send (get-field f_features this) jm_isFeature_1 (get-field f_POST_IMAGE_LOADING_MODIFICATION (get-field f_gameFeatureFactory this))))
            (begin
            (send (get-field f_logUtil this) jm_put_4 (get-field f_NO_COPY this) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)) (JR.newException "Exception"))
            (jreturn _originalImage)))
        (set! _image (send (get-field f_imageCreationUtil this) jm_createImageWH_2 (send _originalImage jm_getWidth_0) (send _originalImage jm_getHeight_0)))
        (if (send _image jm_isMutable_0)
            (begin
            (JR.className (send _image jm_getGraphics_0))
            (jreturn _image))
            (begin
            (raise (JR.newException "Exception" "Not Mutable")))))))
    (define/public (jm_createImageScale_3 _originalImage _canvasScale _resize)
    (let ([_newWidth JR.null][_newHeight JR.null][_image JR.null][_halfWidthDelta JR.null][_halfHeightDelta JR.null][_graphics JR.null])
      (let/ec jreturn
        (when (not (send (get-field f_features this) jm_isFeature_1 (get-field f_POST_IMAGE_LOADING_MODIFICATION (get-field f_gameFeatureFactory this))))
            (begin
            (send (get-field f_logUtil this) jm_put_4 (get-field f_NO_COPY this) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)) (JR.newException "Exception"))
            (jreturn _originalImage)))
        (set! _newWidth (JR.d2i (* (JR.toDouble (send _originalImage jm_getWidth_0)) _canvasScale)))
        (set! _newHeight (JR.d2i (* (JR.toDouble (send _originalImage jm_getHeight_0)) _canvasScale)))
        (when _resize
            (begin
            (when (< _newWidth _newHeight)
                (begin
                (set! _newWidth _newHeight)))
            (when (< _newHeight _newWidth)
                (begin
                (set! _newHeight _newWidth)))))
        (set! _image (send (get-field f_imageCreationUtil this) jm_createImageWH_2 _newWidth _newHeight))
        (if (send _image jm_isMutable_0)
            (begin
            (set! _halfWidthDelta (JR.idiv (JR.i32 (- _newWidth (send _originalImage jm_getWidth_0))) 2))
            (set! _halfHeightDelta (JR.idiv (JR.i32 (- _newHeight (send _originalImage jm_getHeight_0))) 2))
            (set! _graphics (send _image jm_getGraphics_0))
            (send _graphics jm_drawImage_4 _originalImage _halfWidthDelta _halfHeightDelta (get-field f_anchor this))
            (jreturn _image))
            (begin
            (raise (JR.newException "Exception" "Not Mutable")))))))))
(define (ImageCopyUtil.jclassValue) ImageCopyUtil%)

(define ImageCopyUtil.jcell_instance 'jnone)
(define (ImageCopyUtil.jstatic_instance)
  (when (eq? ImageCopyUtil.jcell_instance 'jnone) (set! ImageCopyUtil.jcell_instance (ImageCopyUtil.jnew_0)))
  ImageCopyUtil.jcell_instance)
(define (ImageCopyUtil.jsetstatic_instance value) (set! ImageCopyUtil.jcell_instance value))

(define (ImageCopyUtil.jnew_0)
  (define this (new ImageCopyUtil% [jclass "ImageCopyUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_imageCreationUtil this (ImageCreationUtil.jm_getInstance_0))
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (set-field! f_gameFeatureFactory this (GameFeatureFactory.jm_getInstance_0))
    (set-field! f_features this (Features.jm_getInstance_0))
    (set-field! f_NO_COPY this "J2ME does not need to copy images after initial loading")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ImageCopyUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageCopyUtil.jstatic_instance)))))



