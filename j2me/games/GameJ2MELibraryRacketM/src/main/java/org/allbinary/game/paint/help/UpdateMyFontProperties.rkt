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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define UpdateMyFontProperties%
  (class JObject%
    (super-new)
    (field [f_actionStringArray JR.null])
    (field [f_keymappingBeginWidthArray JR.null])
    (field [f_actionStringDeltaXArray JR.null])
    (field [f_inputDeltaXArray JR.null])
    (field [f_sepArray JR.null])
    (field [f_sepWidthArray JR.null])
    (field [f_charHeight 0])))
(define (UpdateMyFontProperties.jclassValue) UpdateMyFontProperties%)

(define (UpdateMyFontProperties.jnew_0)
  (define this (new UpdateMyFontProperties% [jclass "UpdateMyFontProperties"]))
    (set-field! f_actionStringArray this (send (StringUtil.jm_getInstance_0) jm_getArrayInstance_0))
    (set-field! f_keymappingBeginWidthArray this (get-field f_NULL_INT_ARRAY (NullUtil.jm_getInstance_0)))
    (set-field! f_actionStringDeltaXArray this (get-field f_NULL_INT_ARRAY (NullUtil.jm_getInstance_0)))
    (set-field! f_inputDeltaXArray this (get-field f_NULL_INT_ARRAY_ARRAY (NullUtil.jm_getInstance_0)))
    (set-field! f_sepArray this (get-field f_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS (StringUtil.jm_getInstance_0)))
    (set-field! f_sepWidthArray this (get-field f_NULL_INT_ARRAY_ARRAY (NullUtil.jm_getInstance_0)))
    
  this)



