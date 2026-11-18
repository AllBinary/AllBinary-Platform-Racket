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
  "../../../allbinary_java.rkt"
  "./PlatformImage.rkt")
(provide (all-defined-out))

;PlatformNullImageJavaLibrary
(define PostLoadPlatformImage%
  (class PlatformImage%
    (super-new)))
(define (PostLoadPlatformImage.jclassValue) PostLoadPlatformImage%)

(define PostLoadPlatformImage.jcell_instance 'jnone)
(define (PostLoadPlatformImage.jstatic_instance)
  (when (eq? PostLoadPlatformImage.jcell_instance 'jnone) (set! PostLoadPlatformImage.jcell_instance (PostLoadPlatformImage.jnew_0)))
  PostLoadPlatformImage.jcell_instance)
(define (PostLoadPlatformImage.jsetstatic_instance value) (set! PostLoadPlatformImage.jcell_instance value))

(define (PostLoadPlatformImage.jnew_0)
  (define this (new PostLoadPlatformImage% [jclass "PostLoadPlatformImage"]))
  this)

(define (PostLoadPlatformImage.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PostLoadPlatformImage.jstatic_instance)))))



