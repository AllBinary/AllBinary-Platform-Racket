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
(lazy-require ["../../../org/allbinary/MIDPUtil.rkt" (MIDPUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ChoiceGroupImageFactory%
  (class JObject%
    (super-new)
    (field [f_multiOff JR.null])
    (field [f_multiOn JR.null])
    (field [f_radioOff JR.null])
    (field [f_radioOn JR.null])
    (field [f_midpUtil JR.null])
    (field [f_imgMultiOffO JR.null])
    (field [f_imgMultiOnO JR.null])
    (field [f_imgRadioOffO JR.null])
    (field [f_imgRadioOnO JR.null])
    (field [f_imgMultiOff JR.null])
    (field [f_imgMultiOn JR.null])
    (field [f_imgRadioOff JR.null])
    (field [f_imgRadioOn JR.null])
    (field [f_imageArray JR.null])
    (define/public (jm_getImageArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_imageArray this)))))
    (define/public (jm_init_1 _imageArray)
    (let ()
      (let/ec jreturn
        (set-field! f_imgMultiOff this (vector-ref _imageArray 0))
        (vector-set! (get-field f_imageArray this) 0 (get-field f_imgMultiOff this))
        (set-field! f_imgMultiOn this (vector-ref _imageArray 1))
        (vector-set! (get-field f_imageArray this) 1 (get-field f_imgMultiOn this))
        (set-field! f_imgRadioOff this (vector-ref _imageArray 2))
        (vector-set! (get-field f_imageArray this) 2 (get-field f_imgRadioOff this))
        (set-field! f_imgRadioOn this (vector-ref _imageArray 3))
        (vector-set! (get-field f_imageArray this) 3 (get-field f_imgRadioOn this)))))))
(define (ChoiceGroupImageFactory.jclassValue) ChoiceGroupImageFactory%)

