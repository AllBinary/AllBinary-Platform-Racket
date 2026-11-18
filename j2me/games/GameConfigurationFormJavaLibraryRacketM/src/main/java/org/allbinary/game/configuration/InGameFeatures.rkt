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
;; package org.allbinary.game.configuration

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/init/Init.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.rkt" (GameFeatureChoiceGroups.jm_getExclusiveInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups.rkt" (InGameFeatureChoiceGroups.jm_getExclusiveInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory.rkt" (SensorFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/TouchFeatureFactory.rkt" (TouchFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/gyro/OrientationData.rkt" (OrientationData.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define InGameFeatures%
  (class Init%
    (super-new)
    (define/override (jm_init_0)
    (let ([_LABEL JR.null][_orientationData JR.null][_exclusiveOrientationSensorVector JR.null][_inGameFeatureChoiceGroups JR.null][_inGameExclusiveOrientationSensorVectorCanBeNull JR.null][_inGameExclusiveOrientationSensorVector JR.null][_features JR.null][_exclusiveScreenButtonsVector JR.null][_touchFeatureFactory JR.null])
      (let/ec jreturn
        (set! _LABEL "Screen Buttons")
        (set! _orientationData (OrientationData.jm_getInstance_0))
        (set! _exclusiveOrientationSensorVector (JR.className (JR.className (GameFeatureChoiceGroups.jm_getExclusiveInstance_0))))
        (set! _inGameFeatureChoiceGroups (InGameFeatureChoiceGroups.jm_getExclusiveInstance_0))
        (when (not (JR.null? _exclusiveOrientationSensorVector))
            (begin
            (set! _inGameExclusiveOrientationSensorVectorCanBeNull (JR.className (send _inGameFeatureChoiceGroups jm_get_0)))
            (if (JR.null? _inGameExclusiveOrientationSensorVectorCanBeNull)
                (begin
                (send this jm_addToInGameMenu_0))
                (begin
                (set! _inGameExclusiveOrientationSensorVector _inGameExclusiveOrientationSensorVectorCanBeNull)
                (when (= (send _inGameExclusiveOrientationSensorVector jm_size_0) 0)
                    (begin
                    (send this jm_addToInGameMenu_0)))))))
        (set! _features (Features.jm_getInstance_0))
        (when (or (or (send _features jm_isFeature_1 (get-field f_SHOW_SCREEN_BUTTONS (TouchFeatureFactory.jm_getInstance_0))) (send _features jm_isFeature_1 (get-field f_AUTO_HIDE_SHOW_SCREEN_BUTTONS (TouchFeatureFactory.jm_getInstance_0)))) (send _features jm_isFeature_1 (get-field f_HIDE_SCREEN_BUTTONS (TouchFeatureFactory.jm_getInstance_0))))
            (begin
            (set! _exclusiveScreenButtonsVector (BasicArrayListD.jnew_0))
            (set! _touchFeatureFactory (TouchFeatureFactory.jm_getInstance_0))
            (send _exclusiveScreenButtonsVector jm_add_1 (get-field f_AUTO_HIDE_SHOW_SCREEN_BUTTONS _touchFeatureFactory))
            (send _exclusiveScreenButtonsVector jm_add_1 (get-field f_SHOW_SCREEN_BUTTONS _touchFeatureFactory))
            (send _exclusiveScreenButtonsVector jm_add_1 (get-field f_HIDE_SCREEN_BUTTONS _touchFeatureFactory))
            (send _inGameFeatureChoiceGroups jm_add_2 _LABEL _exclusiveScreenButtonsVector))))))
    (define/public (jm_addToInGameMenu_0)
    (let ([_orientationData JR.null][_inGameExclusiveOrientationSensorVector JR.null])
      (let/ec jreturn
        (set! _orientationData (OrientationData.jm_getInstance_0))
        (set! _inGameExclusiveOrientationSensorVector (BasicArrayListD.jnew_0))
        (send _inGameExclusiveOrientationSensorVector jm_add_1 (get-field f_ORIENTATION_SENSORS (SensorFeatureFactory.jm_getInstance_0)))
        (send _inGameExclusiveOrientationSensorVector jm_add_1 (get-field f_NO_ORIENTATION (SensorFeatureFactory.jm_getInstance_0)))
        (JR.className (InGameFeatureChoiceGroups.jm_getExclusiveInstance_0)))))
    (define/public (jm_isAny_0)
    (let ([_features JR.null][_touchFeatureFactory JR.null][_exclusiveOrientationSensorVector JR.null])
      (let/ec jreturn
        (set! _features (Features.jm_getInstance_0))
        (set! _touchFeatureFactory (TouchFeatureFactory.jm_getInstance_0))
        (when (or (or (send _features jm_isFeature_1 (get-field f_SHOW_SCREEN_BUTTONS _touchFeatureFactory)) (send _features jm_isFeature_1 (get-field f_AUTO_HIDE_SHOW_SCREEN_BUTTONS _touchFeatureFactory))) (send _features jm_isFeature_1 (get-field f_HIDE_SCREEN_BUTTONS _touchFeatureFactory)))
            (begin
            (jreturn #t)))
        (set! _exclusiveOrientationSensorVector (JR.className (JR.className (GameFeatureChoiceGroups.jm_getExclusiveInstance_0))))
        (when (not (JR.null? _exclusiveOrientationSensorVector))
            (begin
            (jreturn #t)))
        (jreturn #f))))))
(define (InGameFeatures.jclassValue) InGameFeatures%)

(define (InGameFeatures.jnew_0)
  (define this (new InGameFeatures% [jclass "InGameFeatures"]))
  this)



