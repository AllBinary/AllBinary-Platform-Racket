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
;; package org.allbinary.graphics.font

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define MyFontProcessor%
  (class JObject%
    (super-new)
    (define/public (jm_process_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (MyFontProcessor.jclassValue) MyFontProcessor%)

(define MyFontProcessor.jcell_instance 'jnone)
(define (MyFontProcessor.jstatic_instance)
  (when (eq? MyFontProcessor.jcell_instance 'jnone) (set! MyFontProcessor.jcell_instance (MyFontProcessor.jnew_0)))
  MyFontProcessor.jcell_instance)
(define (MyFontProcessor.jsetstatic_instance value) (set! MyFontProcessor.jcell_instance value))

(define (MyFontProcessor.jnew_0)
  (define this (new MyFontProcessor% [jclass "MyFontProcessor"]))
  this)

(define (MyFontProcessor.jm_defaultCharWidth_1 _font)
    (let ()
      (let/ec jreturn
        (jreturn (send _font jm_charWidth_1 (char->integer #\C))))))

(define (MyFontProcessor.jm_defaultStringWidth_2 _font _size)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (* (MyFontProcessor.jm_defaultCharWidth_1 _font) _size))))))

(define (MyFontProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MyFontProcessor.jstatic_instance)))))



