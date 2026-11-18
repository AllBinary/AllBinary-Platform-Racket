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
;; package org.allbinary.image

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/io/InputStream.rkt"
  "../../../java/lang/Thread.rkt"
  "./ImageCacheBase.rkt")
(lazy-require ["../../../javax/microedition/lcdui/NullImage.rkt" (NullImage.jstatic_NULL_IMAGE)])
(lazy-require ["../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isHTML_0)])
(lazy-require ["../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/data/resource/ResourceUtil.rkt" (ResourceUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/game/gd/resource/GDResources.rkt" (GDResources.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/system/Memory.rkt" (Memory.jm_getInfo_0)])
(provide (all-defined-out))

(define ImageCache%
  (class ImageCacheBase%
    (super-new)
    (field [f_commonStrings JR.null])
    (field [f_tsUtil JR.null])
    (define/public (jm_addListener_1 _renderer)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getIndex_1 _key)
    (let ([_gdResources JR.null][_resourceStringArray JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _gdResources (GDResources.jm_getInstance_0))
        (set! _resourceStringArray (get-field f_resourceStringArray _gdResources))
        (set! _size (vector-length _resourceStringArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (when (eq? (vector-ref _resourceStringArray _index) _key)
                (begin
                (jreturn _index))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (JR.className (get-field f_logUtil this))
        (raise (JR.newException "RuntimeException")))))
    (define/override (jm_get_3 _caller _width _height)
    (let ([_foundIndex JR.null][_image JR.null][_widths JR.null])
      (let/ec jreturn
        (set! _foundIndex (send this jm_getIndexWH_2 _width _height))
        (set! _image (send this jm_getFromAvailable_3 _foundIndex _width _height))
        (when (eq? _image (NullImage.jstatic_NULL_IMAGE))
            (begin
            (set-field! f_volume this (JR.i32 (+ (get-field f_volume this) (JR.i32 (* _width _height)))))
            (when (> (get-field f_volume this) 32000)
                (begin
                (send (get-field f_tsUtil this) jm_gc_0)
                (set-field! f_volume this 0)))
            (set! _image (send this jm_createImage_3 _caller _width _height))
            (set! _widths (get-field f_widths this))
            (when (> (get-field f_nextIndex this) (JR.i32 (- (vector-length _widths) 1)))
                (begin
                (when (= _foundIndex (JR.i32 (- 1)))
                    (begin
                    (set! _foundIndex (get-field f_nextIndex this))
                    (vector-set! _widths (get-field f_nextIndex this) _width)
                    (vector-set! (get-field f_heights this) (get-field f_nextIndex this) _height)
                    (set-field! f_nextIndex this (JR.i32 (+ (get-field f_nextIndex this) 1)))))
                (JR.className (vector-ref (get-field f_listOfList this) _foundIndex))))))
        (jreturn _image))))
    (define/override (jm_getWithKey_1 _key)
    (let ([_image JR.null][_resourceUtil JR.null][_resourceInputStream JR.null])
      (let/ec jreturn
        (set! _image (send this jm_getImage_1 _key))
        (when (eq? _image (NullImage.jstatic_NULL_IMAGE))
            (begin
            (set! _resourceUtil (ResourceUtil.jm_getInstance_0))
            (set! _resourceInputStream (send _resourceUtil jm_getResourceAsStream_1 _key))
            (when (JR.null? _resourceInputStream)
                (begin
                (raise (JR.newException "RuntimeException" (send (send (send (StringMaker.jnew_0) jm_append_1 "Image resource is not available for key: ") jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _key)) jm_toString_0)))))
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this))
                (JR.className (get-field f_logUtil this))
                (send (get-field f_tsUtil this) jm_gc_0)
                (send (get-field f_tsUtil this) jm_gc_0)
                (JR.className (get-field f_logUtil this))
                (Thread.jm_sleep_1 100)
                (set! _image (send this jm_createImageFromInputStream_2 _key _resourceInputStream)))])
                (set! _image (send this jm_createImageFromInputStream_2 _key _resourceInputStream)))
            (if (J2MEUtil.jm_isHTML_0)
                (begin
                (void))
                (begin
                (send _resourceInputStream jm_close_0)))
            (JR.className (get-field f_hashtable this))))
        (jreturn _image))))
    (define/public (jm_loadImageForAnimation_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_progressEnded_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_runTask_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isLazy_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))
(define (ImageCache.jclassValue) ImageCache%)

(define ImageCache.jcell_NULL_IMAGE_CACHE 'jnone)
(define (ImageCache.jstatic_NULL_IMAGE_CACHE)
  (when (eq? ImageCache.jcell_NULL_IMAGE_CACHE 'jnone) (set! ImageCache.jcell_NULL_IMAGE_CACHE (ImageCache.jnew_0)))
  ImageCache.jcell_NULL_IMAGE_CACHE)
(define (ImageCache.jsetstatic_NULL_IMAGE_CACHE value) (set! ImageCache.jcell_NULL_IMAGE_CACHE value))

(define (ImageCache.jnew_0)
  (define this (new ImageCache% [jclass "ImageCache"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)



