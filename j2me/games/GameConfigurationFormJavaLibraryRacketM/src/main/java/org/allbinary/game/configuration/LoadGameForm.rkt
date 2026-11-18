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
  "../../../../org/allbinary/graphics/displayable/screen/CommandForm.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/Choice.rkt" (Choice.jstatic_EXCLUSIVE)])
(lazy-require ["../../../../javax/microedition/lcdui/ChoiceGroup.rkt" (ChoiceGroup.jnew_4)])
(lazy-require ["../../../../javax/microedition/lcdui/Item.rkt" (Item.jstatic_PLAIN)])
(lazy-require ["../../../../javax/microedition/lcdui/NullImage.rkt" (NullImage.jstatic_NULL_IMAGE_ARRAY NullImage.jstatic_NULL_IMAGE)])
(lazy-require ["../../../../javax/microedition/lcdui/StringItem.rkt" (StringItem.jnew_3)])
(lazy-require ["../../../../org/allbinary/MIDPUtil.rkt" (MIDPUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/GamePersistanceSingleton.rkt" (GamePersistanceSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define LoadGameForm%
  (class CommandForm%
    (super-new)
    (field [f_meUtil JR.null])
    (field [f_areChoices #f])
    (define/override (jm_initCommands_1 _cmdListener)
    (let ([_gameCommandsFactory JR.null])
      (let/ec jreturn
        (set! _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (send this jm_removeAllCommands_0)
        (send this jm_addCommand_1 (get-field f_LOAD_FILE _gameCommandsFactory))
        (send this jm_addCommand_1 (get-field f_DELETE_FILE _gameCommandsFactory))
        (send this jm_addCommand_1 (get-field f_CLOSE_AND_SHOW_GAME_CANVAS _gameCommandsFactory))
        (send this jm_setCommandListener_1 _cmdListener))))
    (define/override (jm_update_0)
    (let ([_list JR.null])
      (let/ec jreturn
        (set! _list (send (GamePersistanceSingleton.jm_getInstance_0) jm_getIds_0))
        (send this jm_deleteAll_0)
        (if (> (send _list jm_size_0) 0)
            (begin
            (send this jm_add_3 _list "Select A Saved Game" (Choice.jstatic_EXCLUSIVE))
            (set-field! f_areChoices this #t))
            (begin
            (send (get-field f_meUtil this) jm_appendItem_2 this (StringItem.jnew_3 "No Saved Games" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Item.jstatic_PLAIN)))
            (set-field! f_areChoices this #f)))
        (super jm_update_0))))
    (define/public (jm_add_3 _list _name _option)
    (let ([_choiceGroup JR.null])
      (let/ec jreturn
        (set! _choiceGroup (send this jm_getChoiceGroup_3 _list _name _option))
        (when (> (send _list jm_size_0) 0)
            (begin
            (send _choiceGroup jm_setSelectedIndex_2 0 #t)))
        (send (get-field f_meUtil this) jm_appendItem_2 this _choiceGroup))))
    (define/public (jm_getChoiceGroup_3 _list _name _option)
    (let ([_METHOD_NAME JR.null][_ADDING_CHOICE JR.null][_choiceGroup JR.null][_size JR.null][_anyType JR.null][_index JR.null])
      (let/ec jreturn
        (set! _METHOD_NAME "getChoiceGroup")
        (set! _ADDING_CHOICE "Adding Choice: ")
        (set! _choiceGroup (ChoiceGroup.jnew_4 _name _option (send (StringUtil.jm_getInstance_0) jm_getArrayInstance_0) (NullImage.jstatic_NULL_IMAGE_ARRAY)))
        (set! _size (send _list jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _anyType (vector-ref (get-field f_objectArray _list) _index))
            (JR.className (get-field f_logUtil this))
            (send _choiceGroup jm_append_2 (JR.toString _anyType) (NullImage.jstatic_NULL_IMAGE)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _choiceGroup))))
    (define/public (jm_getSelectedId_0)
    (let ([_choiceGroup JR.null])
      (let/ec jreturn
        (if (get-field f_areChoices this)
            (begin
            (set! _choiceGroup (send this jm_get_1 0))
            (jreturn (send _choiceGroup jm_getSelectedIndex_0)))
            (begin
            (jreturn (JR.i32 (- 1))))))))
    (define/public (jm_getSelectedText_0)
    (let ([_choiceGroup JR.null][_value JR.null])
      (let/ec jreturn
        (if (get-field f_areChoices this)
            (begin
            (set! _choiceGroup (send this jm_get_1 0))
            (set! _value (JR.className (send _choiceGroup jm_getString_1 (send _choiceGroup jm_getSelectedIndex_0))))
            (jreturn _value))
            (begin
            (jreturn (JR.i32 (- 1))))))))))
(define (LoadGameForm.jclassValue) LoadGameForm%)

(define (LoadGameForm.jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor)
  (define this (new LoadGameForm% [jclass "LoadGameForm"]))
    (set-field! f_meUtil this (MIDPUtil.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (void)
        (JR.className (get-field f_logUtil this))
        (send this jm_update_0)
        (send this jm_initCommands_1 _commandListener)))
  this)



