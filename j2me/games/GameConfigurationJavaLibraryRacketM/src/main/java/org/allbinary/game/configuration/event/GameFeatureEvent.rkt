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
;; package org.allbinary.game.configuration.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(provide (all-defined-out))

(define GameFeatureEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_whatChanged JR.null])
    (define/public (jm_getWhatChanged_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_whatChanged this)))))
    (define/public (jm_getGameOption_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getSource_0)))))))
(define (GameFeatureEvent.jclassValue) GameFeatureEvent%)

(define (GameFeatureEvent.jnew_2 _anyType _whatChanged)
  (define this (new GameFeatureEvent% [jclass "GameFeatureEvent"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_whatChanged this _whatChanged)))
  this)



