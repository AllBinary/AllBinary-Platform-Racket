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
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/AndroidUtil.rkt" (AndroidUtil.jm_isAndroid_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/event/DisplayChangeEvent.rkt" (DisplayChangeEvent.jnew_1)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.rkt" (DisplayChangeEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/event/LastDisplayChangeEventHandler.rkt" (LastDisplayChangeEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/threed/SWTJOGLProcessor.rkt" (SWTJOGLProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_putOE_4)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/system/os/OperatingSystemFactory.rkt" (OperatingSystemFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./BaseScalable.rkt" (BaseScalable.jnew_0)])
(provide (all-defined-out))

(define DisplayInfoSingleton%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonLabels JR.null])
    (field [f_commonSeps JR.null])
    (field [f_commonStrings JR.null])
    (field [f_ORIENTATION JR.null])
    (field [f_ADJUSTING_FOR_SCALING_IN_PORTRAIT JR.null])
    (field [f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE JR.null])
    (field [f_last JR.null])
    (field [f_lastHalf JR.null])
    (field [f_full JR.null])
    (field [f_top 0])
    (field [f_left 0])
    (field [f_xOffset 0])
    (field [f_yOffset 0])
    (field [f_scaleLargestTo 0.0])
    (field [f_WIDTH 0])
    (field [f_HEIGHT 0])
    (field [f_CUSTOM_WIDTH 0])
    (field [f_CUSTOM_HEIGHT 0])
    (field [f_scalableListener JR.null])
    (field [f_displayRatio 0.0])
    (field [f_ratio 0.0])
    (field [f_SET_LAST_SIZE_METHOD_NAME JR.null])
    (field [f_FULL_WIDTH JR.null])
    (field [f_FULL_HEIGHT JR.null])
    (field [f_LAST_WIDTH JR.null])
    (field [f_LAST_HEIGHT JR.null])
    (field [f_PORTRAIT JR.null])
    (field [f_LANDSCAPE JR.null])
    (field [f_displayChangeEvent JR.null])
    (field [f_FIRE_METHOD_NAME JR.null])
    (field [f_REASON JR.null])
    (field [f_UPDATE_FROM_ORIENTATION_CHANGE JR.null])
    (field [f_list JR.null])
    (field [f_DISPLAY_INFO JR.null])
    (field [f_FULL JR.null])
    (field [f_LAST JR.null])
    (field [f_LAST_HALF JR.null])
    (define/public (jm_getLastHalf_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_lastHalf this)))))
    (define/public (jm_getLast_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_last this)))))
    (define/public (jm_getFull_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_full this)))))
    (define/public (jm_getScaleLargestTo_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_scaleLargestTo this)))))
    (define/public (jm_setScaleLargestTo_1 _scaleLargestTo)
    (let ()
      (let/ec jreturn
        (set-field! f_scaleLargestTo this (JR.toDouble _scaleLargestTo)))))
    (define/public (jm_setLastSize_3 _aLastWidth _aLastHeight _reason)
    (let ()
      (let/ec jreturn
        (when (or (not (= (vector-ref (get-field f_full this) (get-field f_WIDTH this)) _aLastWidth)) (not (= (vector-ref (get-field f_full this) (get-field f_HEIGHT this)) _aLastHeight)))
            (begin
            (send this jm_setLastSizeForce_3 _aLastWidth _aLastHeight _reason))))))
    (define/public (jm_setLastSizeForce_3 _aLastWidth _aLastHeight _reason)
    (let ([_stringMaker JR.null][_aFullWidth JR.null][_aFullHeight JR.null][_operatingSystemInterface JR.null])
      (let/ec jreturn
        (set! _stringMaker (StringMaker.jnew_0))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send _stringMaker jm_append_1 (get-field f_START_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 _reason) jm_toString_0) this (get-field f_SET_LAST_SIZE_METHOD_NAME this))
        (set! _aFullWidth _aLastWidth)
        (set! _aFullHeight _aLastHeight)
        (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (send (send _stringMaker jm_append_1 (get-field f_FULL_WIDTH this)) jm_appendint_1 _aFullWidth) jm_append_1 (get-field f_FULL_HEIGHT this)) jm_appendint_1 _aFullHeight) jm_append_1 (send this jm_toString_0)) jm_toString_0) this (get-field f_SET_LAST_SIZE_METHOD_NAME this))
        (set! _operatingSystemInterface (send (OperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0))
        (when (send _operatingSystemInterface jm_isOverScan_0)
            (begin
            (set! _aLastWidth (JR.idiv (JR.i32 (* _aLastWidth (send _operatingSystemInterface jm_getOverScanXPercent_0))) 100))
            (set! _aLastHeight (JR.idiv (JR.i32 (* _aLastHeight (send _operatingSystemInterface jm_getOverScanYPercent_0))) 100))))
        (when (send _operatingSystemInterface jm_isScalable_0)
            (begin
            (if (send this jm_isPortraitWH_2 _aLastWidth _aLastHeight)
                (begin
                (if (> (JR.toDouble _aLastHeight) (get-field f_scaleLargestTo this))
                    (begin
                    (set-field! f_displayRatio this (/ (get-field f_scaleLargestTo this) (JR.toDouble _aLastHeight)))
                    (set-field! f_ratio this (/ (JR.toDouble _aLastHeight) (get-field f_scaleLargestTo this)))
                    (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                    (send (get-field f_logUtil this) jm_putF_3 (send (send (send _stringMaker jm_append_1 (get-field f_ADJUSTING_FOR_SCALING_IN_PORTRAIT this)) jm_appendfloat_1 (get-field f_displayRatio this)) jm_toString_0) this (get-field f_SET_LAST_SIZE_METHOD_NAME this))
                    (set! _aLastWidth (JR.d2i (* (JR.toDouble _aLastWidth) (get-field f_displayRatio this))))
                    (set! _aLastHeight (JR.d2i (* (JR.toDouble _aLastHeight) (get-field f_displayRatio this))))
                    (send (get-field f_scalableListener this) jm_scale_1 (get-field f_ratio this)))
                    (begin
                    (set-field! f_ratio this 1.0)
                    (send (get-field f_scalableListener this) jm_scale_1 (get-field f_ratio this)))))
                (begin
                (if (> (JR.toDouble _aLastWidth) (get-field f_scaleLargestTo this))
                    (begin
                    (set-field! f_displayRatio this (/ (get-field f_scaleLargestTo this) (JR.toDouble _aLastWidth)))
                    (set-field! f_ratio this (/ (JR.toDouble _aLastWidth) (get-field f_scaleLargestTo this)))
                    (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                    (send (get-field f_logUtil this) jm_putF_3 (send (send (send _stringMaker jm_append_1 (get-field f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE this)) jm_appendfloat_1 (get-field f_displayRatio this)) jm_toString_0) this (get-field f_SET_LAST_SIZE_METHOD_NAME this))
                    (set! _aLastWidth (JR.d2i (* (JR.toDouble _aLastWidth) (get-field f_displayRatio this))))
                    (set! _aLastHeight (JR.d2i (* (JR.toDouble _aLastHeight) (get-field f_displayRatio this))))
                    (send (get-field f_scalableListener this) jm_scale_1 (get-field f_ratio this)))
                    (begin
                    (set-field! f_ratio this 1.0)
                    (send (get-field f_scalableListener this) jm_scale_1 (get-field f_ratio this))))))))
        (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (send _stringMaker jm_append_1 (get-field f_LAST_WIDTH this)) jm_appendint_1 _aLastWidth) jm_append_1 (get-field f_LAST_HEIGHT this)) jm_appendint_1 _aLastHeight) jm_toString_0) this (get-field f_SET_LAST_SIZE_METHOD_NAME this))
        (set-field! f_xOffset this (JR.i32 (- _aFullWidth _aLastWidth)))
        (set-field! f_yOffset this (JR.i32 (- _aFullHeight _aLastHeight)))
        (set-field! f_left this (send (get-field f_scalableListener this) jm_getLeft_1 (get-field f_xOffset this)))
        (set-field! f_top this (send (get-field f_scalableListener this) jm_getTop_1 (get-field f_yOffset this)))
        (vector-set! (get-field f_full this) (get-field f_WIDTH this) _aFullWidth)
        (vector-set! (get-field f_full this) (get-field f_HEIGHT this) _aFullHeight)
        (vector-set! (get-field f_last this) (get-field f_WIDTH this) _aLastWidth)
        (vector-set! (get-field f_lastHalf this) (get-field f_WIDTH this) (arithmetic-shift (vector-ref (get-field f_last this) (get-field f_WIDTH this)) (- (bitwise-and 1 31))))
        (vector-set! (get-field f_last this) (get-field f_HEIGHT this) _aLastHeight)
        (vector-set! (get-field f_lastHalf this) (get-field f_HEIGHT this) (arithmetic-shift (vector-ref (get-field f_last this) (get-field f_HEIGHT this)) (- (bitwise-and 1 31))))
        (send (SWTJOGLProcessor.jm_getInstance_0) jm_setCustom_3 _aLastWidth _aLastHeight (get-field f_ratio this))
        (send this jm_add_1 (get-field f_SET_LAST_SIZE_METHOD_NAME this)))))
    (define/public (jm_isPortraitWH_2 _lastWidth _lastHeight)
    (let ()
      (let/ec jreturn
        (if (> _lastHeight _lastWidth)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_isPortrait_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_isPortraitWH_2 (vector-ref (get-field f_last this) (get-field f_WIDTH this)) (vector-ref (get-field f_last this) (get-field f_HEIGHT this)))))))
    (define/public (jm_add_1 _reason)
    (let ([_stringMaker JR.null])
      (let/ec jreturn
        (set! _stringMaker (StringMaker.jnew_0))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send _stringMaker jm_append_1 (get-field f_REASON this)) jm_append_1 _reason) jm_toString_0) this (get-field f_FIRE_METHOD_NAME this))
        (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
        (send (get-field f_logUtil this) jm_putF_3 (send this jm_toStringAppend_1 _stringMaker) this (get-field f_FIRE_METHOD_NAME this))
        (send (get-field f_list this) jm_add_1 _reason))))
    (define/public (jm_process_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putOE_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_FIRE_METHOD_NAME this) _e))])
            (when (> (send (get-field f_list this) jm_size_0) 0)
                (begin
                (send this jm_processForced_0)))
            (send (get-field f_list this) jm_clear_0)))))
    (define/public (jm_processForced_0)
    (let ([_swtJOGLProcessor JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putOE_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_FIRE_METHOD_NAME this) _e))])
            (set! _swtJOGLProcessor (SWTJOGLProcessor.jm_getInstance_0))
            (send _swtJOGLProcessor jm_clear_0)
            (send (DisplayChangeEventHandler.jm_getInstance_0) jm_fireEvent_1 (get-field f_displayChangeEvent this))
            (send (LastDisplayChangeEventHandler.jm_getInstance_0) jm_fireEvent_1 (get-field f_displayChangeEvent this))
            (send _swtJOGLProcessor jm_onSurfaceChanged_0)))))
    (define/public (jm_update_2 _displayable _reason)
    (let ([_aLastWidth JR.null][_aLastHeight JR.null][_aFullWidth JR.null][_aFullHeight JR.null][_stringMaker JR.null][_features JR.null][_openGLFeatureFactory JR.null][_operatingSystemInterface JR.null])
      (let/ec jreturn
        (set! _aLastWidth (send _displayable jm_getWidth_0))
        (set! _aLastHeight (send _displayable jm_getHeight_0))
        (set! _aFullWidth _aLastWidth)
        (set! _aFullHeight _aLastHeight)
        (set! _stringMaker (StringMaker.jnew_0))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (send (send (send (send (send _stringMaker jm_append_1 (get-field f_START_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 _reason) jm_append_1 (get-field f_LAST_WIDTH this)) jm_appendint_1 _aLastWidth) jm_append_1 (get-field f_LAST_HEIGHT this)) jm_appendint_1 _aLastHeight) jm_append_1 (get-field f_SPACE (get-field f_commonSeps this))) jm_append_1 (send this jm_toString_0)) jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
        (when (and (> _aLastWidth 0) (> _aLastHeight 0))
            (begin
            (set! _features (Features.jm_getInstance_0))
            (set! _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
            (when (or (or (not (send _features jm_isDefault_1 (get-field f_OPENGL _openGLFeatureFactory))) (not (= (vector-ref (get-field f_last this) (get-field f_WIDTH this)) _aLastWidth))) (not (= (vector-ref (get-field f_last this) (get-field f_HEIGHT this)) _aLastHeight)))
                (begin
                (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                (send (get-field f_logUtil this) jm_putF_3 (send (send _stringMaker jm_append_1 (get-field f_UPDATE_FROM_ORIENTATION_CHANGE this)) jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
                (set! _operatingSystemInterface (send (OperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0))
                (when (send _operatingSystemInterface jm_isOverScan_0)
                    (begin
                    (set! _aLastWidth (JR.idiv (JR.i32 (* _aLastWidth (send _operatingSystemInterface jm_getOverScanXPercent_0))) 100))
                    (set! _aLastHeight (JR.idiv (JR.i32 (* _aLastHeight (send _operatingSystemInterface jm_getOverScanYPercent_0))) 100))))
                (when (send _operatingSystemInterface jm_isScalable_0)
                    (begin
                    (if (send this jm_isPortraitWH_2 _aLastWidth _aLastHeight)
                        (begin
                        (if (> (JR.toDouble _aLastHeight) (get-field f_scaleLargestTo this))
                            (begin
                            (set-field! f_displayRatio this (/ (get-field f_scaleLargestTo this) (JR.toDouble _aLastHeight)))
                            (set-field! f_ratio this (/ (JR.toDouble _aLastHeight) (get-field f_scaleLargestTo this)))
                            (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                            (send (get-field f_logUtil this) jm_putF_3 (send (send (send _stringMaker jm_append_1 (get-field f_ADJUSTING_FOR_SCALING_IN_PORTRAIT this)) jm_appendfloat_1 (get-field f_displayRatio this)) jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
                            (set! _aLastWidth (JR.d2i (* (JR.toDouble _aLastWidth) (get-field f_displayRatio this))))
                            (set! _aLastHeight (JR.d2i (* (JR.toDouble _aLastHeight) (get-field f_displayRatio this))))
                            (send (get-field f_scalableListener this) jm_scale_1 (get-field f_ratio this)))
                            (begin
                            (set-field! f_ratio this 1.0)
                            (send (get-field f_scalableListener this) jm_scale_1 (get-field f_ratio this)))))
                        (begin
                        (if (> (JR.toDouble _aLastWidth) (get-field f_scaleLargestTo this))
                            (begin
                            (set-field! f_displayRatio this (/ (get-field f_scaleLargestTo this) (JR.toDouble _aLastWidth)))
                            (set-field! f_ratio this (/ (JR.toDouble _aLastWidth) (get-field f_scaleLargestTo this)))
                            (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                            (send (get-field f_logUtil this) jm_putF_3 (send (send (send _stringMaker jm_append_1 (get-field f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE this)) jm_appendfloat_1 (get-field f_displayRatio this)) jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
                            (set! _aLastWidth (JR.d2i (* (JR.toDouble _aLastWidth) (get-field f_displayRatio this))))
                            (set! _aLastHeight (JR.d2i (* (JR.toDouble _aLastHeight) (get-field f_displayRatio this))))
                            (send (get-field f_scalableListener this) jm_scale_1 (get-field f_ratio this)))
                            (begin
                            (set-field! f_ratio this 1.0)
                            (send (get-field f_scalableListener this) jm_scale_1 (get-field f_ratio this))))))))
                (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (send (send _stringMaker jm_append_1 (get-field f_UPDATE_FROM_ORIENTATION_CHANGE this)) jm_append_1 (get-field f_LAST_WIDTH this)) jm_appendint_1 _aLastWidth) jm_append_1 (get-field f_LAST_HEIGHT this)) jm_appendint_1 _aLastHeight) jm_toString_0) this (get-field f_UPDATE (get-field f_commonStrings this)))
                (set-field! f_xOffset this (JR.i32 (- _aFullWidth _aLastWidth)))
                (set-field! f_yOffset this (JR.i32 (- _aFullHeight _aLastHeight)))
                (set-field! f_left this (send (get-field f_scalableListener this) jm_getLeft_1 (get-field f_xOffset this)))
                (set-field! f_top this (send (get-field f_scalableListener this) jm_getTop_1 (get-field f_yOffset this)))
                (vector-set! (get-field f_full this) (get-field f_WIDTH this) _aFullWidth)
                (vector-set! (get-field f_full this) (get-field f_HEIGHT this) _aFullHeight)
                (vector-set! (get-field f_last this) (get-field f_WIDTH this) _aLastWidth)
                (vector-set! (get-field f_lastHalf this) (get-field f_WIDTH this) (arithmetic-shift (vector-ref (get-field f_last this) (get-field f_WIDTH this)) (- (bitwise-and 1 31))))
                (vector-set! (get-field f_last this) (get-field f_HEIGHT this) _aLastHeight)
                (vector-set! (get-field f_lastHalf this) (get-field f_HEIGHT this) (arithmetic-shift (vector-ref (get-field f_last this) (get-field f_HEIGHT this)) (- (bitwise-and 1 31))))
                (send (SWTJOGLProcessor.jm_getInstance_0) jm_setCustom_3 _aLastWidth _aLastHeight (get-field f_ratio this))
                (send this jm_add_1 (get-field f_UPDATE (get-field f_commonStrings this))))))))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (jreturn (send this jm_toStringAppend_1 _stringBuffer)))))
    (define/public (jm_toStringAppend_1 _stringBuffer)
    (let ()
      (let/ec jreturn
        (send _stringBuffer jm_append_1 (get-field f_DISPLAY_INFO this))
        (send _stringBuffer jm_append_1 (get-field f_FULL this))
        (send _stringBuffer jm_append_1 (get-field f_WIDTH_LABEL (get-field f_commonLabels this)))
        (send _stringBuffer jm_appendint_1 (vector-ref (get-field f_full this) (get-field f_WIDTH this)))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (get-field f_commonSeps this)))
        (send _stringBuffer jm_append_1 (get-field f_FULL this))
        (send _stringBuffer jm_append_1 (get-field f_HEIGHT_LABEL (get-field f_commonLabels this)))
        (send _stringBuffer jm_appendint_1 (vector-ref (get-field f_full this) (get-field f_HEIGHT this)))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (get-field f_commonSeps this)))
        (send _stringBuffer jm_append_1 (get-field f_LAST this))
        (send _stringBuffer jm_append_1 (get-field f_WIDTH_LABEL (get-field f_commonLabels this)))
        (send _stringBuffer jm_appendint_1 (vector-ref (get-field f_last this) (get-field f_WIDTH this)))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (get-field f_commonSeps this)))
        (send _stringBuffer jm_append_1 (get-field f_LAST this))
        (send _stringBuffer jm_append_1 (get-field f_HEIGHT_LABEL (get-field f_commonLabels this)))
        (send _stringBuffer jm_appendint_1 (vector-ref (get-field f_last this) (get-field f_HEIGHT this)))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (get-field f_commonSeps this)))
        (send _stringBuffer jm_append_1 (get-field f_LAST_HALF this))
        (send _stringBuffer jm_append_1 (get-field f_WIDTH_LABEL (get-field f_commonLabels this)))
        (send _stringBuffer jm_appendint_1 (vector-ref (get-field f_lastHalf this) (get-field f_WIDTH this)))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (get-field f_commonSeps this)))
        (send _stringBuffer jm_append_1 (get-field f_LAST_HALF this))
        (send _stringBuffer jm_append_1 (get-field f_HEIGHT_LABEL (get-field f_commonLabels this)))
        (send _stringBuffer jm_appendint_1 (vector-ref (get-field f_lastHalf this) (get-field f_HEIGHT this)))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (get-field f_commonSeps this)))
        (send _stringBuffer jm_append_1 (if (send this jm_isPortrait_0) (get-field f_PORTRAIT this) (get-field f_LANDSCAPE this)))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_getTop_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_top this)))))
    (define/public (jm_getLeft_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_left this)))))
    (define/public (jm_getLastWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_last this) (get-field f_WIDTH this))))))
    (define/public (jm_getLastHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_last this) (get-field f_HEIGHT this))))))
    (define/public (jm_getLastHalfWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_lastHalf this) (get-field f_WIDTH this))))))
    (define/public (jm_getLastHalfHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_lastHalf this) (get-field f_HEIGHT this))))))
    (define/public (jm_getCustomLastWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_last this) (get-field f_CUSTOM_WIDTH this))))))
    (define/public (jm_getCustomLastHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_last this) (get-field f_CUSTOM_HEIGHT this))))))
    (define/public (jm_getRawLastWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_last this) (get-field f_WIDTH this))))))
    (define/public (jm_getRawLastHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_last this) (get-field f_HEIGHT this))))))
    (define/public (jm_setCustom_2 _width _height)
    (let ()
      (let/ec jreturn
        (vector-set! (get-field f_last this) (get-field f_CUSTOM_WIDTH this) _width)
        (vector-set! (get-field f_lastHalf this) (get-field f_CUSTOM_WIDTH this) (arithmetic-shift (vector-ref (get-field f_last this) (get-field f_CUSTOM_WIDTH this)) (- (bitwise-and 1 31))))
        (vector-set! (get-field f_last this) (get-field f_CUSTOM_HEIGHT this) _height)
        (vector-set! (get-field f_lastHalf this) (get-field f_CUSTOM_HEIGHT this) (arithmetic-shift (vector-ref (get-field f_last this) (get-field f_CUSTOM_HEIGHT this)) (- (bitwise-and 1 31)))))))
    (define/public (jm_setScalableListener_1 _scalableListener)
    (let ()
      (let/ec jreturn
        (set-field! f_scalableListener this _scalableListener))))
    (define/public (jm_getScalableListener_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_scalableListener this)))))
    (define/public (jm_getRatio_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_ratio this)))))
    (define/public (jm_getDisplayRatio_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_displayRatio this)))))
    (define/public (jm_setOffset_2 _left _top)
    (let ()
      (let/ec jreturn
        (set-field! f_left this _left))))
    (define/public (jm_getxOffset_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_xOffset this)))))
    (define/public (jm_getyOffset_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_yOffset this)))))))
