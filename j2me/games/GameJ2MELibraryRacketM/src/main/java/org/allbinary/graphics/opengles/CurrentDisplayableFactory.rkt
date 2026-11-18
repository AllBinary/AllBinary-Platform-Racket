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
;; package org.allbinary.graphics.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isHTML_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.rkt" (AllBinaryGameCanvas.jclassValue)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/DemoCanvas.rkt" (DemoCanvas.jclassValue)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/GameInputMappingCanvas.rkt" (GameInputMappingCanvas.jstatic_NAME)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas.rkt" (GameInputMappingInstructionsCanvas.jstatic_NAME)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/NullDisplayable.rkt" (NullDisplayable.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/NullWaitGameRunnable.rkt" (NullWaitGameRunnable.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/layer/SWTUtil.rkt" (SWTUtil.jstatic_isSWT SWTUtil.jstatic_SWT)])
(lazy-require ["../../../../org/allbinary/game/score/displayable/HighScoresCanvas.rkt" (HighScoresCanvas.jstatic_NAME)])
(lazy-require ["../../../../org/allbinary/graphics/GraphicsStrings.rkt" (GraphicsStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/MyCanvas.rkt" (MyCanvas.jclassValue)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/thread/NullRunnable.rkt" (NullRunnable.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define CurrentDisplayableFactory%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (field [f_canvasStrings JR.null])
    (field [f_stringUtil JR.null])
    (field [f_SET_DISPLAYABLE JR.null])
    (field [f_SET_RUNNABLE JR.null])
    (field [f_CLEAR_RUNNABLE JR.null])
    (field [f_SET_USED_RUNNABLE JR.null])
    (field [f_RUNNABLE JR.null])
    (field [f_RUNNABLE_WAS_ALREADY_IN_USE JR.null])
    (field [f_DEFAULT_CHILD_NAME_LIST JR.null])
    (field [f_displayable JR.null])
    (field [f_openGlReadydisplayable JR.null])
    (field [f_runnable JR.null])
    (field [f_usedRunnable JR.null])
    (define/public (jm_setMyCanvas_1 _displayable)
    (let ()
      (let/ec jreturn
        (when (is-a? (get-field f_displayable this) (MyCanvas.jclassValue))
            (begin
            (when (send _displayable jm_hasChild_1 (get-field f_displayable this))
                (begin
                (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Child Displayable is already set for: ") jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 _displayable)) jm_toString_0) this (get-field f_SET_DISPLAYABLE this))
                (jreturn (void))))))
        (send this jm_setDisplayable_1 _displayable))))
    (define/public (jm_setDisplayable_1 _displayable)
    (let ()
      (let/ec jreturn
        (set-field! f_displayable this _displayable)
        (send this jm_setOpenGlReadydisplayable_1 _displayable))))
    (define/public (jm_setOpenGlReadydisplayable_1 _openGlReadydisplayable)
    (let ()
      (let/ec jreturn
        (set-field! f_openGlReadydisplayable this _openGlReadydisplayable)
        (send this jm_update_0))))
    (define/public (jm_getOpenGlReadydisplayable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_openGlReadydisplayable this)))))
    (define/public (jm_setRunnable_1 _runnable)
    (let ()
      (let/ec jreturn
        (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_RUNNABLE this)) jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 _runnable)) jm_toString_0) this (get-field f_SET_RUNNABLE this))
        (set-field! f_runnable this _runnable)
        (if (not (eq? (get-field f_usedRunnable this) (get-field f_runnable this)))
            (begin
            (send this jm_update_0))
            (begin
            (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_RUNNABLE_WAS_ALREADY_IN_USE this)) jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 _runnable)) jm_toString_0) this (get-field f_SET_RUNNABLE this)))))))
    (define/public (jm_clearRunnable_0)
    (let ()
      (let/ec jreturn
        (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_RUNNABLE this)) jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 (NullRunnable.jm_getInstance_0))) jm_toString_0) this (get-field f_CLEAR_RUNNABLE this))
        (send this jm_setUsedRunnable_1 (NullWaitGameRunnable.jm_getInstance_0)))))
    (define/public (jm_update_0)
    (let ([_commonSeps JR.null][_features JR.null][_stringMaker JR.null])
      (let/ec jreturn
        (begin
            (set! _commonSeps (CommonSeps.jm_getInstance_0))
            (set! _features (Features.jm_getInstance_0))
            (set! _stringMaker (StringMaker.jnew_0))
            (send _stringMaker jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 (get-field f_openGlReadydisplayable this)))
            (if (and (SWTUtil.jstatic_isSWT) (not (send _features jm_isDefault_1 (get-field f_OPENGL (OpenGLFeatureFactory.jm_getInstance_0)))))
                (begin
                (PreLogUtil.jm_put_3 (send (send (send (send (send (send _stringMaker jm_append_1 (get-field f_SPACE _commonSeps)) jm_append_1 (SWTUtil.jstatic_SWT)) jm_append_1 (get-field f_SPACE _commonSeps)) jm_append_1 (get-field f_RUNNABLE this)) jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 (NullRunnable.jm_getInstance_0))) jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
                (send this jm_setUsedRunnable_1 (NullWaitGameRunnable.jm_getInstance_0)))
                (if (J2MEUtil.jm_isHTML_0)
                (begin
                (PreLogUtil.jm_put_3 (send (send (send (send (send (send _stringMaker jm_append_1 (get-field f_SPACE _commonSeps)) jm_append_1 (get-field f_HTML (GraphicsStrings.jm_getInstance_0))) jm_append_1 (get-field f_SPACE _commonSeps)) jm_append_1 (get-field f_RUNNABLE this)) jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 (get-field f_runnable this))) jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
                (send this jm_setUsedRunnable_1 (get-field f_runnable this)))
                (if (or (or (is-a? (get-field f_openGlReadydisplayable this) (DemoCanvas.jclassValue)) (is-a? (get-field f_openGlReadydisplayable this) (AllBinaryGameCanvas.jclassValue))) (send _features jm_isDefault_1 (get-field f_OPENGL (OpenGLFeatureFactory.jm_getInstance_0))))
                (begin
                (PreLogUtil.jm_put_3 (send (send (send (send (send (send _stringMaker jm_append_1 (get-field f_SPACE _commonSeps)) jm_append_1 (JR.toString (get-field f_OPENGL (OpenGLFeatureFactory.jm_getInstance_0)))) jm_append_1 (get-field f_SPACE _commonSeps)) jm_append_1 (get-field f_RUNNABLE this)) jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 (get-field f_runnable this))) jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
                (send this jm_setUsedRunnable_1 (get-field f_runnable this)))
                (begin
                (PreLogUtil.jm_put_3 (send (send (send _stringMaker jm_append_1 (get-field f_RUNNABLE this)) jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 (NullRunnable.jm_getInstance_0))) jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
                (send this jm_setUsedRunnable_1 (NullWaitGameRunnable.jm_getInstance_0))))))))))
    (define/public (jm_getDisplayable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_displayable this)))))
    (define/public (jm_getUsedRunnable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_usedRunnable this)))))
    (define/public (jm_setUsedRunnable_1 _usedRunnable)
    (let ()
      (let/ec jreturn
        (PreLogUtil.jm_put_3 (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_RUNNABLE this)) jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 (get-field f_runnable this))) jm_append_1 (get-field f_COLON_SEP (CommonSeps.jm_getInstance_0))) jm_append_1 (send (get-field f_stringUtil this) jm_toString_1 _usedRunnable)) jm_toString_0) this (get-field f_SET_USED_RUNNABLE this))
        (set-field! f_usedRunnable this _usedRunnable))))))
