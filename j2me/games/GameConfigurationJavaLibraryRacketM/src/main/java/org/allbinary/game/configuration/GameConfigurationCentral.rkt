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
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton.rkt" (GameConfigurationPersistanceSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./GameConfiguration.rkt" (GameConfiguration.jnew_4)])
(provide (all-defined-out))

(define GameConfigurationCentral%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_SCALE JR.null])
    (field [f_ORIENTATION JR.null])
    (field [f_SENSOR_UPDATE_RATE JR.null])
    (field [f_VIBRATION JR.null])
    (field [f_CHALLENGE_LEVEL JR.null])
    (field [f_COLLIDE_DAMAGE JR.null])
    (field [f_DURABILITY_CHALLENGE_LEVEL JR.null])
    (field [f_SPEED_CHALLENGE_LEVEL JR.null])
    (field [f_ATTACK_CHALLENGE_LEVEL JR.null])
    (field [f_CONTROL_LEVEL JR.null])
    (field [f_PLAYER_INPUT_WAIT JR.null])
    (field [f_SPEED JR.null])
    (field [f_SOUND_VOLUME JR.null])
    (field [f_MAX_GAME_OBJECTS JR.null])
    (field [f_MAX_LAYERS JR.null])
    (field [f_gameControlFidelity 0])
    (define/public (jm_load_1 _abeClientInformation)
    (let ([_commonStrings JR.null][_smallIntegerSingletonFactory JR.null][_keyValuePersistance JR.null][_list JR.null][_hashtable JR.null][_anyType JR.null][_value JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_LOAD _commonStrings) _e))])
            (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
            (set! _keyValuePersistance (GameConfigurationPersistanceSingleton.jm_getInstance_0))
            (send _keyValuePersistance jm_clear_0)
            (send _keyValuePersistance jm_loadAll_1 _abeClientInformation)
            (set! _list (send _keyValuePersistance jm_getIds_0))
            (if (> (send _list jm_size_0) 0)
                (begin
                (set! _hashtable (send _keyValuePersistance jm_get_1 0))
                (set! _anyType (send (get-field f_SCALE this) jm_getName_0))
                (set! _value (send _hashtable jm_get_1 _anyType))
                (send (get-field f_SCALE this) jm_setValue_1 (send _smallIntegerSingletonFactory jm_getAt_1 (JR.className _value))))
                (begin
                (send (get-field f_logUtil this) jm_putF_3 "No Game Configuration To Load" this (get-field f_LOAD _commonStrings))))))))
    (define/public (jm_setGameControlFidelity_1 _gameControlFidelity)
    (let ()
      (let/ec jreturn
        (set-field! f_gameControlFidelity this _gameControlFidelity))))
    (define/public (jm_getGameControlFidelity_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameControlFidelity this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _commonStrings (CommonSeps.jm_getInstance_0))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_SCALE this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_SCALE this) jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_ORIENTATION this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_ORIENTATION this) jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_SENSOR_UPDATE_RATE this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_SENSOR_UPDATE_RATE this) jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_VIBRATION this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_VIBRATION this) jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_CHALLENGE_LEVEL this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_CHALLENGE_LEVEL this) jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_COLLIDE_DAMAGE this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_COLLIDE_DAMAGE this) jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_DURABILITY_CHALLENGE_LEVEL this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_DURABILITY_CHALLENGE_LEVEL this) jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_SPEED_CHALLENGE_LEVEL this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_SPEED_CHALLENGE_LEVEL this) jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_ATTACK_CHALLENGE_LEVEL this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_ATTACK_CHALLENGE_LEVEL this) jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_CONTROL_LEVEL this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_CONTROL_LEVEL this) jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_SPEED this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_SPEED this) jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_MAX_GAME_OBJECTS this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_MAX_GAME_OBJECTS this) jm_getValue_0)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonStrings))
        (send _stringBuffer jm_append_1 (send (get-field f_MAX_LAYERS this) jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonStrings))
        (send _stringBuffer jm_appendint_1 (JR.className (send (get-field f_MAX_LAYERS this) jm_getValue_0)))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (GameConfigurationCentral.jclassValue) GameConfigurationCentral%)

