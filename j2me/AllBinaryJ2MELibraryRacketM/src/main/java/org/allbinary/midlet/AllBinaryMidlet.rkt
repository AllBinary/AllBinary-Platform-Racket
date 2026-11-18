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
;; package org.allbinary.midlet

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../javax/microedition/lcdui/CommandListener.rkt"
  "../../../javax/microedition/midlet/MIDlet.rkt")
(lazy-require ["../../../javax/microedition/lcdui/Display.rkt" (Display.jm_getDisplay_1)])
(lazy-require ["../../../javax/microedition/lcdui/NullCanvas.rkt" (NullCanvas.jstatic_NULL_CANVAS)])
(lazy-require ["../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/system/Memory.rkt" (Memory.jm_getInfo_0)])
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AllBinaryMidlet%
  (class MIDlet%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_SET_DISPLAY JR.null])
    (field [f_SETTING_ JR.null])
    (field [f__DISPLAY_ JR.null])
    (field [f_SETTING_NO_TITLE JR.null])
    (field [f_hashtable JR.null])
    (field [f_midletDestroyed #f])
    (define/public (jm_setDisplay_1 _newDisplay)
    (let ([_title JR.null][_display JR.null])
      (let/ec jreturn
        (set! _title (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
        (when (not (eq? _newDisplay (NullCanvas.jstatic_NULL_CANVAS)))
            (begin
            (set! _title (send _newDisplay jm_getTitle_0))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_SETTING_ this)) jm_append_1 _title) jm_append_1 (get-field f__DISPLAY_ this)) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _newDisplay)) jm_toString_0) this (get-field f_SET_DISPLAY this))))
        (set! _display (send this jm_getDisplay_0))
        (send _display jm_setCurrent_1 _newDisplay))))
    (define/public (jm_getDisplay_0)
    (let ()
      (let/ec jreturn
        (jreturn (Display.jm_getDisplay_1 this)))))
    (define/public (jm_getCurrentDisplayable_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (Display.jm_getDisplay_1 this))))))
    (define/public (jm_setDestroyed_1 _destroyed)
    (let ()
      (let/ec jreturn
        (set-field! f_midletDestroyed this _destroyed))))
    (define/public (jm_isDestroyed_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_midletDestroyed this)))))
    (define/override (jm_startApp_0)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/override (jm_pauseApp_0)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_destroyAppInRunnable_2 _unconditional _isProgress)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_destroyApp_1 _unconditional)
    (let ([_METHOD_NAME JR.null])
      (let/ec jreturn
        (set! _METHOD_NAME "AllBinaryMidlet::destroyApp")
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this _METHOD_NAME _e))])
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this _METHOD_NAME)
            (PreLogUtil.jm_put_3 (Memory.jm_getInfo_0) this _METHOD_NAME)
            (send this jm_setDestroyed_1 #t)))))
    (define/public (jm_setStartStateHashtable_1 _hashtable)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _hashtable)) jm_toString_0) this "setStartStateHashtable")
        (set-field! f_hashtable this _hashtable))))
    (define/public (jm_getStartStateHashtable_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (get-field f_hashtable this))) jm_toString_0) this "getStartStateHashtable")
        (jreturn (get-field f_hashtable this)))))
    (define/public (jm_getCurrentStateHashtable_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this "getStateHashtable")
        (jreturn (get-field f_NULL_TABLE (StdUtil.jm_getInstance_0))))))
    (define/public (jm_commandAction_2 _command _displayable)
    (let ()
      (let/ec jreturn (void))))))
(define (AllBinaryMidlet.jclassValue) AllBinaryMidlet%)

(define AllBinaryMidlet.jcell_NULL_ALLBINARY_MIDLET 'jnone)
(define (AllBinaryMidlet.jstatic_NULL_ALLBINARY_MIDLET)
  (when (eq? AllBinaryMidlet.jcell_NULL_ALLBINARY_MIDLET 'jnone) (set! AllBinaryMidlet.jcell_NULL_ALLBINARY_MIDLET (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  AllBinaryMidlet.jcell_NULL_ALLBINARY_MIDLET)
(define (AllBinaryMidlet.jsetstatic_NULL_ALLBINARY_MIDLET value) (set! AllBinaryMidlet.jcell_NULL_ALLBINARY_MIDLET value))

(define (AllBinaryMidlet.jnew_0)
  (define this (new AllBinaryMidlet% [jclass "AllBinaryMidlet"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_SET_DISPLAY this "setDisplay")
    (set-field! f_SETTING_ this "Setting: ")
    (set-field! f__DISPLAY_ this " Display: ")
    (set-field! f_SETTING_NO_TITLE this "Setting: No Title, Display: ")
    (set-field! f_hashtable this (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
    
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_CONSTRUCTOR (get-field f_commonStrings this)) this "AllBinaryMidlet::AllBinaryMidlet")))
  this)

(define (AllBinaryMidlet.jm_getNullInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (AllBinaryMidlet.jstatic_NULL_ALLBINARY_MIDLET) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! AllBinaryMidlet.jcell_NULL_ALLBINARY_MIDLET (AllBinaryMidlet.jnew_0))))
        (jreturn (AllBinaryMidlet.jstatic_NULL_ALLBINARY_MIDLET)))))



