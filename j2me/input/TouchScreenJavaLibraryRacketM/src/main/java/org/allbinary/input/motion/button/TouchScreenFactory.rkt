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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./TouchScreenTypesFactory.rkt" (TouchScreenTypesFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchScreenFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_touch #f])
    (field [f_multiTouch #f])
    (field [f_multiTouchDistinct #f])
    (field [f_touchScreenType JR.null])
    (define/public (jm_setMultiTouch_1 _multiTouch)
    (let ()
      (let/ec jreturn
        (set-field! f_multiTouch this _multiTouch))))
    (define/public (jm_isMultiTouch_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_multiTouch this)))))
    (define/public (jm_setTouch_1 _touch)
    (let ()
      (let/ec jreturn
        (set-field! f_touch this _touch))))
    (define/public (jm_isTouch_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_touch this)))))
    (define/public (jm_setMultiTouchDistinct_1 _multiTouchDistinct)
    (let ()
      (let/ec jreturn
        (set-field! f_multiTouchDistinct this _multiTouchDistinct))))
    (define/public (jm_isMultiTouchDistinct_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_multiTouchDistinct this)))))
    (define/public (jm_setTouchScreenType_1 _touchScreenType)
    (let ()
      (let/ec jreturn
        (set-field! f_touchScreenType this _touchScreenType))))
    (define/public (jm_getTouchScreenType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_touchScreenType this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "TouchScreen: ")
        (send _stringBuffer jm_appendboolean_1 (send this jm_isTouch_0))
        (send _stringBuffer jm_append_1 " MultiTouch: ")
        (send _stringBuffer jm_appendboolean_1 (send this jm_isMultiTouch_0))
        (send _stringBuffer jm_append_1 " Distinct MultiTouch: ")
        (send _stringBuffer jm_appendboolean_1 (send this jm_isMultiTouchDistinct_0))
        (send _stringBuffer jm_append_1 " TouchScreenType: ")
        (send _stringBuffer jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (send this jm_getTouchScreenType_0)))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (TouchScreenFactory.jclassValue) TouchScreenFactory%)

(define TouchScreenFactory.jcell_SINGLETON 'jnone)
(define (TouchScreenFactory.jstatic_SINGLETON)
  (when (eq? TouchScreenFactory.jcell_SINGLETON 'jnone) (set! TouchScreenFactory.jcell_SINGLETON (TouchScreenFactory.jnew_0)))
  TouchScreenFactory.jcell_SINGLETON)
(define (TouchScreenFactory.jsetstatic_SINGLETON value) (set! TouchScreenFactory.jcell_SINGLETON value))

(define (TouchScreenFactory.jnew_0)
  (define this (new TouchScreenFactory% [jclass "TouchScreenFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    
    
    (set-field! f_touchScreenType this (get-field f_NOTOUCH (TouchScreenTypesFactory.jm_getInstance_0)))
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) (TouchScreenFactory.jstatic_SINGLETON) (get-field f_GET_INSTANCE _commonStrings) _e))])
            (send this jm_setTouch_1 #t)
            (send this jm_setMultiTouch_1 #f))))
  this)

(define (TouchScreenFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchScreenFactory.jstatic_SINGLETON)))))



