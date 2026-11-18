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
(lazy-require ["../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory.rkt" (ResourceLoadingLevelFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define GameInitializedEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_resourceLoadingLevel JR.null])
    (field [f_level 0])
    (define/public (jm_setLevel_1 _level)
    (let ()
      (let/ec jreturn
        (set-field! f_level this _level)
        (set-field! f_resourceLoadingLevel this (get-field f_LEVEL (ResourceLoadingLevelFactory.jm_getInstance_0))))))
    (define/public (jm_getLevel_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_level this)))))
    (define/public (jm_setResourceLoadingLevel_1 _resourceLoadingLevel)
    (let ()
      (let/ec jreturn
        (set-field! f_resourceLoadingLevel this _resourceLoadingLevel)
        (set-field! f_level this (send (get-field f_resourceLoadingLevel this) jm_getLevel_0)))))
    (define/public (jm_getResourceLoadingLevel_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_resourceLoadingLevel this)))))))
(define (GameInitializedEvent.jclassValue) GameInitializedEvent%)

(define (GameInitializedEvent.jnew_1 _anyType)
  (define this (new GameInitializedEvent% [jclass "GameInitializedEvent"]))
    (set-field! f_resourceLoadingLevel this (get-field f_LEVEL (ResourceLoadingLevelFactory.jm_getInstance_0)))
    
    (let ()
      (let/ec jreturn
        (void)))
  this)



