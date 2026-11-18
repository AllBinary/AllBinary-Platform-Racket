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
  "../../../../../java/util/Enumeration.rkt")
(lazy-require ["../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/EnumerationUtil.rkt" (EnumerationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/HashtableUtil.rkt" (HashtableUtil.jm_getInstance_0)])
(lazy-require ["./Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["./Feature.rkt" (Feature.jm_getInstance_1)])
(lazy-require ["./GameFeatureChoiceGroups.rkt" (GameFeatureChoiceGroups.jm_getExclusiveInstance_0)])
(provide (all-defined-out))

(define GameFeatureUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_tsUtil JR.null])
    (field [f_enumerationUtil JR.null])
    (field [f_ON_GAME_FEATURE_CHANGE JR.null])
    (field [f_GAME_FEATURE_CHANGED JR.null])
    (define/public (jm_setDefault_1 _choiceGroup)
    (let ([_stringBuffer JR.null][_METHOD_NAME JR.null][_SELECTED_ARRAY_RETURN JR.null][_SELECTED_SEP JR.null][_selectedArray_return JR.null][_total JR.null][_features JR.null][_isSelected JR.null][_selectedChoiceLabel JR.null][_gameFeature JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _METHOD_NAME "setDefault")
        (set! _SELECTED_ARRAY_RETURN "selectedArray_return[")
        (set! _SELECTED_SEP "] = ")
        (set! _selectedArray_return (JR.newArray #f (send _choiceGroup jm_size_0)))
        (set! _total (send _choiceGroup jm_getSelectedFlags_1 _selectedArray_return))
        (send _stringBuffer jm_append_1 "Multiple Total Choices: ")
        (send _stringBuffer jm_appendint_1 _total)
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this _METHOD_NAME)
        (set! _features (Features.jm_getInstance_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _selectedArray_return))
                (let/ec jcontinue
            (set! _isSelected (vector-ref _selectedArray_return _index))
            (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
            (send _stringBuffer jm_append_1 _SELECTED_ARRAY_RETURN)
            (send _stringBuffer jm_appendint_1 _index)
            (send _stringBuffer jm_append_1 _SELECTED_SEP)
            (send _stringBuffer jm_appendboolean_1 _isSelected)
            (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this _METHOD_NAME)
            (set! _selectedChoiceLabel (send _choiceGroup jm_getString_1 _index))
            (set! _gameFeature (Feature.jm_getInstance_1 _selectedChoiceLabel))
            (if (send _features jm_isDefault_1 _gameFeature)
                (begin
                (send _features jm_add_1 _gameFeature)
                (send _choiceGroup jm_setSelectedIndex_2 _index #t))
                (begin
                (send _features jm_remove_1 _gameFeature)
                (send _choiceGroup jm_setSelectedIndex_2 _index #f))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_updateMultiple_1 _choiceGroup)
    (let ([_stringBuffer JR.null][_METHOD_NAME JR.null][_SELECTED_ARRAY_RETURN JR.null][_SELECTED_SEP JR.null][_selectedArray_return JR.null][_total JR.null][_features JR.null][_isSelected JR.null][_selectedChoiceLabel JR.null][_gameFeature JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _METHOD_NAME "updateMultiple")
        (set! _SELECTED_ARRAY_RETURN "selectedArray_return[")
        (set! _SELECTED_SEP "] = ")
        (set! _selectedArray_return (JR.newArray #f (send _choiceGroup jm_size_0)))
        (set! _total (send _choiceGroup jm_getSelectedFlags_1 _selectedArray_return))
        (send _stringBuffer jm_append_1 "Multiple Total Choices: ")
        (send _stringBuffer jm_appendint_1 _total)
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this _METHOD_NAME)
        (set! _features (Features.jm_getInstance_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _selectedArray_return))
                (let/ec jcontinue
            (set! _isSelected (vector-ref _selectedArray_return _index))
            (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
            (send _stringBuffer jm_append_1 _SELECTED_ARRAY_RETURN)
            (send _stringBuffer jm_appendint_1 _index)
            (send _stringBuffer jm_append_1 _SELECTED_SEP)
            (send _stringBuffer jm_appendboolean_1 _isSelected)
            (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this _METHOD_NAME)
            (set! _selectedChoiceLabel (send _choiceGroup jm_getString_1 _index))
            (set! _gameFeature (Feature.jm_getInstance_1 _selectedChoiceLabel))
            (if (and (not _isSelected) (send _features jm_isFeature_1 _gameFeature))
                (begin
                (send _features jm_remove_1 _gameFeature))
                (when (and _isSelected (not (send _features jm_isFeature_1 _gameFeature)))
                (begin
                (send _features jm_add_1 _gameFeature)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_updateExclusiveForChoiceGroup_1 _choiceGroup)
    (let ([_stringBuffer JR.null][_METHOD_NAME JR.null][_SELECTED_ARRAY_RETURN JR.null][_SELECTED_SEP JR.null][_selectedArray_return JR.null][_total JR.null][_isSelected JR.null][_selectedChoiceLabel JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _METHOD_NAME "updateExclusive")
        (set! _SELECTED_ARRAY_RETURN "selectedArray_return[")
        (set! _SELECTED_SEP "] = ")
        (set! _selectedArray_return (JR.newArray #f (send _choiceGroup jm_size_0)))
        (set! _total (send _choiceGroup jm_getSelectedFlags_1 _selectedArray_return))
        (send _stringBuffer jm_append_1 "Exclusive Total Choices: 1==")
        (send _stringBuffer jm_appendint_1 _total)
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this _METHOD_NAME)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _selectedArray_return))
                (let/ec jcontinue
            (set! _isSelected (vector-ref _selectedArray_return _index))
            (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
            (send _stringBuffer jm_append_1 _SELECTED_ARRAY_RETURN)
            (send _stringBuffer jm_appendint_1 _index)
            (send _stringBuffer jm_append_1 _SELECTED_SEP)
            (send _stringBuffer jm_appendboolean_1 _isSelected)
            (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this _METHOD_NAME)
            (when _isSelected
                (begin
                (set! _selectedChoiceLabel (send _choiceGroup jm_getString_1 _index))
                (send this jm_updateExclusive_1 _selectedChoiceLabel))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_isExclusive_1 _itemLabel)
    (let ([_enumeration JR.null][_name JR.null])
      (let/ec jreturn
        (set! _enumeration (JR.className (JR.className (GameFeatureChoiceGroups.jm_getExclusiveInstance_0))))
        (set! _name JR.null)
        (let/ec jbreak (let jloop () (when (send (get-field f_enumerationUtil this) jm_hasMoreElements_1 _enumeration)
                (let/ec jcontinue
            (set! _name (send (get-field f_enumerationUtil this) jm_nextElement_1 _enumeration))
            (when (= (send (get-field f_tsUtil this) jm_compareTo_2 _itemLabel _name) 0)
                (begin
                (jreturn #t)))) (jloop))))
        (jreturn #f))))
    (define/public (jm_updateExclusive_1 _selectedChoiceLabel)
    (let ([_gameFeature JR.null][_hashtable JR.null][_objectArray JR.null][_basicArrayList JR.null][_anyType JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_ITEM_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 _selectedChoiceLabel) jm_toString_0) this "updateExclusive")
        (set! _gameFeature (Feature.jm_getInstance_1 _selectedChoiceLabel))
        (set! _hashtable (JR.className (GameFeatureChoiceGroups.jm_getExclusiveInstance_0)))
        (set! _objectArray (send (HashtableUtil.jm_getInstance_0) jm_getKeysAsArray_1 _hashtable))
        (set! _basicArrayList JR.null)
        (set! _anyType JR.null)
        (set! _size (vector-length _objectArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _anyType (vector-ref _objectArray _index))
            (set! _basicArrayList (send _hashtable jm_get_1 _anyType))
            (send this jm_updateExclusiveList_2 _gameFeature _basicArrayList))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_updateExclusiveList_2 _gameFeature _list)
    (let ([_features JR.null][_addIndex JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (when (send _list jm_contains_1 _gameFeature)
            (begin
            (set! _features (Features.jm_getInstance_0))
            (set! _addIndex (send _list jm_indexOf_1 _gameFeature))
            (set! _size (send _list jm_size_0))
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (if (not (= _addIndex _index))
                    (begin
                    (send _features jm_remove_1 (vector-ref (get-field f_objectArray _list) _index)))
                    (begin
                    (send _features jm_add_1 (vector-ref (get-field f_objectArray _list) _index)))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))))
(define (GameFeatureUtil.jclassValue) GameFeatureUtil%)

(define GameFeatureUtil.jcell_instance 'jnone)
(define (GameFeatureUtil.jstatic_instance)
  (when (eq? GameFeatureUtil.jcell_instance 'jnone) (set! GameFeatureUtil.jcell_instance (GameFeatureUtil.jnew_0)))
  GameFeatureUtil.jcell_instance)
(define (GameFeatureUtil.jsetstatic_instance value) (set! GameFeatureUtil.jcell_instance value))

(define (GameFeatureUtil.jnew_0)
  (define this (new GameFeatureUtil% [jclass "GameFeatureUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (set-field! f_enumerationUtil this (EnumerationUtil.jm_getInstance_0))
    (set-field! f_ON_GAME_FEATURE_CHANGE this "onGameFeatureChange")
    (set-field! f_GAME_FEATURE_CHANGED this "Game Feature Changed: ")
  this)

(define (GameFeatureUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameFeatureUtil.jstatic_instance)))))



