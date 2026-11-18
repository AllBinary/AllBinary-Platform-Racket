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
;; package org.allbinary.game.init

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./BaseGameInitialization.rkt")
(lazy-require ["../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory.rkt" (ResourceLoadingLevelFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define CommonGameInitialization%
  (class BaseGameInitialization%
    (super-new)
    (inherit/super jm_resourceInitialization_1)
    (field [f_commonStrings JR.null])
    (define/override (jm_init_3 _abeClientInformation _commandListener _level)
    (let ([_resourceLoadingLevelFactory JR.null][_progressCanvas JR.null])
      (let/ec jreturn
        (super jm_init_3 _abeClientInformation _commandListener _level)
        (set! _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (when (and (not (send this jm_isGameInitialized_0)) (= _level (JR.className (get-field f_LOAD_ALL _resourceLoadingLevelFactory))))
            (begin
            (send this jm_setGameInitialized_1 #t)
            (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
            (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_init_0)
            (send _progressCanvas jm_addNormalPortion_2 50 "Integers")
            (send (PointFactory.jm_getInstance_0) jm_init_0)
            (send _progressCanvas jm_addNormalPortion_2 50 "Points")
            (AngleFactory.jm_getInstance_0)
            (send _progressCanvas jm_addNormalPortion_2 50 "Angles")
            (send this jm_initGame_0)
            (JR.className (vector-ref (get-field f_resourceInitializationArray this) (get-field f_GAME_RESOURCES this)))))
        (super jm_resourceInitialization_1 _level))))
    (define/public (jm_initGame_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))))
(define (CommonGameInitialization.jclassValue) CommonGameInitialization%)

(define (CommonGameInitialization.jnew_2 _resourceInitializationArray _portion)
  (define this (new CommonGameInitialization% [jclass "CommonGameInitialization"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)



