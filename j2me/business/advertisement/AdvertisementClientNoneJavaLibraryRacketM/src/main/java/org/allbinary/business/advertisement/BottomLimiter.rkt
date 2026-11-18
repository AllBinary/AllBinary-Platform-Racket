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
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["./GameAdStateFactory.rkt" (GameAdStateFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BottomLimiter%
  (class JObject%
    (super-new)
    (field [f_bottom 0])
    (field [f_deltaY 0])
    (field [f_lower 0])
    (field [f_higher 0])
    (define/public (jm_init_2 _lower _higher)
    (let ()
      (let/ec jreturn
        (set-field! f_lower this _lower)
        (set-field! f_higher this _higher))))
    (define/public (jm_update_0)
    (let ([_displayInfo JR.null][_gameAdState JR.null])
      (let/ec jreturn
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (set! _gameAdState (send (GameAdStateFactory.jm_getInstance_0) jm_getCurrentInstance_0))
        (if (send _gameAdState jm_isShowingAt_0)
            (begin
            (set-field! f_deltaY this (get-field f_higher this)))
            (begin
            (set-field! f_deltaY this (get-field f_lower this))))
        (set-field! f_bottom this (JR.i32 (- (send _displayInfo jm_getLastHeight_0) (get-field f_deltaY this)))))))
    (define/public (jm_getDeltaY_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_deltaY this)))))
    (define/public (jm_getBottom_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_bottom this)))))))
(define (BottomLimiter.jclassValue) BottomLimiter%)

(define BottomLimiter.jcell_instance 'jnone)
(define (BottomLimiter.jstatic_instance)
  (when (eq? BottomLimiter.jcell_instance 'jnone) (set! BottomLimiter.jcell_instance (BottomLimiter.jnew_0)))
  BottomLimiter.jcell_instance)
(define (BottomLimiter.jsetstatic_instance value) (set! BottomLimiter.jcell_instance value))

(define (BottomLimiter.jnew_0)
  (define this (new BottomLimiter% [jclass "BottomLimiter"]))
    
    
    
    
    (let ()
      (let/ec jreturn (void)))
  this)

(define (BottomLimiter.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BottomLimiter.jstatic_instance)))))



