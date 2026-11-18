#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.image.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./OpenGLESImageTranslate.rkt")
(provide (all-defined-out))

(define OpenGLESDeviceImageTranslate%
  (class OpenGLESImageTranslate%
    (super-new)
    (field [f_translateX 0.0])
    (field [f_translateY 0.0])
    (field [f_translateX2 0.0])
    (field [f_translateY2 0.0])
    (define/override (jm_translate_4 _gl _openGLESImage _x _y)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_imageProcessor _openGLESImage)))))
    (define/override (jm_translate2_2 _gl _openGLESImage)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_imageProcessor _openGLESImage)))))))
(define (OpenGLESDeviceImageTranslate.jclassValue) OpenGLESDeviceImageTranslate%)

(define (OpenGLESDeviceImageTranslate.jnew_0)
  (define this (new OpenGLESDeviceImageTranslate% [jclass "OpenGLESDeviceImageTranslate"]))
    (set-field! f_translateX this 0.0)
    (set-field! f_translateY this 0.0)
    (set-field! f_translateX2 this 0.0)
    (set-field! f_translateY2 this 0.0)
  this)



