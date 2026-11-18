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
;; package org.allbinary.game.resource

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ResourceLoadingLevel%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (field [f_level 0])
    (define/public (jm_getLevel_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_level this)))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))))
(define (ResourceLoadingLevel.jclassValue) ResourceLoadingLevel%)

(define (ResourceLoadingLevel.jnew_2 _name _level)
  (define this (new ResourceLoadingLevel% [jclass "ResourceLoadingLevel"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name)
        (set-field! f_level this _level)))
  this)



