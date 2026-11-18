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
  "../../../java/io/InputStream.rkt")
(lazy-require ["../../../javax/microedition/lcdui/NullImage.rkt" (NullImage.jstatic_NULL_IMAGE)])
(lazy-require ["../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./ImageFactory.rkt" (ImageFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define ImageCacheBase%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_imageFactory JR.null])
    (field [f_hashtable JR.null])
    (field [f_SIZE 0])
    (field [f_widths JR.null])
    (field [f_heights JR.null])
    (field [f_listOfList JR.null])
    (field [f_availableListOfList JR.null])
    (field [f_volume 0])
    (field [f_nextIndex 0])
    (define/public (jm_getImage_1 _resourceId)
    (let ([_imageCanBeNull JR.null])
      (let/ec jreturn
        (set! _imageCanBeNull (send (get-field f_hashtable this) jm_get_1 _resourceId))
        (when (JR.null? _imageCanBeNull)
            (begin
            (jreturn (NullImage.jstatic_NULL_IMAGE))))
        (jreturn _imageCanBeNull))))
    (define/public (jm_releaseAll_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_listOfList this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_availableListOfList this) _index))
            (JR.className (vector-ref (get-field f_availableListOfList this) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "ImageCache: ") jm_append_1 (send this jm_toString_0)) jm_toString_0) this "releaseAll"))))
    (define/public (jm_getIndexWH_2 _width _height)
    (let ([_foundIndex JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _foundIndex (JR.i32 (- 1)))
        (set! _size (vector-length (get-field f_widths this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (when (and (= (vector-ref (get-field f_widths this) _index) _width) (= (vector-ref (get-field f_heights this) _index) _height))
                (begin
                (set! _foundIndex _index)
                (jreturn _foundIndex))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _foundIndex))))
    (define/public (jm_getFromAvailable_3 _foundIndex _width _height)
    (let ([_list JR.null])
      (let/ec jreturn
        (when (not (= _foundIndex (JR.i32 (- 1))))
            (begin
            (when (> (JR.className (vector-ref (get-field f_availableListOfList this) _foundIndex)) 0)
                (begin
                (set! _list (vector-ref (get-field f_availableListOfList this) _foundIndex))
                (jreturn (send _list jm_removeAt_1 (JR.i32 (- (send _list jm_size_0) 1))))))))
        (jreturn (NullImage.jstatic_NULL_IMAGE)))))
    (define/public (jm_get_3 _caller _width _height)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getWithKey_1 _key)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_createImage_3 _caller _width _height)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_imageFactory this) jm_createImage_3 _caller _width _height)))))
    (define/public (jm_createImageFromInputStream_2 _key _inputStream)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_imageFactory this) jm_createImageFromInputStream_2 _key _inputStream)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null][_width JR.null][_height JR.null][_total JR.null][_totalAvailable JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (begin
            (set! _index (JR.i32 (- (get-field f_nextIndex this) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _width (vector-ref (get-field f_widths this) _index))
            (set! _height (vector-ref (get-field f_heights this) _index))
            (set! _total (JR.className (vector-ref (get-field f_listOfList this) _index)))
            (set! _totalAvailable (JR.className (vector-ref (get-field f_availableListOfList this) _index)))
            (send _stringBuffer jm_append_1 " w: ")
            (send _stringBuffer jm_appendint_1 _width)
            (send _stringBuffer jm_append_1 " h: ")
            (send _stringBuffer jm_appendint_1 _height)
            (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
            (send _stringBuffer jm_append_1 (get-field f_TOTAL_LABEL (CommonLabels.jm_getInstance_0)))
            (send _stringBuffer jm_appendint_1 _total)
            (send _stringBuffer jm_append_1 " available: ")
            (send _stringBuffer jm_appendint_1 _totalAvailable))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_getHashtableP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_hashtable this)))))
    (define/public (jm_init_1 _image)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_initProgress_0)
    (let ()
      (let/ec jreturn (void))))))
(define (ImageCacheBase.jclassValue) ImageCacheBase%)

(define (ImageCacheBase.jnew_0)
  (define this (new ImageCacheBase% [jclass "ImageCacheBase"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_imageFactory this (ImageFactory.jm_getInstance_0))
    (set-field! f_hashtable this (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
    (set-field! f_SIZE this 128)
    (set-field! f_widths this (JR.newArray 0 (get-field f_SIZE this)))
    (set-field! f_heights this (JR.newArray 0 (get-field f_SIZE this)))
    (set-field! f_listOfList this (JR.newArray JR.null (get-field f_SIZE this)))
    (set-field! f_availableListOfList this (JR.newArray JR.null (get-field f_SIZE this)))
    (set-field! f_volume this 0)
    (set-field! f_nextIndex this 0)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_listOfList this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (vector-set! (get-field f_listOfList this) _index (BasicArrayListD.jnew_0)))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_availableListOfList this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (vector-set! (get-field f_availableListOfList this) _index (BasicArrayListD.jnew_0)))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))))
  this)



