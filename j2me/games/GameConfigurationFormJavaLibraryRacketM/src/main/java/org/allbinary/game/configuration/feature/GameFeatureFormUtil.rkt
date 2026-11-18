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
  "../../../../../javax/microedition/lcdui/ChoiceGroup.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/NullImage.rkt" (NullImage.jstatic_NULL_IMAGE_ARRAY NullImage.jstatic_NULL_IMAGE)])
(lazy-require ["../../../../../org/allbinary/MIDPUtil.rkt" (MIDPUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/GameConfigurationGauge.rkt" (GameConfigurationGauge.jclassValue)])
(lazy-require ["../../../../../org/allbinary/game/configuration/GameConfigurationUtil.rkt" (GameConfigurationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/HashtableUtil.rkt" (HashtableUtil.jm_getInstance_0)])
(lazy-require ["./Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["./GameFeatureUtil.rkt" (GameFeatureUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define GameFeatureFormUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_meUtil JR.null])
    (define/public (jm_getChoiceGroup_3 _hashtable _name _option)
    (let ([_stringMaker JR.null][_choiceGroup JR.null][_list JR.null][_features JR.null][_ADD_CHOICE JR.null][_GET_CHOICE_GROUP JR.null][_size JR.null][_gameFeature JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringMaker (StringMaker.jnew_0))
        (set! _choiceGroup (ChoiceGroup.jnew_4 _name _option (send (StringUtil.jm_getInstance_0) jm_getArrayInstance_0) (NullImage.jstatic_NULL_IMAGE_ARRAY)))
        (set! _list (send _hashtable jm_get_1 _name))
        (set! _features (Features.jm_getInstance_0))
        (set! _ADD_CHOICE ": Adding Choice: ")
        (set! _GET_CHOICE_GROUP "getChoiceGroup")
        (set! _size (send _list jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _gameFeature (vector-ref (get-field f_objectArray _list) _index))
            (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send _stringMaker jm_append_1 _name) jm_append_1 _ADD_CHOICE) jm_append_1 (send _gameFeature jm_toString_0)) jm_toString_0) this _GET_CHOICE_GROUP)
            (send _choiceGroup jm_append_2 (send _gameFeature jm_toString_0) (NullImage.jstatic_NULL_IMAGE))
            (when (send _features jm_isFeature_1 _gameFeature)
                (begin
                (send _choiceGroup jm_setSelectedIndex_2 _index #t))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _choiceGroup))))
    (define/public (jm_addChoiceGroup_3 _form _hashtable _option)
    (let ([_stringMaker JR.null][_ADDING_CHOICE_GROUP JR.null][_ADD_CHOICE_GROUP JR.null][_size JR.null][_objectArray JR.null][_name JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringMaker (StringMaker.jnew_0))
        (set! _ADDING_CHOICE_GROUP "Adding Choice Group: ")
        (set! _ADD_CHOICE_GROUP "addChoiceGroup")
        (set! _size (send _hashtable jm_size_0))
        (set! _objectArray (send (HashtableUtil.jm_getInstance_0) jm_getKeysAsArray_1 _hashtable))
        (set! _name JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _name (vector-ref _objectArray _index))
            (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send _stringMaker jm_append_1 _ADDING_CHOICE_GROUP) jm_append_1 _name) jm_toString_0) this _ADD_CHOICE_GROUP)
            (send (get-field f_meUtil this) jm_appendItem_2 _form (send this jm_getChoiceGroup_3 _hashtable _name _option)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_setDefault_1 _form)
    (let ([_size JR.null][_item JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send _form jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _item (send _form jm_get_1 _index))
            (if (is-a? _item (GameConfigurationGauge.jclassValue))
                (begin
                (send (GameConfigurationUtil.jm_getInstance_0) jm_setDefault_1 _item))
                (when (is-a? _item ChoiceGroup%)
                (begin
                (send (GameFeatureUtil.jm_getInstance_0) jm_setDefault_1 _item)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (GameFeatureFormUtil.jclassValue) GameFeatureFormUtil%)

(define GameFeatureFormUtil.jcell_instance 'jnone)
(define (GameFeatureFormUtil.jstatic_instance)
  (when (eq? GameFeatureFormUtil.jcell_instance 'jnone) (set! GameFeatureFormUtil.jcell_instance (GameFeatureFormUtil.jnew_0)))
  GameFeatureFormUtil.jcell_instance)
(define (GameFeatureFormUtil.jsetstatic_instance value) (set! GameFeatureFormUtil.jcell_instance value))

(define (GameFeatureFormUtil.jnew_0)
  (define this (new GameFeatureFormUtil% [jclass "GameFeatureFormUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_meUtil this (MIDPUtil.jm_getInstance_0))
  this)

(define (GameFeatureFormUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameFeatureFormUtil.jstatic_instance)))))