(define ChoiceGroupImageFactory.jcell_instance 'jnone)
(define (ChoiceGroupImageFactory.jstatic_instance)
  (when (eq? ChoiceGroupImageFactory.jcell_instance 'jnone) (set! ChoiceGroupImageFactory.jcell_instance (ChoiceGroupImageFactory.jnew_0)))
  ChoiceGroupImageFactory.jcell_instance)
(define (ChoiceGroupImageFactory.jsetstatic_instance value) (set! ChoiceGroupImageFactory.jcell_instance value))

(define (ChoiceGroupImageFactory.jnew_0)
  (define this (new ChoiceGroupImageFactory% [jclass "ChoiceGroupImageFactory"]))
    (set-field! f_multiOff this (vector (JR.i8 (JR.i32 (- 119))) 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 10 0 0 0 11 2 3 0 0 0 59 0 (JR.i8 (JR.i32 (- 12))) (JR.i8 (JR.i32 (- 117))) 0 0 0 6 80 76 84 69 (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 57))) 75 (JR.i8 (JR.i32 (- 33))) (JR.i8 (JR.i32 (- 8))) 0 0 0 30 73 68 65 84 120 (JR.i8 (JR.i32 (- 38))) 99 96 96 96 96 12 101 (JR.i8 (JR.i32 (- 8))) (JR.i8 (JR.i32 (- 51))) (JR.i8 (JR.i32 (- 32))) (JR.i8 (JR.i32 (- 64))) 32 (JR.i8 (JR.i32 (- 64))) (JR.i8 (JR.i32 (- 60))) (JR.i8 (JR.i32 (- 64))) (JR.i8 (JR.i32 (- 64))) (JR.i8 (JR.i32 (- 128))) 11 51 (JR.i8 (JR.i32 (- 122))) 50 (JR.i8 (JR.i32 (- 4))) 6 0 63 116 3 1 53 (JR.i8 (JR.i32 (- 108))) 39 (JR.i8 (JR.i32 (- 26))) 0 0 0 0 73 69 78 68 (JR.i8 (JR.i32 (- 82))) 66 96 (JR.i8 (JR.i32 (- 126)))))
    (set-field! f_multiOn this (vector (JR.i8 (JR.i32 (- 119))) 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 10 0 0 0 11 2 3 0 0 0 59 0 (JR.i8 (JR.i32 (- 12))) (JR.i8 (JR.i32 (- 117))) 0 0 0 12 80 76 84 69 (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) 106 106 106 2 2 2 106 (JR.i8 (JR.i32 (- 103))) 14 (JR.i8 (JR.i32 (- 47))) 0 0 0 53 73 68 65 84 120 (JR.i8 (JR.i32 (- 38))) 99 96 96 124 (JR.i8 (JR.i32 (- 64))) (JR.i8 (JR.i32 (- 16))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 77))) 3 (JR.i8 (JR.i32 (- 45))) 65 (JR.i8 (JR.i32 (- 111))) 15 76 12 108 12 76 12 (JR.i8 (JR.i32 (- 4))) 12 76 12 18 12 76 (JR.i8 (JR.i32 (- 68))) 127 24 (JR.i8 (JR.i32 (- 104))) 126 45 96 96 (JR.i8 (JR.i32 (- 7))) (JR.i8 (JR.i32 (- 11))) (JR.i8 (JR.i32 (- 109))) (JR.i8 (JR.i32 (- 127))) (JR.i8 (JR.i32 (- 23))) (JR.i8 (JR.i32 (- 65))) 3 3 (JR.i8 (JR.i32 (- 29))) 127 (JR.i8 (JR.i32 (- 122))) (JR.i8 (JR.i32 (- 113))) 0 5 37 12 (JR.i8 (JR.i32 (- 34))) 1 (JR.i8 (JR.i32 (- 99))) (JR.i8 (JR.i32 (- 83))) 100 0 0 0 0 73 69 78 68 (JR.i8 (JR.i32 (- 82))) 66 96 (JR.i8 (JR.i32 (- 126)))))
    (set-field! f_radioOff this (vector (JR.i8 (JR.i32 (- 119))) 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 11 0 0 0 11 2 3 0 0 0 (JR.i8 (JR.i32 (- 44))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 97))) (JR.i8 (JR.i32 (- 75))) 0 0 0 9 80 76 84 69 (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) 106 106 106 (JR.i8 (JR.i32 (- 44))) 13 (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 24))) 0 0 0 42 73 68 65 84 120 (JR.i8 (JR.i32 (- 38))) 99 96 90 (JR.i8 (JR.i32 (- 59))) (JR.i8 (JR.i32 (- 64))) 32 (JR.i8 (JR.i32 (- 63))) 48 (JR.i8 (JR.i32 (- 127))) 65 (JR.i8 (JR.i32 (- 127))) 65 (JR.i8 (JR.i32 (- 127))) 41 (JR.i8 (JR.i32 (- 127))) (JR.i8 (JR.i32 (- 31))) 5 19 3 3 3 50 102 80 96 80 96 (JR.i8 (JR.i32 (- 6))) (JR.i8 (JR.i32 (- 63))) 80 (JR.i8 (JR.i32 (- 64))) (JR.i8 (JR.i32 (- 64))) (JR.i8 (JR.i32 (- 76))) (JR.i8 (JR.i32 (- 118))) 1 0 113 24 5 61 73 (JR.i8 (JR.i32 (- 68))) (JR.i8 (JR.i32 (- 100))) 98 0 0 0 0 73 69 78 68 (JR.i8 (JR.i32 (- 82))) 66 96 (JR.i8 (JR.i32 (- 126)))))
    (set-field! f_radioOn this (vector (JR.i8 (JR.i32 (- 119))) 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 11 0 0 0 11 2 3 0 0 0 (JR.i8 (JR.i32 (- 44))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 97))) (JR.i8 (JR.i32 (- 75))) 0 0 0 12 80 76 84 69 (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) 106 106 106 2 2 2 106 (JR.i8 (JR.i32 (- 103))) 14 (JR.i8 (JR.i32 (- 47))) 0 0 0 50 73 68 65 84 120 (JR.i8 (JR.i32 (- 38))) 5 (JR.i8 (JR.i32 (- 63))) 65 13 0 32 12 4 (JR.i8 (JR.i32 (- 63))) (JR.i8 (JR.i32 (- 19))) (JR.i8 (JR.i32 (- 11))) (JR.i8 (JR.i32 (- 117))) 1 18 68 (JR.i8 (JR.i32 (- 100))) 10 52 19 94 72 64 17 101 (JR.i8 (JR.i32 (- 122))) 44 (JR.i8 (JR.i32 (- 44))) (JR.i8 (JR.i32 (- 29))) 98 (JR.i8 (JR.i32 (- 52))) 89 77 (JR.i8 (JR.i32 (- 102))) 40 2 85 (JR.i8 (JR.i32 (- 95))) (JR.i8 (JR.i32 (- 73))) (JR.i8 (JR.i32 (- 63))) (JR.i8 (JR.i32 (- 104))) (JR.i8 (JR.i32 (- 63))) 37 (JR.i8 (JR.i32 (- 117))) 15 (JR.i8 (JR.i32 (- 40))) 119 10 41 78 26 (JR.i8 (JR.i32 (- 79))) 59 0 0 0 0 73 69 78 68 (JR.i8 (JR.i32 (- 82))) 66 96 (JR.i8 (JR.i32 (- 126)))))
    (set-field! f_midpUtil this (MIDPUtil.jm_getInstance_0))
    (set-field! f_imgMultiOffO this (send (get-field f_midpUtil this) jm_createImageFromByteArray_3 (get-field f_multiOff this) 0 (vector-length (get-field f_multiOff this))))
    (set-field! f_imgMultiOnO this (send (get-field f_midpUtil this) jm_createImageFromByteArray_3 (get-field f_multiOn this) 0 (vector-length (get-field f_multiOn this))))
    (set-field! f_imgRadioOffO this (send (get-field f_midpUtil this) jm_createImageFromByteArray_3 (get-field f_radioOff this) 0 (vector-length (get-field f_radioOff this))))
    (set-field! f_imgRadioOnO this (send (get-field f_midpUtil this) jm_createImageFromByteArray_3 (get-field f_radioOn this) 0 (vector-length (get-field f_radioOn this))))
    (set-field! f_imgMultiOff this (get-field f_imgMultiOffO this))
    (set-field! f_imgMultiOn this (get-field f_imgMultiOnO this))
    (set-field! f_imgRadioOff this (get-field f_imgRadioOffO this))
    (set-field! f_imgRadioOn this (get-field f_imgRadioOnO this))
    (set-field! f_imageArray this (vector (get-field f_imgMultiOff this) (get-field f_imgMultiOn this) (get-field f_imgRadioOff this) (get-field f_imgRadioOn this)))
  this)

(define (ChoiceGroupImageFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ChoiceGroupImageFactory.jstatic_instance)))))



