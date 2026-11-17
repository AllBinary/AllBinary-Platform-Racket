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
;; package org.allbinary.graphics.color

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./BasicColor.rkt" (BasicColor.jnew_3)])
(lazy-require ["./BasicColorUtil.rkt" (BasicColorUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicColorFactory%
  (class JObject%
    (super-new)
    (field [f_NULL_COLOR JR.null])
    (field [f_TAN JR.null])
    (field [f_SKIN_PINK JR.null])
    (field [f_RED JR.null])
    (field [f_LIGHT_RED JR.null])
    (field [f_DARK_GREEN JR.null])
    (field [f_GREEN JR.null])
    (field [f_LIGHT_GREEN JR.null])
    (field [f_PURPLE JR.null])
    (field [f_BLUE JR.null])
    (field [f_LIGHT_BLUE JR.null])
    (field [f_VERY_LIGHT_BLUE JR.null])
    (field [f_PUCE JR.null])
    (field [f_AQUA JR.null])
    (field [f_YELLOW JR.null])
    (field [f_PINK JR.null])
    (field [f_BLACK JR.null])
    (field [f_GREY JR.null])
    (field [f_LIGHT_GREY JR.null])
    (field [f_DARK_GREY JR.null])
    (field [f_ORANGE JR.null])
    (field [f_BROWN JR.null])
    (field [f_WHITE JR.null])
    (field [f_TRANSPARENT_COLOR JR.null])
    (field [f_TRANSPARENT_GREY JR.null])
    (field [f_TRANSPARENT_BLACK JR.null])
    (field [f_TRANSPARENT_RED JR.null])
    (field [f_CLEAR_COLOR JR.null])
    (field [f_BORDER_COLOR JR.null])
    (define/public (jm_createInstance_1 _value)
    (let ()
      (let/ec jreturn
        (jreturn (BasicColor.jnew_3 (get-field f_ALPHA (BasicColorUtil.jm_getInstance_0)) _value (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))))))
    (define/public (jm_createInstanceA_2 _alphaValue _value)
    (let ()
      (let/ec jreturn
        (jreturn (BasicColor.jnew_3 _alphaValue _value (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))))))
    (define/public (jm_createInstanceAN_3 _alphaValue _value _name)
    (let ()
      (let/ec jreturn
        (jreturn (BasicColor.jnew_3 _alphaValue _value _name)))))
    (define/public (jm_createInstanceARGB_5 _alphaValue _r _g _b _name)
    (let ([_ALPHA_MASK JR.null])
      (let/ec jreturn
        (set! _ALPHA_MASK #xFF000000)
        (jreturn (BasicColor.jnew_3 _alphaValue (JR.i32 (+ (JR.i32 (+ (JR.i32 (+ (bitwise-and (JR.i32 (arithmetic-shift _alphaValue (bitwise-and 24 31))) _ALPHA_MASK) (bitwise-and (JR.i32 (arithmetic-shift _r (bitwise-and 16 31))) #x00FF0000))) (bitwise-and (JR.i32 (arithmetic-shift _g (bitwise-and 8 31))) #x0000FF00))) (bitwise-and _b #x000000FF))) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))))))))

(define BasicColorFactory.jcell_instance 'jnone)
(define (BasicColorFactory.jstatic_instance)
  (when (eq? BasicColorFactory.jcell_instance 'jnone) (set! BasicColorFactory.jcell_instance (BasicColorFactory.jnew_0)))
  BasicColorFactory.jcell_instance)

(define (BasicColorFactory.jnew_0)
  (define this (new BasicColorFactory% [jclass "BasicColorFactory"]))
    (set-field! f_NULL_COLOR this (send this jm_createInstanceARGB_5 255 255 255 255 "null color"))
    (set-field! f_TAN this (send this jm_createInstance_1 #xE9D8B5))
    (set-field! f_SKIN_PINK this (send this jm_createInstance_1 #xFDCECE))
    (set-field! f_RED this (send this jm_createInstanceAN_3 (get-field f_ALPHA (BasicColorUtil.jm_getInstance_0)) #xFF0000 "red"))
    (set-field! f_LIGHT_RED this (send this jm_createInstanceAN_3 (get-field f_ALPHA (BasicColorUtil.jm_getInstance_0)) #xFFA0A0 "light red"))
    (set-field! f_DARK_GREEN this (send this jm_createInstance_1 #x00FF00))
    (set-field! f_GREEN this (send this jm_createInstanceAN_3 (get-field f_ALPHA (BasicColorUtil.jm_getInstance_0)) #x00DD00 "green"))
    (set-field! f_LIGHT_GREEN this (send this jm_createInstance_1 #x007700))
    (set-field! f_PURPLE this (send this jm_createInstanceAN_3 (get-field f_ALPHA (BasicColorUtil.jm_getInstance_0)) #x400040 "purple"))
    (set-field! f_BLUE this (send this jm_createInstanceAN_3 (get-field f_ALPHA (BasicColorUtil.jm_getInstance_0)) #x0000FF "blue"))
    (set-field! f_LIGHT_BLUE this (send this jm_createInstance_1 #x00aaff))
    (set-field! f_VERY_LIGHT_BLUE this (send this jm_createInstance_1 #x000033))
    (set-field! f_PUCE this (send this jm_createInstance_1 #xFF00AA))
    (set-field! f_AQUA this (send this jm_createInstance_1 #x00FFFF))
    (set-field! f_YELLOW this (send this jm_createInstanceAN_3 (get-field f_ALPHA (BasicColorUtil.jm_getInstance_0)) #xFFFF00 "yellow"))
    (set-field! f_PINK this (send this jm_createInstance_1 #xFF00FF))
    (set-field! f_BLACK this (send this jm_createInstanceAN_3 (get-field f_ALPHA (BasicColorUtil.jm_getInstance_0)) #x000000 "black"))
    (set-field! f_GREY this (send this jm_createInstanceAN_3 (get-field f_ALPHA (BasicColorUtil.jm_getInstance_0)) #xAAAAAA "grey"))
    (set-field! f_LIGHT_GREY this (send this jm_createInstance_1 #xC0C0C0))
    (set-field! f_DARK_GREY this (send this jm_createInstance_1 #x404040))
    (set-field! f_ORANGE this (send this jm_createInstance_1 #xe07718))
    (set-field! f_BROWN this (send this jm_createInstance_1 #x956B00))
    (set-field! f_WHITE this (send this jm_createInstance_1 #xFFFFFF))
    (set-field! f_TRANSPARENT_COLOR this (send this jm_createInstanceAN_3 #x00000000 #x000000 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))
    (set-field! f_TRANSPARENT_GREY this (send this jm_createInstanceAN_3 #x52000000 #xECECEC (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))
    (set-field! f_TRANSPARENT_BLACK this (send this jm_createInstanceAN_3 #x52000000 #x000000 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))
    (set-field! f_TRANSPARENT_RED this (send this jm_createInstanceAN_3 #x52000000 #xFF0000 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))
    (set-field! f_CLEAR_COLOR this (get-field f_BLACK this))
    (set-field! f_BORDER_COLOR this (get-field f_WHITE this))
  this)

(define (BasicColorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicColorFactory.jstatic_instance)))))



