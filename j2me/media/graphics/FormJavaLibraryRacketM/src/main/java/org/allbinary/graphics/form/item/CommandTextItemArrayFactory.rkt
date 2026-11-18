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
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/lang/Boolean.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/ImageItem.rkt" (ImageItem.jstatic_LAYOUT_DEFAULT)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/form/ScreenInfo.rkt" (ScreenInfo.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/VectorUtil.rkt" (VectorUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./CommandTextItem.rkt" (CommandTextItem.jnew_5)])
(provide (all-defined-out))

(define CommandTextItemArrayFactory%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (field [f_visitorInterface JR.null])
    (define/public (jm_getInstance_3 _vector _backgroundBasicColor _foregroundBasicColor)
    (let ([_vectorUtil JR.null][_size JR.null][_textItem JR.null][_priorityLimit JR.null][_displayInfo JR.null][_isLargeEnoughDisplayForBigMenu JR.null][_command JR.null][_aBoolean JR.null][_index JR.null][_textItemArray JR.null][_size2 JR.null])
      (let/ec jreturn
        (set! _vectorUtil (VectorUtil.jm_getInstance_0))
        (set! _size (send _vectorUtil jm_getSize_1 _vector))
        (send (get-field f_list this) jm_clear_0)
        (set! _textItem JR.null)
        (set! _priorityLimit 7)
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (set! _isLargeEnoughDisplayForBigMenu (or (and (send _displayInfo jm_isPortrait_0) (>= (send _displayInfo jm_getLastHeight_0) (get-field f_MEDIUM_WIDTH (ScreenInfo.jm_getInstance_0)))) (and (not (send _displayInfo jm_isPortrait_0)) (>= (send _displayInfo jm_getLastWidth_0) (get-field f_MEDIUM_WIDTH (ScreenInfo.jm_getInstance_0))))))
        (when (and (not _isLargeEnoughDisplayForBigMenu) (> _size 3))
            (begin
            (set! _priorityLimit 3)))
        (set! _command JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _command (send _vectorUtil jm_elementAt_2 _vector _index))
            (when (< (send _command jm_getPriority_0) _priorityLimit)
                (begin
                (set! _aBoolean (send (get-field f_visitorInterface this) jm_visit_1 _command))
                (when (send _aBoolean jm_booleanValue_0)
                    (begin
                    (set! _textItem (CommandTextItem.jnew_5 _command (ImageItem.jstatic_LAYOUT_DEFAULT) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) _backgroundBasicColor _foregroundBasicColor))
                    (send (get-field f_list this) jm_add_1 _textItem))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _textItemArray (JR.newArray JR.null (send (get-field f_list this) jm_size_0)))
        (set! _size2 (vector-length _textItemArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size2)
                (let/ec jcontinue
            (vector-set! _textItemArray _index (vector-ref (get-field f_objectArray (get-field f_list this)) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _textItemArray))))))
(define (CommandTextItemArrayFactory.jclassValue) CommandTextItemArrayFactory%)

(define (CommandTextItemArrayFactory.jnew_1 _visitorInterface)
  (define this (new CommandTextItemArrayFactory% [jclass "CommandTextItemArrayFactory"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_visitorInterface this _visitorInterface)))
  this)



