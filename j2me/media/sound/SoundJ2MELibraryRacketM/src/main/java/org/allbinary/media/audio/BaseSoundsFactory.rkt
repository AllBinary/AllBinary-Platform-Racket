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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./SoundsFactoryInterface.rkt")
(provide (all-defined-out))

(define BaseSoundsFactory%
  (class JObject%
    (super-new)
    (field [f_initialized #f])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getSoundInterfaceArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.newArray JR.null 0)))))
    (define/public (jm_setInitialized_1 _initialized)
    (let ()
      (let/ec jreturn
        (set-field! f_initialized this _initialized))))
    (define/public (jm_isInitialized_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initialized this)))))))
(define (BaseSoundsFactory.jclassValue) BaseSoundsFactory%)

(define (BaseSoundsFactory.jnew_0)
  (define this (new BaseSoundsFactory% [jclass "BaseSoundsFactory"]))
    
  this)



