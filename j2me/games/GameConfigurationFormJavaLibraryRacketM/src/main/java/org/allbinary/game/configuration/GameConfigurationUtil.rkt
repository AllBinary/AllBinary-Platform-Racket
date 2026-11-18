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
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./GameConfigurationSingleton.rkt" (GameConfigurationSingleton.jm_getInstance_0)])
(lazy-require ["./GameConfigurationGauge.rkt" (GameConfigurationGauge.jclassValue)])
(lazy-require ["./GameConfigurationCentral.rkt" (GameConfigurationCentral.jm_getInstance_0)])
(provide (all-defined-out))

(define GameConfigurationUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_GAUGE_UPDATE JR.null])
    (field [f_FROM JR.null])
    (field [f_TO JR.null])
    (field [f_COMPETITION_VALUE 0])
    (define/public (jm_change_2 _gameOptionsForm _gauge)
    (let ([_gameConfigurationSingleton JR.null][_gameConfiguration JR.null])
      (let/ec jreturn
        (send this jm_update_1 _gauge)
        (set! _gameConfigurationSingleton (GameConfigurationSingleton.jm_getInstance_0))
        (set! _gameConfiguration (send _gameConfigurationSingleton jm_getInstanceByName_1 (send _gauge jm_getLabel_0)))
        (send this jm_updateChallange_2 _gameOptionsForm _gameConfiguration))))
    (define/public (jm_update_1 _gauge)
    (let ([_gameConfigurationSingleton JR.null][_gameConfiguration JR.null][_smallIntegerSingletonFactory JR.null][_value JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set! _gameConfigurationSingleton (GameConfigurationSingleton.jm_getInstance_0))
        (set! _gameConfiguration (send _gameConfigurationSingleton jm_getInstanceByName_1 (send _gauge jm_getLabel_0)))
        (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (set! _value (send _smallIntegerSingletonFactory jm_getAt_1 (JR.i32 (+ (send _gauge jm_getValue_0) (JR.className (send _gameConfiguration jm_getMinValue_0))))))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (get-field f_GAUGE_UPDATE this))
        (send _stringBuffer jm_append_1 (send _gameConfiguration jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_FROM this))
        (send _stringBuffer jm_appendint_1 (JR.className (send _gameConfiguration jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_TO this))
        (send _stringBuffer jm_appendint_1 (send _value jm_intValue_0))
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
        (send _gameConfiguration jm_setValue_1 _value))))
    (define/public (jm_setDefault_1 _gauge)
    (let ([_gameConfigurationSingleton JR.null][_gameConfiguration JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set! _gameConfigurationSingleton (GameConfigurationSingleton.jm_getInstance_0))
        (set! _gameConfiguration (send _gameConfigurationSingleton jm_getInstanceByName_1 (send _gauge jm_getLabel_0)))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "Gauge Default: ")
        (send _stringBuffer jm_append_1 (send _gameConfiguration jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_TO this))
        (send _stringBuffer jm_appendint_1 (JR.className (send _gameConfiguration jm_getDefaultValue_0)))
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this "setDefault")
        (send _gauge jm_setValue_1 (JR.i32 (- (JR.className (send _gameConfiguration jm_getDefaultValue_0)) (JR.className (send _gameConfiguration jm_getMinValue_0)))))
        (send _gameConfiguration jm_setValue_1 (send _gameConfiguration jm_getDefaultValue_0)))))
    (define/public (jm_updateChallange_2 _gameOptionsForm _gameConfiguration)
    (let ([_gameConfigurationSingleton JR.null][_gameConfigurationCentral JR.null][_size JR.null][_item JR.null][_gauge JR.null][_name JR.null][_nextGameConfiguration JR.null][_index JR.null])
      (let/ec jreturn
        (set! _gameConfigurationSingleton (GameConfigurationSingleton.jm_getInstance_0))
        (set! _gameConfigurationCentral (GameConfigurationCentral.jm_getInstance_0))
        (when (eq? _gameConfiguration (get-field f_CHALLENGE_LEVEL _gameConfigurationCentral))
            (begin
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this "updateChallange")
            (JR.className (get-field f_COLLIDE_DAMAGE _gameConfigurationCentral))
            (JR.className (get-field f_ATTACK_CHALLENGE_LEVEL _gameConfigurationCentral))
            (JR.className (get-field f_DURABILITY_CHALLENGE_LEVEL _gameConfigurationCentral))
            (JR.className (get-field f_SPEED_CHALLENGE_LEVEL _gameConfigurationCentral))
            (set! _size (send _gameOptionsForm jm_size_0))
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (set! _item (send _gameOptionsForm jm_get_1 _index))
                (when (is-a? _item (GameConfigurationGauge.jclassValue))
                    (begin
                    (set! _gauge _item)
                    (set! _name (send _item jm_getLabel_0))
                    (set! _nextGameConfiguration (send _gameConfigurationSingleton jm_getInstanceByName_1 _name))
                    (if (eq? _nextGameConfiguration (get-field f_COLLIDE_DAMAGE _gameConfigurationCentral))
                        (begin
                        (send _gauge jm_setValue_1 (JR.i32 (- (JR.className (JR.className (get-field f_COLLIDE_DAMAGE _gameConfigurationCentral))) (JR.className (send _gameConfiguration jm_getMinValue_0))))))
                        (if (eq? _nextGameConfiguration (get-field f_DURABILITY_CHALLENGE_LEVEL _gameConfigurationCentral))
                        (begin
                        (send _gauge jm_setValue_1 (JR.i32 (- (JR.className (JR.className (get-field f_DURABILITY_CHALLENGE_LEVEL _gameConfigurationCentral))) (JR.className (send _gameConfiguration jm_getMinValue_0))))))
                        (if (eq? _nextGameConfiguration (get-field f_ATTACK_CHALLENGE_LEVEL _gameConfigurationCentral))
                        (begin
                        (send _gauge jm_setValue_1 (JR.i32 (- (JR.className (JR.className (get-field f_ATTACK_CHALLENGE_LEVEL _gameConfigurationCentral))) (JR.className (send _gameConfiguration jm_getMinValue_0))))))
                        (when (eq? _nextGameConfiguration (get-field f_SPEED_CHALLENGE_LEVEL _gameConfigurationCentral))
                        (begin
                        (send _gauge jm_setValue_1 (JR.i32 (- (JR.className (JR.className (get-field f_SPEED_CHALLENGE_LEVEL _gameConfigurationCentral))) (JR.className (send _gameConfiguration jm_getMinValue_0)))))))))))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
    (define/public (jm_updateCompetitionValue_0)
    (let ([_gameConfigurationCentral JR.null])
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this "updateCompetitionValue")
        (set! _gameConfigurationCentral (GameConfigurationCentral.jm_getInstance_0))
        (set-field! f_COMPETITION_VALUE this (JR.i32 (+ (JR.i32 (+ (JR.i32 (+ (JR.className (JR.className (get-field f_COLLIDE_DAMAGE _gameConfigurationCentral))) (JR.className (JR.className (get-field f_ATTACK_CHALLENGE_LEVEL _gameConfigurationCentral))))) (JR.className (JR.className (get-field f_DURABILITY_CHALLENGE_LEVEL _gameConfigurationCentral))))) (JR.className (JR.className (get-field f_SPEED_CHALLENGE_LEVEL _gameConfigurationCentral))))))
        (set-field! f_COMPETITION_VALUE this (arithmetic-shift (get-field f_COMPETITION_VALUE this) (- (bitwise-and 2 31)))))))
    (define/public (jm_getCompetitionValue_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_COMPETITION_VALUE this)))))))
(define (GameConfigurationUtil.jclassValue) GameConfigurationUtil%)

(define GameConfigurationUtil.jcell_instance 'jnone)
(define (GameConfigurationUtil.jstatic_instance)
  (when (eq? GameConfigurationUtil.jcell_instance 'jnone) (set! GameConfigurationUtil.jcell_instance (GameConfigurationUtil.jnew_0)))
  GameConfigurationUtil.jcell_instance)
(define (GameConfigurationUtil.jsetstatic_instance value) (set! GameConfigurationUtil.jcell_instance value))

(define (GameConfigurationUtil.jnew_0)
  (define this (new GameConfigurationUtil% [jclass "GameConfigurationUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_GAUGE_UPDATE this "Gauge Update: ")
    (set-field! f_FROM this " from: ")
    (set-field! f_TO this " to: ")
    (set-field! f_COMPETITION_VALUE this 1)
  this)

(define (GameConfigurationUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameConfigurationUtil.jstatic_instance)))))