(define (DisplayInfoSingleton.jclassValue) DisplayInfoSingleton%)

(define DisplayInfoSingleton.jcell_SINGLETON 'jnone)
(define (DisplayInfoSingleton.jstatic_SINGLETON)
  (when (eq? DisplayInfoSingleton.jcell_SINGLETON 'jnone) (set! DisplayInfoSingleton.jcell_SINGLETON (DisplayInfoSingleton.jnew_0)))
  DisplayInfoSingleton.jcell_SINGLETON)
(define (DisplayInfoSingleton.jsetstatic_SINGLETON value) (set! DisplayInfoSingleton.jcell_SINGLETON value))

(define (DisplayInfoSingleton.jnew_0)
  (define this (new DisplayInfoSingleton% [jclass "DisplayInfoSingleton"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonLabels this (CommonLabels.jm_getInstance_0))
    (set-field! f_commonSeps this (CommonSeps.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_ORIENTATION this "ORIENTATION")
    (set-field! f_ADJUSTING_FOR_SCALING_IN_PORTRAIT this "Adjusting for Scaling in portrait display ratio: ")
    (set-field! f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE this "Adjusting for Scaling in landscape display ratio: ")
    (set-field! f_last this (JR.newArray 0 4))
    (set-field! f_lastHalf this (JR.newArray 0 4))
    (set-field! f_full this (JR.newArray 0 4))
    
    
    
    
    
    (set-field! f_WIDTH this 0)
    (set-field! f_HEIGHT this 1)
    (set-field! f_CUSTOM_WIDTH this 2)
    (set-field! f_CUSTOM_HEIGHT this 3)
    (set-field! f_scalableListener this (BaseScalable.jnew_0))
    
    (set-field! f_ratio this 1.0)
    (set-field! f_SET_LAST_SIZE_METHOD_NAME this "setLastSize")
    (set-field! f_FULL_WIDTH this " FullWidth: ")
    (set-field! f_FULL_HEIGHT this " FullHeight: ")
    (set-field! f_LAST_WIDTH this "LastWidth: ")
    (set-field! f_LAST_HEIGHT this " LastHeight: ")
    (set-field! f_PORTRAIT this "Portrait")
    (set-field! f_LANDSCAPE this "Landscape")
    (set-field! f_displayChangeEvent this (DisplayChangeEvent.jnew_1 this))
    (set-field! f_FIRE_METHOD_NAME this "fire")
    (set-field! f_REASON this "reason: ")
    (set-field! f_UPDATE_FROM_ORIENTATION_CHANGE this "Updating from Orientation Change ")
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (set-field! f_DISPLAY_INFO this "Display Info: ")
    (set-field! f_FULL this "full")
    (set-field! f_LAST this "last")
    (set-field! f_LAST_HALF this "lastHalf")
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length (get-field f_last this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! (get-field f_last this) _index 0)
            (vector-set! (get-field f_lastHalf this) _index 0)
            (vector-set! (get-field f_full this) _index 0))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (if (AndroidUtil.jm_isAndroid_0)
            (begin
            (set-field! f_scaleLargestTo this 640.0))
            (begin
            (set-field! f_scaleLargestTo this 1080.0)))))
  this)

(define (DisplayInfoSingleton.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DisplayInfoSingleton.jstatic_SINGLETON)))))



