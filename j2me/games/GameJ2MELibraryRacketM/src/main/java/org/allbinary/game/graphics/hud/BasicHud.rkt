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
;; package org.allbinary.game.graphics.hud

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/Graphics.rkt" (Graphics.jstatic_HCENTER Graphics.jstatic_TOP Graphics.jstatic_RIGHT Graphics.jstatic_BOTTOM Graphics.jstatic_LEFT)])
(lazy-require ["../../../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isHTML_0)])
(lazy-require ["../../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorSetUtil.rkt" (BasicColorSetUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./HudGraphicsPosition.rkt" (HudGraphicsPosition.jnew_2 HudGraphicsPosition.jstatic_NULL_HUD_GRAPHICS_POSITION)])
(lazy-require ["./BasicHudFactory.rkt" (BasicHudFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicHud%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_canvasStrings JR.null])
    (field [f_basicSetColorUtil JR.null])
    (field [f_displayInfo JR.null])
    (field [f_updateMyFontProcessor JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_location 0])
    (field [f_direction 0])
    (field [f_bufferZone 0])
    (field [f_bufferZoneY 0])
    (field [f_hudGraphicsPosition JR.null])
    (field [f_x 0])
    (field [f_y 0])
    (field [f_basicColor JR.null])
    (field [f_color 0])
    (field [f_updateMaxWidth 0])
    (field [f_updateMaxHeight 0])
    (field [f_offsetY 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_ON_DISPLAY_CHANGE_EVENT (get-field f_canvasStrings this)) _e))])
            (set-field! f_hudGraphicsPosition this (send this jm_getHudGraphicsPositionWH_4 (send (get-field f_displayInfo this) jm_getLastWidth_0) (send (get-field f_displayInfo this) jm_getLastHeight_0) (get-field f_updateMaxWidth this) (get-field f_updateMaxHeight this)))
            (set-field! f_x this (JR.className (send (get-field f_hudGraphicsPosition this) jm_getPoint_0)))
            (send this jm_setY_1 (JR.className (send (get-field f_hudGraphicsPosition this) jm_getPoint_0))))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_getLocation_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_location this)))))
    (define/public (jm_getDirection_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_direction this)))))
    (define/public (jm_getHudGraphicsPositionWH_4 _width _height _maxWidth _maxHeight)
    (let ([_x JR.null][_y JR.null][_anchor JR.null][_basicHudFactory JR.null])
      (let/ec jreturn
        (set! _x 0)
        (set! _y 0)
        (set! _anchor 0)
        (set! _basicHudFactory (BasicHudFactory.jm_getInstance_0))
        (if (= (get-field f_BOTTOMLEFT _basicHudFactory) (send this jm_getLocation_0))
            (begin
            (set! _x (JR.i32 (+ (get-field f_bufferZone this) 2)))
            (set! _y (JR.i32 (- (JR.i32 (- _height _maxHeight)) (get-field f_bufferZone this))))
            (set! _anchor (bitwise-and (Graphics.jstatic_BOTTOM) (Graphics.jstatic_LEFT))))
            (if (= (get-field f_BOTTOMRIGHT _basicHudFactory) (send this jm_getLocation_0))
            (begin
            (set! _x (JR.i32 (- _width _maxWidth)))
            (set! _y (JR.i32 (- (JR.i32 (- _height _maxHeight)) (get-field f_bufferZone this))))
            (set! _anchor (bitwise-and (Graphics.jstatic_BOTTOM) (Graphics.jstatic_RIGHT))))
            (if (= (get-field f_TOPLEFT _basicHudFactory) (send this jm_getLocation_0))
            (begin
            (set! _x (JR.i32 (+ (get-field f_bufferZone this) 2)))
            (set! _y (get-field f_bufferZoneY this))
            (set! _anchor (Anchor.jstatic_TOP_LEFT)))
            (if (= (get-field f_TOPRIGHT _basicHudFactory) (send this jm_getLocation_0))
            (begin
            (set! _x (JR.i32 (- _width _maxWidth)))
            (set! _y (get-field f_bufferZoneY this))
            (set! _anchor (bitwise-and (Graphics.jstatic_TOP) (Graphics.jstatic_RIGHT))))
            (if (= (get-field f_TOPCENTER _basicHudFactory) (send this jm_getLocation_0))
            (begin
            (set! _x (JR.idiv (JR.i32 (- _width _maxWidth)) 2))
            (set! _y (get-field f_bufferZoneY this))
            (set! _anchor (bitwise-and (Graphics.jstatic_TOP) (Graphics.jstatic_HCENTER))))
            (if (= (get-field f_BOTTOMCENTER _basicHudFactory) (send this jm_getLocation_0))
            (begin
            (set! _x (JR.idiv (JR.i32 (- _width _maxWidth)) 2))
            (set! _y (JR.i32 (- (JR.i32 (- _height _maxHeight)) (get-field f_bufferZone this))))
            (set! _anchor (bitwise-and (Graphics.jstatic_BOTTOM) (Graphics.jstatic_HCENTER))))
            (when (= (get-field f_ABSOLUTE _basicHudFactory) (send this jm_getLocation_0))
            (begin
            (set! _x _maxHeight)
            (set! _y _maxWidth)
            (set! _anchor 0)))))))))
        (jreturn (HudGraphicsPosition.jnew_2 (send this jm_getPoint_2 _x _y) _anchor)))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onDisplayChangeEvent_1 _displayChangeEvent)
    (let ()
      (let/ec jreturn
        (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this)))))
    (define/public (jm_getPoint_2 _x _y)
    (let ()
      (let/ec jreturn
        (jreturn (send (PointFactory.jm_getInstance_0) jm_createXY_2 _x _y)))))
    (define/public (jm_getBufferZone_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_bufferZone this)))))
    (define/public (jm_setBufferZone_1 _bufferZone)
    (let ()
      (let/ec jreturn
        (set-field! f_bufferZone this _bufferZone)
        (if (J2MEUtil.jm_isHTML_0)
            (begin
            (set-field! f_bufferZoneY this (get-field f_bufferZone this)))
            (begin
            (set-field! f_bufferZoneY this (JR.i32 (+ (get-field f_bufferZone this) 5))))))))
    (define/public (jm_setLocation_1 _location)
    (let ()
      (let/ec jreturn
        (set-field! f_location this _location))))
    (define/public (jm_setDirection_1 _direction)
    (let ()
      (let/ec jreturn
        (set-field! f_direction this _direction))))
    (define/public (jm_getHudGraphicsPosition_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_hudGraphicsPosition this)))))
    (define/public (jm_getColor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_color this)))))
    (define/public (jm_getX_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_x this)))))
    (define/public (jm_setX_1 _x)
    (let ()
      (let/ec jreturn
        (set-field! f_x this _x))))
    (define/public (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_basicColor this _basicColor))))
    (define/public (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicColor this)))))
    (define/public (jm_setY_1 _y)
    (let ()
      (let/ec jreturn
        (set-field! f_y this _y))))
    (define/public (jm_getY_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_y this)))))
    (define/public (jm_paintSSO_4 _graphics _string _string2 _offset)
    (let ()
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send (get-field f_basicSetColorUtil this) jm_setBasicColorP_2 _graphics (send this jm_getBasicColorP_0))
        (send _graphics jm_drawString_4 _string (get-field f_x this) (send this jm_getY_0) (send (get-field f_hudGraphicsPosition this) jm_getAnchor_0))
        (send _graphics jm_drawString_4 _string2 (JR.i32 (+ (get-field f_x this) _offset)) (send this jm_getY_0) (send (get-field f_hudGraphicsPosition this) jm_getAnchor_0)))))
    (define/public (jm_paintSSOO_5 _graphics _string _string2 _offset _offset2)
    (let ()
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send _graphics jm_setColor_1 (send this jm_getColor_0))
        (send _graphics jm_drawString_4 _string (JR.i32 (+ (get-field f_x this) _offset)) (send this jm_getY_0) (send (get-field f_hudGraphicsPosition this) jm_getAnchor_0))
        (send _graphics jm_drawString_4 _string2 (JR.i32 (+ (get-field f_x this) _offset2)) (send this jm_getY_0) (send (get-field f_hudGraphicsPosition this) jm_getAnchor_0)))))
    (define/public (jm_paintDXY_9 _graphics _charArray _offset _len _charArray2 _offset2 _len2 _xOffset _xOffset2)
    (let ([_y JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send (get-field f_basicSetColorUtil this) jm_setBasicColorP_2 _graphics (send this jm_getBasicColorP_0))
        (set! _y (send this jm_getY_0))
        (send _graphics jm_drawChars_6 _charArray _offset _len (JR.i32 (+ (get-field f_x this) _xOffset)) _y (send (get-field f_hudGraphicsPosition this) jm_getAnchor_0))
        (send _graphics jm_drawChars_6 _charArray2 _offset2 _len2 (JR.i32 (+ (get-field f_x this) _xOffset2)) _y (send (get-field f_hudGraphicsPosition this) jm_getAnchor_0)))))
    (define/public (jm_paintDX_8 _graphics _charArray _offset _len _charArray2 _offset2 _len2 _xOffset)
    (let ([_y JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send (get-field f_basicSetColorUtil this) jm_setBasicColorP_2 _graphics (send this jm_getBasicColorP_0))
        (set! _y (send this jm_getY_0))
        (send _graphics jm_drawChars_6 _charArray _offset _len (get-field f_x this) _y (send (get-field f_hudGraphicsPosition this) jm_getAnchor_0))
        (send _graphics jm_drawChars_6 _charArray2 _offset2 _len2 (JR.i32 (+ (get-field f_x this) _xOffset)) _y (send (get-field f_hudGraphicsPosition this) jm_getAnchor_0)))))
    (define/public (jm_paintOffsetAndLength_4 _graphics _charArray _offset _len)
    (let ([_y JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send (get-field f_basicSetColorUtil this) jm_setBasicColorP_2 _graphics (send this jm_getBasicColorP_0))
        (set! _y (send this jm_getY_0))
        (send _graphics jm_drawChars_6 _charArray _offset _len (get-field f_x this) _y (send (get-field f_hudGraphicsPosition this) jm_getAnchor_0)))))
    (define/public (jm_paintString_2 _graphics _string)
    (let ([_y JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send (get-field f_basicSetColorUtil this) jm_setBasicColorP_2 _graphics (send this jm_getBasicColorP_0))
        (set! _y (JR.i32 (+ (send this jm_getY_0) (get-field f_offsetY this))))
        (send _graphics jm_drawString_4 _string (get-field f_x this) _y (send (get-field f_hudGraphicsPosition this) jm_getAnchor_0)))))))
(define (BasicHud.jclassValue) BasicHud%)

(define (BasicHud.jnew_4 _location _direction _bufferZone _basicColor)
  (define this (new BasicHud% [jclass "BasicHud"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_canvasStrings this (CanvasStrings.jm_getInstance_0))
    (set-field! f_basicSetColorUtil this (BasicColorSetUtil.jm_getInstance_0))
    (set-field! f_displayInfo this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_updateMyFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
    
    
    
    
    (set-field! f_hudGraphicsPosition this (HudGraphicsPosition.jstatic_NULL_HUD_GRAPHICS_POSITION))
    
    
    (set-field! f_basicColor this (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)))
    
    
    
    
    (let ()
      (let/ec jreturn
        (send this jm_setLocation_1 _location)
        (send this jm_setDirection_1 _direction)
        (send this jm_setBufferZone_1 _bufferZone)
        (send this jm_onDisplayChangeEvent_1 (get-field f_displayChangeEvent (DisplayInfoSingleton.jm_getInstance_0)))
        (send this jm_setBasicColorP_1 _basicColor)
        (set-field! f_color this (send _basicColor jm_intValue_0))))
  this)