(define GameConfigurationCentral.jcell_SINGLETON 'jnone)
(define (GameConfigurationCentral.jstatic_SINGLETON)
  (when (eq? GameConfigurationCentral.jcell_SINGLETON 'jnone) (set! GameConfigurationCentral.jcell_SINGLETON (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  GameConfigurationCentral.jcell_SINGLETON)
(define (GameConfigurationCentral.jsetstatic_SINGLETON value) (set! GameConfigurationCentral.jcell_SINGLETON value))

(define (GameConfigurationCentral.jnew_0)
  (define this (new GameConfigurationCentral% [jclass "GameConfigurationCentral"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    (set-field! f_gameControlFidelity this 36)
    (let ([_smallIntegerSingletonFactory JR.null])
      (let/ec jreturn
        (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (set-field! f_SCALE this (GameConfiguration.jnew_4 "Scale" (send _smallIntegerSingletonFactory jm_getAt_1 2) (send _smallIntegerSingletonFactory jm_getAt_1 2) (send _smallIntegerSingletonFactory jm_getAt_1 3)))
        (set-field! f_ORIENTATION this (GameConfiguration.jnew_4 "Orientation" (send _smallIntegerSingletonFactory jm_getAt_1 0) (send _smallIntegerSingletonFactory jm_getAt_1 0) (send _smallIntegerSingletonFactory jm_getAt_1 8)))
        (set-field! f_SENSOR_UPDATE_RATE this (GameConfiguration.jnew_4 "Sensor Update Rate" (send _smallIntegerSingletonFactory jm_getAt_1 0) (send _smallIntegerSingletonFactory jm_getAt_1 0) (send _smallIntegerSingletonFactory jm_getAt_1 3)))
        (set-field! f_VIBRATION this (GameConfiguration.jnew_4 "Vibration" (send _smallIntegerSingletonFactory jm_getAt_1 0) (send _smallIntegerSingletonFactory jm_getAt_1 0) (send _smallIntegerSingletonFactory jm_getAt_1 3)))
        (set-field! f_CHALLENGE_LEVEL this (GameConfiguration.jnew_4 "Global Challenge Level" (send _smallIntegerSingletonFactory jm_getAt_1 3) (send _smallIntegerSingletonFactory jm_getAt_1 1) (send _smallIntegerSingletonFactory jm_getAt_1 10)))
        (set-field! f_COLLIDE_DAMAGE this (GameConfiguration.jnew_4 "Collide Damage Challenge Level" (send _smallIntegerSingletonFactory jm_getAt_1 3) (send _smallIntegerSingletonFactory jm_getAt_1 1) (send _smallIntegerSingletonFactory jm_getAt_1 10)))
        (set-field! f_DURABILITY_CHALLENGE_LEVEL this (GameConfiguration.jnew_4 "Enemy Durability Challenge Level" (send _smallIntegerSingletonFactory jm_getAt_1 3) (send _smallIntegerSingletonFactory jm_getAt_1 1) (send _smallIntegerSingletonFactory jm_getAt_1 10)))
        (set-field! f_SPEED_CHALLENGE_LEVEL this (GameConfiguration.jnew_4 "Enemy Speed Challenge Level" (send _smallIntegerSingletonFactory jm_getAt_1 3) (send _smallIntegerSingletonFactory jm_getAt_1 1) (send _smallIntegerSingletonFactory jm_getAt_1 10)))
        (set-field! f_ATTACK_CHALLENGE_LEVEL this (GameConfiguration.jnew_4 "Enemy Attack Challenge Level" (send _smallIntegerSingletonFactory jm_getAt_1 3) (send _smallIntegerSingletonFactory jm_getAt_1 1) (send _smallIntegerSingletonFactory jm_getAt_1 10)))
        (set-field! f_CONTROL_LEVEL this (GameConfiguration.jnew_4 "Control Fidelity" (send _smallIntegerSingletonFactory jm_getAt_1 5) (send _smallIntegerSingletonFactory jm_getAt_1 1) (send _smallIntegerSingletonFactory jm_getAt_1 10)))
        (set-field! f_PLAYER_INPUT_WAIT this (GameConfiguration.jnew_4 "Input Wait" (send _smallIntegerSingletonFactory jm_getAt_1 5) (send _smallIntegerSingletonFactory jm_getAt_1 1) (send _smallIntegerSingletonFactory jm_getAt_1 10)))
        (set-field! f_SPEED this (GameConfiguration.jnew_4 "Game Speed (Device Specific)" (send _smallIntegerSingletonFactory jm_getAt_1 5) (send _smallIntegerSingletonFactory jm_getAt_1 1) (send _smallIntegerSingletonFactory jm_getAt_1 10)))
        (set-field! f_SOUND_VOLUME this (GameConfiguration.jnew_4 "Sound Volume" (send _smallIntegerSingletonFactory jm_getAt_1 6) (send _smallIntegerSingletonFactory jm_getAt_1 0) (send _smallIntegerSingletonFactory jm_getAt_1 10)))
        (set-field! f_MAX_GAME_OBJECTS this (GameConfiguration.jnew_4 "Max Game Objects" (send _smallIntegerSingletonFactory jm_getAt_1 20) (send _smallIntegerSingletonFactory jm_getAt_1 1) (send _smallIntegerSingletonFactory jm_getAt_1 50)))
        (set-field! f_MAX_LAYERS this (GameConfiguration.jnew_4 "Max Layers" (send _smallIntegerSingletonFactory jm_getAt_1 20) (send _smallIntegerSingletonFactory jm_getAt_1 1) (send _smallIntegerSingletonFactory jm_getAt_1 50)))))
  this)

(define (GameConfigurationCentral.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (GameConfigurationCentral.jstatic_SINGLETON) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! GameConfigurationCentral.jcell_SINGLETON (GameConfigurationCentral.jnew_0))))
        (jreturn (GameConfigurationCentral.jstatic_SINGLETON)))))



