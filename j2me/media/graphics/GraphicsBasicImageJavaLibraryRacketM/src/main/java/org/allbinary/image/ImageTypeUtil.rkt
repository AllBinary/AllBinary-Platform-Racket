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
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define ImageTypeUtil%
  (class JObject%
    (super-new)
    (field [f_PNG JR.null])
    (field [f_JPG JR.null])
    (field [f_GIF JR.null])
    (field [f_list JR.null])
    (define/public (jm_isSupported_1 _mediaFileType)
    (let ([_name JR.null][_index JR.null])
      (let/ec jreturn
        (set! _mediaFileType (JR.toLowerCase _mediaFileType))
        (begin
            (set! _index (JR.i32 (- (send (get-field f_list this) jm_size_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _name (send (get-field f_list this) jm_get_1 _index))
            (when (eq? (JR.compareTo _mediaFileType _name) 0)
                (begin
                (jreturn #t))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn #f))))))
(define (ImageTypeUtil.jclassValue) ImageTypeUtil%)

(define ImageTypeUtil.jcell_SINGLETON 'jnone)
(define (ImageTypeUtil.jstatic_SINGLETON)
  (when (eq? ImageTypeUtil.jcell_SINGLETON 'jnone) (set! ImageTypeUtil.jcell_SINGLETON (ImageTypeUtil.jnew_0)))
  ImageTypeUtil.jcell_SINGLETON)
(define (ImageTypeUtil.jsetstatic_SINGLETON value) (set! ImageTypeUtil.jcell_SINGLETON value))

(define (ImageTypeUtil.jnew_0)
  (define this (new ImageTypeUtil% [jclass "ImageTypeUtil"]))
    (set-field! f_PNG this "png")
    (set-field! f_JPG this "jpg")
    (set-field! f_GIF this "gif")
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_add_1 (get-field f_JPG this))
        (send (get-field f_list this) jm_add_1 (get-field f_GIF this))
        (send (get-field f_list this) jm_add_1 (get-field f_PNG this))))
  this)

(define (ImageTypeUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageTypeUtil.jstatic_SINGLETON)))))



