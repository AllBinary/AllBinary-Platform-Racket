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
  "../../../../javax/microedition/lcdui/TextField.rkt"
  "../../../../org/allbinary/graphics/displayable/screen/CommandForm.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/Choice.rkt" (Choice.jstatic_EXCLUSIVE Choice.jstatic_MULTIPLE)])
(lazy-require ["../../../../org/allbinary/MIDPUtil.rkt" (MIDPUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.rkt" (GameFeatureChoiceGroups.jm_getMultipleInstance_0 GameFeatureChoiceGroups.jm_getExclusiveInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/GameFeatureFormUtil.rkt" (GameFeatureFormUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/GameFeatureItemCommandListener.rkt" (GameFeatureItemCommandListener.jnew_1)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/GameFeatureItemStateListener.rkt" (GameFeatureItemStateListener.jnew_1)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory.rkt" (SensorFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton.rkt" (GameConfigurationPersistanceSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory.rkt" (MyCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/gyro/OrientationData.rkt" (OrientationData.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/util/HashtableUtil.rkt" (HashtableUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["./GameConfigurationTextInput.rkt" (GameConfigurationTextInput.jm_getHashtable_0 GameConfigurationTextInput.jm_update_1)])
(lazy-require ["./GameConfigurationSingleton.rkt" (GameConfigurationSingleton.jm_getInstance_0)])
(lazy-require ["./GameConfigurationGauge.rkt" (GameConfigurationGauge.jnew_1 GameConfigurationGauge.jclassValue)])
(lazy-require ["./GameConfigurationUtil.rkt" (GameConfigurationUtil.jm_getInstance_0)])
(lazy-require ["./GameConfigurationCentral.rkt" (GameConfigurationCentral.jm_getInstance_0)])
(provide (all-defined-out))

(define GameOptionsForm%
  (class CommandForm%
    (super-new)
    (inherit/super jm_close_0)
    (field [f_meUtil JR.null])
    (define/public (jm_closeClientInformation_1 _abeClientInformation)
    (let ()
      (let/ec jreturn
        (super jm_close_0)
        (send this jm_save_1 _abeClientInformation))))
    (define/public (jm_addTextFieldsIfSimulated_0)
    (let ([_key JR.null][_hashtable JR.null][_listCanBeNull JR.null][_list JR.null])
      (let/ec jreturn
        (set! _key (get-field f_ORIENTATION_SENSOR_INPUT (OrientationData.jm_getInstance_0)))
        (set! _hashtable (JR.className (GameFeatureChoiceGroups.jm_getExclusiveInstance_0)))
        (when (not (JR.null? _hashtable))
            (begin
            (set! _listCanBeNull (send _hashtable jm_get_1 _key))
            (when (not (JR.null? _listCanBeNull))
                (begin
                (set! _list _listCanBeNull)
                (when (send _list jm_contains_1 (get-field f_SIMULATED_ORIENTATION_SENSORS (SensorFeatureFactory.jm_getInstance_0)))
                    (begin
                    (send this jm_addTextFields_0))))))))))
    (define/public (jm_addTextFields_0)
    (let ([_hashtable JR.null][_size JR.null][_objectArray JR.null][_gameConfigurationTextInput JR.null][_textField JR.null][_index JR.null])
      (let/ec jreturn
        (set! _hashtable (GameConfigurationTextInput.jm_getHashtable_0))
        (set! _size (send _hashtable jm_size_0))
        (set! _objectArray (send (HashtableUtil.jm_getInstance_0) jm_getKeysAsArray_1 _hashtable))
        (set! _gameConfigurationTextInput JR.null)
        (set! _textField JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _gameConfigurationTextInput (send _hashtable jm_get_1 (vector-ref _objectArray _index)))
            (set! _textField (TextField.jnew_4 (send _gameConfigurationTextInput jm_getLabel_0) (send _gameConfigurationTextInput jm_getText_0) 30 (TextField.jstatic_ANY)))
            (send (get-field f_meUtil this) jm_appendItem_2 this _textField))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_addConfiguration_0)
    (let ([_METHOD_NAME JR.null][_NAME JR.null][_list JR.null][_GAUGE_CHANGE JR.null][_stringMaker JR.null][_size JR.null][_gameConfiguration JR.null][_gauge JR.null][_index JR.null])
      (let/ec jreturn
        (set! _METHOD_NAME "addConfiguration")
        (set! _NAME "Name: ")
        (set! _list (send (GameConfigurationSingleton.jm_getInstance_0) jm_getOptionsBasicArrayList_0))
        (set! _GAUGE_CHANGE (get-field f_GAUGE_CHANGE (MyCommandsFactory.jm_getInstance_0)))
        (set! _stringMaker (StringMaker.jnew_0))
        (set! _size (send _list jm_size_0))
        (set! _gameConfiguration JR.null)
        (set! _gauge JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _gameConfiguration (vector-ref (get-field f_objectArray _list) _index))
            (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
            (JR.className (get-field f_logUtil this))
            (set! _gauge (GameConfigurationGauge.jnew_1 _gameConfiguration))
            (send _gauge jm_setDefaultCommand_1 _GAUGE_CHANGE)
            (send _gauge jm_setItemCommandListener_1 (GameFeatureItemCommandListener.jnew_1 this))
            (send (get-field f_meUtil this) jm_appendItem_2 this _gauge))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/override (jm_initCommands_1 _cmdListener)
    (let ([_gameCommandsFactory JR.null])
      (let/ec jreturn
        (set! _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (send this jm_removeAllCommands_0)
        (send this jm_addCommand_1 (get-field f_CLOSE_OPTIONS _gameCommandsFactory))
        (send this jm_addCommand_1 (get-field f_DEFAULT_OPTIONS _gameCommandsFactory))
        (send this jm_setCommandListener_1 _cmdListener))))
    (define/public (jm_save_1 _abeClientInformation)
    (let ([_size JR.null][_item JR.null][_index JR.null][_hashtable JR.null][_SCALE JR.null][_keyValuePersistance JR.null][_list JR.null][_size2 JR.null][_integer JR.null])
      (let/ec jreturn
        (set! _size (send this jm_size_0))
        (set! _item JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _item (send this jm_get_1 _index))
            (if (is-a? _item (GameConfigurationGauge.jclassValue))
                (begin
                (send (GameConfigurationUtil.jm_getInstance_0) jm_update_1 _item))
                (when (is-a? _item TextField%)
                (begin
                (GameConfigurationTextInput.jm_update_1 _item)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send (GameConfigurationUtil.jm_getInstance_0) jm_updateCompetitionValue_0)
        (set! _hashtable (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
        (set! _SCALE (get-field f_SCALE (GameConfigurationCentral.jm_getInstance_0)))
        (send _hashtable jm_put_2 (send _SCALE jm_getName_0) (JR.str (JR.className (send _SCALE jm_getValue_0))))
        (set! _keyValuePersistance (GameConfigurationPersistanceSingleton.jm_getInstance_0))
        (send _keyValuePersistance jm_clear_0)
        (send _keyValuePersistance jm_loadAll_1 _abeClientInformation)
        (set! _list (send _keyValuePersistance jm_getIds_0))
        (send _keyValuePersistance jm_save_2 _abeClientInformation _hashtable)
        (set! _size2 (send _list jm_size_0))
        (set! _integer JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size2)
                (let/ec jcontinue
            (set! _integer (vector-ref (get-field f_objectArray _list) _index))
            (send _keyValuePersistance jm_delete_2 _abeClientInformation (send _integer jm_intValue_0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (GameOptionsForm.jclassValue) GameOptionsForm%)

(define (GameOptionsForm.jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor)
  (define this (new GameOptionsForm% [jclass "GameOptionsForm"]))
    (set-field! f_meUtil this (MIDPUtil.jm_getInstance_0))
    (let ([_gameFeatureFormUtil JR.null])
      (let/ec jreturn
        (void)
        (JR.className (get-field f_logUtil this))
        (send this jm_addConfiguration_0)
        (set! _gameFeatureFormUtil (GameFeatureFormUtil.jm_getInstance_0))
        (send _gameFeatureFormUtil jm_addChoiceGroup_3 this (JR.className (GameFeatureChoiceGroups.jm_getExclusiveInstance_0)) (Choice.jstatic_EXCLUSIVE))
        (send _gameFeatureFormUtil jm_addChoiceGroup_3 this (JR.className (GameFeatureChoiceGroups.jm_getMultipleInstance_0)) (Choice.jstatic_MULTIPLE))
        (send this jm_initCommands_1 _commandListener)
        (send this jm_setItemStateListener_1 (GameFeatureItemStateListener.jnew_1 this))
        (send this jm_addTextFieldsIfSimulated_0)))
  this)



