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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./SpriteFactoryInterface.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/game/Sprite.rkt" (Sprite.jnew_3)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define SpriteFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_createSprite_3 _image _frameWidth _frameHeight)
    (let ()
      (let/ec jreturn
        (jreturn (Sprite.jnew_3 _image _frameWidth _frameHeight)))))))
(define (SpriteFactory.jclassValue) SpriteFactory%)

(define SpriteFactory.jcell_instance 'jnone)
(define (SpriteFactory.jstatic_instance)
  (when (eq? SpriteFactory.jcell_instance 'jnone) (set! SpriteFactory.jcell_instance (SpriteFactory.jnew_0)))
  SpriteFactory.jcell_instance)
(define (SpriteFactory.jsetstatic_instance value) (set! SpriteFactory.jcell_instance value))

(define (SpriteFactory.jnew_0)
  (define this (new SpriteFactory% [jclass "SpriteFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
  this)

(define (SpriteFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SpriteFactory.jstatic_instance)))))



