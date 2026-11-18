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
;; package org.allbinary.game.paint.help

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./HelpPaintable.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/PlatformInputMappingFactory.rkt" (PlatformInputMappingFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorUtil.rkt" (BasicColorUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./UpdateMyFontProperties.rkt" (UpdateMyFontProperties.jnew_0)])
(provide (all-defined-out))

(define InputMappingHelpPaintable%
  (class HelpPaintable%
    (super-new)
    (inherit/super jm_setInputInfoP_1)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_commonSeps JR.null])
    (field [f_stringUtil JR.null])
    (field [f_basicColorFactory JR.null])
    (field [f_NONE JR.null])
    (field [f_EMPTY_STRING JR.null])
    (field [f_gameInputMappingArray JR.null])
    (field [f_keyMappingArray JR.null])
    (field [f_actionBasicColor JR.null])
    (field [f_inputBasicColorArray JR.null])
    (field [f_selectedBasicColor JR.null])
    (field [f_updateMyFontProperties JR.null])
    (define/override (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null][_updateMyFontProperties JR.null][_stringMaker JR.null][_inputInfo JR.null][_size JR.null][_list JR.null][_keyMappings JR.null][_actionString JR.null][_input JR.null][_size2 JR.null][_index2 JR.null][_index JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set! _updateMyFontProperties (UpdateMyFontProperties.jnew_0))
        (set-field! f_charHeight _updateMyFontProperties (send _font jm_getHeight_0))
        (set! _stringMaker (StringMaker.jnew_0))
        (set! _inputInfo (get-field f_inputInfo this))
        (set! _size (vector-length _inputInfo))
        (set-field! f_actionStringArray _updateMyFontProperties (JR.newArray JR.null _size))
        (set-field! f_keymappingBeginWidthArray _updateMyFontProperties (JR.newArray 0 _size))
        (set-field! f_actionStringDeltaXArray _updateMyFontProperties (JR.newArray 0 _size))
        (set-field! f_inputDeltaXArray _updateMyFontProperties (JR.newArray 0 _size 0))
        (set-field! f_sepArray _updateMyFontProperties (JR.newArray JR.null _size 0))
        (set-field! f_sepWidthArray _updateMyFontProperties (JR.newArray 0 _size 0))
        (set! _list JR.null)
        (set! _keyMappings JR.null)
        (set! _actionString JR.null)
        (set! _input JR.null)
        (set! _size2 0)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _list (vector-ref (get-field f_keyMappingArray this) _index))
            (set! _keyMappings (send this jm_get_1 _list))
            (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
            (set! _actionString (send (send (send (send (send _stringMaker jm_append_1 (vector-ref _inputInfo _index)) jm_append_1 (get-field f_COLON (get-field f_commonSeps this))) jm_append_1 (get-field f_SPACE (get-field f_commonSeps this))) jm_append_1 (get-field f_SPACE (get-field f_commonSeps this))) jm_toString_0))
            (vector-set! (get-field f_actionStringArray _updateMyFontProperties) _index _actionString)
            (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
            (vector-set! (get-field f_keymappingBeginWidthArray _updateMyFontProperties) _index (arithmetic-shift (send _font jm_stringWidth_1 (send (send (send _stringMaker jm_append_1 (vector-ref (get-field f_actionStringArray _updateMyFontProperties) _index)) jm_append_1 _keyMappings) jm_toString_0)) (- (bitwise-and 1 31))))
            (vector-set! (get-field f_actionStringDeltaXArray _updateMyFontProperties) _index (send _font jm_stringWidth_1 _actionString))
            (set! _size2 (send _list jm_size_0))
            (vector-set! (get-field f_inputDeltaXArray _updateMyFontProperties) _index (JR.newArray 0 _size2))
            (vector-set! (get-field f_sepArray _updateMyFontProperties) _index (JR.newArray JR.null _size2))
            (vector-set! (get-field f_sepWidthArray _updateMyFontProperties) _index (JR.newArray 0 _size2))
            (begin
                (set! _index2 0)
                (let/ec jbreak (let jloop () (when (< _index2 _size2)
                    (let/ec jcontinue
                (set! _input (vector-ref (get-field f_objectArray _list) _index2))
                (vector-set! (vector-ref (get-field f_inputDeltaXArray _updateMyFontProperties) _index) _index2 (send _font jm_stringWidth_1 (send _input jm_getName_0)))
                (vector-set! (vector-ref (get-field f_sepArray _updateMyFontProperties) _index) _index2 (get-field f_EMPTY_STRING this))
                (when (< (JR.i32 (+ _index2 1)) (send _list jm_size_0))
                    (begin
                    (if (= (send _list jm_size_0) 2)
                        (begin
                        (vector-set! (vector-ref (get-field f_sepArray _updateMyFontProperties) _index) _index2 (InputMappingHelpPaintable.jstatic_AND)))
                        (begin
                        (if (= (JR.i32 (+ _index2 2)) (send _list jm_size_0))
                            (begin
                            (vector-set! (vector-ref (get-field f_sepArray _updateMyFontProperties) _index) _index2 (InputMappingHelpPaintable.jstatic_MORE_THAN_TWO_IN_LIST_AND)))
                            (begin
                            (vector-set! (vector-ref (get-field f_sepArray _updateMyFontProperties) _index) _index2 (InputMappingHelpPaintable.jstatic_SEP))))))))
                (when (not (eq? (vector-ref (vector-ref (get-field f_sepArray _updateMyFontProperties) _index) _index2) (get-field f_EMPTY_STRING this)))
                    (begin
                    (vector-set! (vector-ref (get-field f_sepWidthArray _updateMyFontProperties) _index) _index2 (send _font jm_stringWidth_1 (vector-ref (vector-ref (get-field f_sepArray _updateMyFontProperties) _index) _index2))))))
                    (set! _index2 (JR.i32 (+ _index2 1))) (jloop))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_updateMyFontProperties this _updateMyFontProperties)
        (super jm_updateMeasurement_1 _graphics))))
    (define/public (jm_update_2 _selectedGameKey _selectedInput)
    (let ([_stringMaker JR.null][_gameKeyMapping JR.null][_size JR.null][_keyInfo JR.null][_keyMappingArray JR.null][_actionBasicColor JR.null][_inputBasicColorArray JR.null][_gameInputMapping JR.null][_gameKey JR.null][_list JR.null][_size2 JR.null][_index2 JR.null][_indexOfSelectedInput JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringMaker (StringMaker.jnew_0))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (send (send _stringMaker jm_append_1 (get-field f_START_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 "selected GameKey: ") jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 _selectedGameKey)) jm_append_1 " Input: ") jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 _selectedInput)) jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
        (set! _gameKeyMapping (send (PlatformInputMappingFactory.jm_getInstance_0) jm_getPersistentInputMappingInstance_0))
        (set! _size (vector-length (get-field f_gameInputMappingArray this)))
        (set! _keyInfo (JR.newArray JR.null _size))
        (set! _keyMappingArray (JR.newArray JR.null _size))
        (set! _actionBasicColor (JR.newArray JR.null _size))
        (set! _inputBasicColorArray (JR.newArray JR.null _size))
        (set! _gameInputMapping JR.null)
        (set! _gameKey JR.null)
        (set! _list JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _gameInputMapping (vector-ref (get-field f_gameInputMappingArray this) _index))
            (set! _gameKey (send _gameInputMapping jm_getGameKey_0))
            (set! _list (JR.className (send _gameKeyMapping jm_getInputMapping_0)))
            (set! _size2 (send _list jm_size_0))
            (vector-set! _inputBasicColorArray _index (JR.newArray JR.null _size2))
            (begin
                (set! _index2 0)
                (let/ec jbreak (let jloop () (when (< _index2 _size2)
                    (let/ec jcontinue
                (vector-set! (vector-ref _inputBasicColorArray _index) _index2 (get-field f_basicColor this)))
                    (set! _index2 (JR.i32 (+ _index2 1))) (jloop)))))
            (if (eq? _gameKey _selectedGameKey)
                (begin
                (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                (send (get-field f_logUtil this) jm_putF_3 (send (send (send _stringMaker jm_append_1 "Found: selected GameKey: ") jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 _selectedGameKey)) jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
                (vector-set! _actionBasicColor _index (get-field f_selectedBasicColor this))
                (set! _indexOfSelectedInput (send _list jm_indexOf_1 _selectedInput))
                (when (>= _indexOfSelectedInput 0)
                    (begin
                    (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                    (send (get-field f_logUtil this) jm_putF_3 (send (send (send _stringMaker jm_append_1 "Found: selected Input: ") jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 _selectedInput)) jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
                    (vector-set! (vector-ref _inputBasicColorArray _index) _indexOfSelectedInput (get-field f_selectedBasicColor this)))))
                (begin
                (vector-set! _actionBasicColor _index (get-field f_basicColor this))))
            (vector-set! _keyInfo _index (send _gameInputMapping jm_getName_0))
            (vector-set! _keyMappingArray _index _list))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_keyMappingArray this _keyMappingArray)
        (set-field! f_actionBasicColor this _actionBasicColor)
        (set-field! f_inputBasicColorArray this _inputBasicColorArray)
        (super jm_setInputInfoP_1 _keyInfo)
        (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this)))))
    (define/public (jm_get_1 _keyList)
    (let ([_stringBuffer JR.null][_key JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _key JR.null)
        (set! _size (send _keyList jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _key (vector-ref (get-field f_objectArray _keyList) _index))
            (send _stringBuffer jm_append_1 (send _key jm_getName_0))
            (when (< (JR.i32 (+ _index 1)) (send _keyList jm_size_0))
                (begin
                (if (= (send _keyList jm_size_0) 2)
                    (begin
                    (send _stringBuffer jm_append_1 (InputMappingHelpPaintable.jstatic_AND)))
                    (begin
                    (if (= (JR.i32 (+ _index 2)) (send _keyList jm_size_0))
                        (begin
                        (send _stringBuffer jm_append_1 (InputMappingHelpPaintable.jstatic_MORE_THAN_TWO_IN_LIST_AND)))
                        (begin
                        (send _stringBuffer jm_append_1 (InputMappingHelpPaintable.jstatic_SEP)))))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/override (jm_paint_1 _graphics)
    (let ([_halfWidth JR.null][_inputInfo JR.null][_size JR.null][_y JR.null][_deltaX JR.null][_size2 JR.null][_actionString JR.null][_input JR.null][_list JR.null][_sep JR.null][_beginWidth JR.null][_index2 JR.null][_index JR.null])
      (let/ec jreturn
        (JR.className (get-field f_myFontProcessor this))
        (set! _halfWidth (JR.className (get-field f_displayInfo this)))
        (send _graphics jm_setColor_1 (send (get-field f_basicColor this) jm_intValue_0))
        (send _graphics jm_drawString_4 (get-field f_title this) (JR.i32 (- _halfWidth (get-field f_titleBeginWidth this))) (get-field f_charHeight (get-field f_updateMyFontProperties this)) (get-field f_anchor this))
        (set! _inputInfo (get-field f_inputInfo this))
        (set! _size (vector-length _inputInfo))
        (set! _y 0)
        (set! _deltaX 0)
        (set! _size2 0)
        (set! _actionString JR.null)
        (set! _input JR.null)
        (set! _list JR.null)
        (set! _sep JR.null)
        (set! _beginWidth 0)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _y (JR.i32 (* (JR.i32 (+ _index 3)) (get-field f_charHeight (get-field f_updateMyFontProperties this)))))
            (set! _deltaX 0)
            (set! _list (vector-ref (get-field f_keyMappingArray this) _index))
            (set! _size2 (send _list jm_size_0))
            (set! _beginWidth (vector-ref (get-field f_keymappingBeginWidthArray (get-field f_updateMyFontProperties this)) _index))
            (send _graphics jm_setColor_1 (JR.className (vector-ref (get-field f_actionBasicColor this) _index)))
            (set! _actionString (vector-ref (get-field f_actionStringArray (get-field f_updateMyFontProperties this)) _index))
            (send _graphics jm_drawString_4 _actionString (JR.i32 (+ (JR.i32 (- _halfWidth _beginWidth)) _deltaX)) _y (get-field f_anchor this))
            (set! _deltaX (JR.i32 (+ _deltaX (vector-ref (get-field f_actionStringDeltaXArray (get-field f_updateMyFontProperties this)) _index))))
            (begin
                (set! _index2 0)
                (let/ec jbreak (let jloop () (when (< _index2 _size2)
                    (let/ec jcontinue
                (set! _input (vector-ref (get-field f_objectArray _list) _index2))
                (send _graphics jm_setColor_1 (JR.className (vector-ref (vector-ref (get-field f_inputBasicColorArray this) _index) _index2)))
                (send _graphics jm_drawString_4 (send _input jm_getName_0) (JR.i32 (+ (JR.i32 (- _halfWidth _beginWidth)) _deltaX)) _y (get-field f_anchor this))
                (set! _deltaX (JR.i32 (+ _deltaX (vector-ref (vector-ref (get-field f_inputDeltaXArray (get-field f_updateMyFontProperties this)) _index) _index2))))
                (set! _sep (vector-ref (vector-ref (get-field f_sepArray (get-field f_updateMyFontProperties this)) _index) _index2))
                (send _graphics jm_setColor_1 (send (get-field f_basicColor this) jm_intValue_0))
                (send _graphics jm_drawString_4 _sep (JR.i32 (+ (JR.i32 (- _halfWidth _beginWidth)) _deltaX)) _y (get-field f_anchor this))
                (set! _deltaX (JR.i32 (+ _deltaX (vector-ref (vector-ref (get-field f_sepWidthArray (get-field f_updateMyFontProperties this)) _index) _index2)))))
                    (set! _index2 (JR.i32 (+ _index2 1))) (jloop))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (InputMappingHelpPaintable.jclassValue) InputMappingHelpPaintable%)

(define InputMappingHelpPaintable.jcell_AND 'jnone)
(define (InputMappingHelpPaintable.jstatic_AND)
  (when (eq? InputMappingHelpPaintable.jcell_AND 'jnone) (set! InputMappingHelpPaintable.jcell_AND " and "))
  InputMappingHelpPaintable.jcell_AND)
(define (InputMappingHelpPaintable.jsetstatic_AND value) (set! InputMappingHelpPaintable.jcell_AND value))

(define InputMappingHelpPaintable.jcell_SEP 'jnone)
(define (InputMappingHelpPaintable.jstatic_SEP)
  (when (eq? InputMappingHelpPaintable.jcell_SEP 'jnone) (set! InputMappingHelpPaintable.jcell_SEP ", "))
  InputMappingHelpPaintable.jcell_SEP)
(define (InputMappingHelpPaintable.jsetstatic_SEP value) (set! InputMappingHelpPaintable.jcell_SEP value))

(define InputMappingHelpPaintable.jcell_MORE_THAN_TWO_IN_LIST_AND 'jnone)
(define (InputMappingHelpPaintable.jstatic_MORE_THAN_TWO_IN_LIST_AND)
  (when (eq? InputMappingHelpPaintable.jcell_MORE_THAN_TWO_IN_LIST_AND 'jnone) (set! InputMappingHelpPaintable.jcell_MORE_THAN_TWO_IN_LIST_AND ", and "))
  InputMappingHelpPaintable.jcell_MORE_THAN_TWO_IN_LIST_AND)
(define (InputMappingHelpPaintable.jsetstatic_MORE_THAN_TWO_IN_LIST_AND value) (set! InputMappingHelpPaintable.jcell_MORE_THAN_TWO_IN_LIST_AND value))

(define (InputMappingHelpPaintable.jnew_3 _gameInputMappingArray _backgroundBasicColor _basicColor)
  (define this (new InputMappingHelpPaintable% [jclass "InputMappingHelpPaintable"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_commonSeps this (CommonSeps.jm_getInstance_0))
    (set-field! f_stringUtil this (StringUtil.jm_getInstance_0))
    (set-field! f_basicColorFactory this (BasicColorFactory.jm_getInstance_0))
    (set-field! f_NONE this (get-field f_NONE (GameKeyFactory.jm_getInstance_0)))
    (set-field! f_EMPTY_STRING this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    
    (set-field! f_keyMappingArray this (JR.newArray JR.null 0))
    (set-field! f_actionBasicColor this (get-field f_ZERO_ARRAY (BasicColorUtil.jm_getInstance_0)))
    (set-field! f_inputBasicColorArray this (JR.newArray JR.null 0 0))
    
    (set-field! f_updateMyFontProperties this (UpdateMyFontProperties.jnew_0))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_gameInputMappingArray this _gameInputMappingArray)
        (send this jm_update_2 (get-field f_NONE this) (get-field f_NONE this))
        (if (or (eq? _backgroundBasicColor (get-field f_WHITE (get-field f_basicColorFactory this))) (eq? _basicColor (get-field f_WHITE (get-field f_basicColorFactory this))))
            (begin
            (set-field! f_selectedBasicColor this (get-field f_RED (get-field f_basicColorFactory this))))
            (begin
            (set-field! f_selectedBasicColor this (get-field f_WHITE (get-field f_basicColorFactory this)))))))
  this)



