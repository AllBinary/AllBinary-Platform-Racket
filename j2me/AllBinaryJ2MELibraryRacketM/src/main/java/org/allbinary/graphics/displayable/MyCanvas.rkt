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
;; package org.allbinary.graphics.displayable

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../javax/microedition/lcdui/Canvas.rkt"
  "../../../../org/allbinary/graphics/displayable/command/MyCommandInterface.rkt"
  "./DisplayableInterface.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/NullCommandListener.rkt" (NullCommandListener.jstatic_NULL_COMMAND_LISTENER)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory.rkt" (MyCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/TouchJ2ME.rkt" (TouchJ2ME.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["./CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["./DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(provide (all-defined-out))

(define MyCanvas%
  (class Canvas%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_canvasStrings JR.null])
    (field [f_stringUtil JR.null])
    (field [f_displayInfo JR.null])
    (field [f_name JR.null])
    (field [f_childNameList JR.null])
    (field [f_commandStack JR.null])
    (field [f_commandListener JR.null])
    (field [f_paused #f])
    (field [f_touchME JR.null])
    (define/override (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getWidth_0)))))
    (define/override (jm_getHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getHeight_0)))))
    (define/override (jm_setFullScreenMode_1 _mode)
    (let ()
      (let/ec jreturn
        (super jm_setFullScreenMode_1 _mode)
        (send (get-field f_displayInfo this) jm_update_2 this (get-field f_SET_FULL_SCREEN_MODE (get-field f_canvasStrings this))))))
    (define/override (jm_sizeChanged_2 _w _h)
    (let ()
      (let/ec jreturn
        (send (get-field f_displayInfo this) jm_update_2 this (get-field f_SIZE_CHANGED (get-field f_canvasStrings this))))))
    (define/public (jm_getCommandStack_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_commandStack this)))))
    (define/public (jm_isCommand_1 _command)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_commandStack this) jm_contains_1 _command)))))
    (define/override (jm_addCommand_1 _command)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_commandStack this) jm_contains_1 _command))
            (begin
            (send (get-field f_commandStack this) jm_push_1 _command)
            (super jm_addCommand_1 _command))))))
    (define/override (jm_removeCommand_1 _command)
    (let ()
      (let/ec jreturn
        (send (get-field f_commandStack this) jm_removeElement_1 _command)
        (super jm_removeCommand_1 _command))))
    (define/public (jm_removeAllCommands_0)
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send (get-field f_commandStack this) jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (super jm_removeCommand_1 (send (get-field f_commandStack this) jm_pop_0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/override (jm_setCommandListener_1 _l)
    (let ()
      (let/ec jreturn
        (super jm_setCommandListener_1 _l)
        (set-field! f_commandListener this _l))))
    (define/public (jm_getCustomCommandListener_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_commandListener this)))))
    (define/public (jm_isPaused_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_paused this)))))
    (define/public (jm_removePauseCommand_0)
    (let ()
      (let/ec jreturn
        (send this jm_removeCommand_1 (get-field f_PAUSE_COMMAND (MyCommandsFactory.jm_getInstance_0))))))
    (define/public (jm_pause_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_PAUSE (get-field f_canvasStrings this)))
        (send this jm_removePauseCommand_0)
        (send this jm_addCommand_1 (get-field f_RESUME_COMMAND (MyCommandsFactory.jm_getInstance_0)))
        (send this jm_setPaused_1 #t))))
    (define/public (jm_unPause_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_UN_PAUSE (get-field f_canvasStrings this)))
        (send this jm_removeCommand_1 (get-field f_RESUME_COMMAND (MyCommandsFactory.jm_getInstance_0)))
        (send this jm_addCommand_1 (get-field f_PAUSE_COMMAND (MyCommandsFactory.jm_getInstance_0)))
        (send this jm_setPaused_1 #f))))
    (define/public (jm_process_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_displayInfo this) jm_process_0))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_draw_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_hasChild_1 _displayable)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_childNameList this) jm_contains_1 (get-field f_name _displayable))))))
    (define/public (jm_destroy_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 "Destroyed MyCanvas" this "destroy"))))
    (define/public (jm_setPaused_1 _isPaused)
    (let ()
      (let/ec jreturn
        (set-field! f_paused this _isPaused))))
    (define/public (jm_keyPressedByDevice_2 _keyCode _deviceId)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_keyRepeatedByDevice_2 _keyCode _deviceId)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_keyReleasedByDevice_2 _keyCode _deviceId)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_pointerDragged_2 _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_touchME this) jm_pointerDragged_2 _x _y))))
    (define/override (jm_pointerPressed_2 _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_touchME this) jm_pointerPressed_2 _x _y))))
    (define/override (jm_pointerReleased_2 _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_touchME this) jm_pointerReleased_2 _x _y))))
    (define/public (jm_nextSong_3 _nextSongSound _leftVolume _rightVolume)
    (let ()
      (let/ec jreturn (void))))))
(define (MyCanvas.jclassValue) MyCanvas%)

(define (MyCanvas.jnew_2 _name _childNameList)
  (define this (new MyCanvas% [jclass "MyCanvas"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_canvasStrings this (CanvasStrings.jm_getInstance_0))
    (set-field! f_stringUtil this (StringUtil.jm_getInstance_0))
    (set-field! f_displayInfo this (DisplayInfoSingleton.jm_getInstance_0))
    
    
    
    (set-field! f_commandListener this (NullCommandListener.jstatic_NULL_COMMAND_LISTENER))
    
    (set-field! f_touchME this (TouchJ2ME.jnew_0))
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_CONSTRUCTOR (get-field f_commonStrings this)) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)))
        (send (get-field f_displayInfo this) jm_update_2 this (get-field f_CONSTRUCTOR (get-field f_canvasStrings this)))
        (set-field! f_name this _name)
        (set-field! f_childNameList this _childNameList)
        (set-field! f_commandStack this (send (StdUtil.jm_getInstance_0) jm_createStack_0))))
  this)