(define (CurrentDisplayableFactory.jclassValue) CurrentDisplayableFactory%)

(define CurrentDisplayableFactory.jcell_instance 'jnone)
(define (CurrentDisplayableFactory.jstatic_instance)
  (when (eq? CurrentDisplayableFactory.jcell_instance 'jnone) (set! CurrentDisplayableFactory.jcell_instance (CurrentDisplayableFactory.jnew_0)))
  CurrentDisplayableFactory.jcell_instance)
(define (CurrentDisplayableFactory.jsetstatic_instance value) (set! CurrentDisplayableFactory.jcell_instance value))

(define (CurrentDisplayableFactory.jnew_0)
  (define this (new CurrentDisplayableFactory% [jclass "CurrentDisplayableFactory"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_canvasStrings this (CanvasStrings.jm_getInstance_0))
    (set-field! f_stringUtil this (StringUtil.jm_getInstance_0))
    (set-field! f_SET_DISPLAYABLE this "setDisplayable")
    (set-field! f_SET_RUNNABLE this "setRunnable")
    (set-field! f_CLEAR_RUNNABLE this "clearRunnable")
    (set-field! f_SET_USED_RUNNABLE this "setUsedRunnable")
    (set-field! f_RUNNABLE this "Runnable: ")
    (set-field! f_RUNNABLE_WAS_ALREADY_IN_USE this "Runnable was already in use: ")
    (set-field! f_DEFAULT_CHILD_NAME_LIST this (BasicArrayListD.jnew_0))
    (set-field! f_displayable this (NullDisplayable.jm_getInstance_0))
    (set-field! f_openGlReadydisplayable this (NullDisplayable.jm_getInstance_0))
    (set-field! f_runnable this (NullWaitGameRunnable.jm_getInstance_0))
    (set-field! f_usedRunnable this (NullWaitGameRunnable.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (send (get-field f_DEFAULT_CHILD_NAME_LIST this) jm_add_1 (get-field f_ABOUT (get-field f_canvasStrings this)))
        (send (get-field f_DEFAULT_CHILD_NAME_LIST this) jm_add_1 (get-field f_OPTIONS (get-field f_canvasStrings this)))
        (send (get-field f_DEFAULT_CHILD_NAME_LIST this) jm_add_1 (GameInputMappingCanvas.jstatic_NAME))
        (send (get-field f_DEFAULT_CHILD_NAME_LIST this) jm_add_1 (GameInputMappingInstructionsCanvas.jstatic_NAME))
        (send (get-field f_DEFAULT_CHILD_NAME_LIST this) jm_add_1 (HighScoresCanvas.jstatic_NAME))))
  this)

(define (CurrentDisplayableFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CurrentDisplayableFactory.jstatic_instance)))))



