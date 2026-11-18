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
;; package org.allbinary.business.advertisement

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define AdConfiguration%
  (class JObject%
    (super-new)
    (field [f_INNERACTIVE JR.null])
    (field [f_LEADBOLT JR.null])
    (field [f_ADMOB JR.null])
    (define/public (jm_getValidAdSpots_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.newArray JR.null 0)))))
    (define/public (jm_process_1 _gameState)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processDemo_1 _state)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setShowAds_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setToggleAds_1 _showAds)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isShowAds_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))))
(define (AdConfiguration.jclassValue) AdConfiguration%)

(define (AdConfiguration.jnew_1 _advertIdArray)
  (define this (new AdConfiguration% [jclass "AdConfiguration"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_INNERACTIVE this (vector-ref _advertIdArray 0))
        (set-field! f_ADMOB this (vector-ref _advertIdArray 1))
        (set-field! f_LEADBOLT this (vector-ref _advertIdArray 2))))
  this)



