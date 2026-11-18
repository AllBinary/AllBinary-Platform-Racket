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
;; package org.allbinary.game.configuration.feature

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../javax/microedition/lcdui/ChoiceGroup.rkt"
  "../../../../../javax/microedition/lcdui/ItemStateListener.rkt")
(lazy-require ["../../../../../org/allbinary/game/configuration/GameConfigurationGauge.rkt" (GameConfigurationGauge.jclassValue)])
(lazy-require ["../../../../../org/allbinary/game/configuration/GameConfigurationUtil.rkt" (GameConfigurationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./GameFeatureFactory.rkt" (GameFeatureFactory.jm_getInstance_0)])
(lazy-require ["./GameFeatureUtil.rkt" (GameFeatureUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define GameFeatureItemStateListener%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_gameOptionsForm JR.null])
    (define/public (jm_itemStateChanged_1 _item)
    (let ([_itemLabel JR.null][_gameFeatureUtil JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this "itemStateChanged" _e))])
            (set! _itemLabel (send _item jm_getLabel_0))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_ITEM_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 _itemLabel) jm_toString_0) this "itemStateChanged")
            (if (is-a? _item (GameConfigurationGauge.jclassValue))
                (begin
                (send (GameConfigurationUtil.jm_getInstance_0) jm_change_2 (get-field f_gameOptionsForm this) _item))
                (when (is-a? _item ChoiceGroup%)
                (begin
                (set! _gameFeatureUtil (GameFeatureUtil.jm_getInstance_0))
                (if (send _gameFeatureUtil jm_isExclusive_1 _itemLabel)
                    (begin
                    (send _gameFeatureUtil jm_updateExclusiveForChoiceGroup_1 _item))
                    (begin
                    (send _gameFeatureUtil jm_updateMultiple_1 _item))))))))))))
(define (GameFeatureItemStateListener.jclassValue) GameFeatureItemStateListener%)

(define GameFeatureItemStateListener.jcell_toggleList 'jnone)
(define (GameFeatureItemStateListener.jstatic_toggleList)
  (when (eq? GameFeatureItemStateListener.jcell_toggleList 'jnone) (set! GameFeatureItemStateListener.jcell_toggleList (BasicArrayListD.jnew_0)))
  GameFeatureItemStateListener.jcell_toggleList)
(define (GameFeatureItemStateListener.jsetstatic_toggleList value) (set! GameFeatureItemStateListener.jcell_toggleList value))

(define (GameFeatureItemStateListener.jnew_1 _gameOptionsForm)
  (define this (new GameFeatureItemStateListener% [jclass "GameFeatureItemStateListener"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (let ([_gameFeatureFactory JR.null])
      (let/ec jreturn
        (set-field! f_gameOptionsForm this _gameOptionsForm)
        (set! _gameFeatureFactory (GameFeatureFactory.jm_getInstance_0))
        (GameFeatureItemStateListener.jm_add_1 (get-field f_ARTIFICIAL_INTELLEGENCE_PROCESSOR _gameFeatureFactory))
        (GameFeatureItemStateListener.jm_add_1 (get-field f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR _gameFeatureFactory))
        (GameFeatureItemStateListener.jm_add_1 (get-field f_DAMAGE_FLOATERS _gameFeatureFactory))
        (GameFeatureItemStateListener.jm_add_1 (get-field f_DROPPED_ITEMS _gameFeatureFactory))
        (GameFeatureItemStateListener.jm_add_1 (get-field f_GAME_INPUT_LAYER_PROCESSOR _gameFeatureFactory))
        (GameFeatureItemStateListener.jm_add_1 (get-field f_HEALTH_BARS _gameFeatureFactory))
        (GameFeatureItemStateListener.jm_add_1 (get-field f_SOUND _gameFeatureFactory))
        (GameFeatureItemStateListener.jm_add_1 (get-field f_TICKABLE_LAYER_PROCESSOR _gameFeatureFactory))))
  this)

(define (GameFeatureItemStateListener.jm_add_1 _gameFeature)
    (let ()
      (let/ec jreturn
        (when (not (JR.className (GameFeatureItemStateListener.jstatic_toggleList)))
            (begin
            (JR.className (GameFeatureItemStateListener.jstatic_toggleList)))))))



