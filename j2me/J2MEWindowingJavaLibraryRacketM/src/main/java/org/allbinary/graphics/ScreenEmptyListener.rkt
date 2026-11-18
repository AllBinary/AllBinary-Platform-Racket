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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./ScreenListenerInterface.rkt")
(provide (all-defined-out))

(define ScreenEmptyListener%
  (class JObject%
    (super-new)
    (define/public (jm_onFullScreen_1 _isFullScreen)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onFullScreenDisplay_0)
    (let ()
      (let/ec jreturn (void))))))
(define (ScreenEmptyListener.jclassValue) ScreenEmptyListener%)

(define (ScreenEmptyListener.jnew_0)
  (define this (new ScreenEmptyListener% [jclass "ScreenEmptyListener"]))
  this)



