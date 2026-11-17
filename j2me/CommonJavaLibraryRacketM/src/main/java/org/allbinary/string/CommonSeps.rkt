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
;; package org.allbinary.string

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define CommonSeps%
  (class JObject%
    (super-new)
    (field [f_NEW_LINE JR.null])
    (field [f_SEMICOLON JR.null])
    (field [f_EQUALS JR.null])
    (field [f_SPACE JR.null])
    (field [f_COMMA JR.null])
    (field [f_COLON JR.null])
    (field [f_PERIOD JR.null])
    (field [f_UNDERSCORE JR.null])
    (field [f_COLON_SEP JR.null])
    (field [f_COMMA_SEP JR.null])
    (field [f_PARENTHESIS_OPEN JR.null])
    (field [f_PARENTHESIS_CLOSE JR.null])
    (field [f_BRACE_OPEN JR.null])
    (field [f_BRACE_CLOSE JR.null])
    (field [f_BRACKET_OPEN JR.null])
    (field [f_BRACKET_CLOSE JR.null])
    (field [f_DASH JR.null])
    (field [f_PERCENT JR.null])
    (field [f_AMPERSAND JR.null])
    (field [f_FORWARD_SLASH JR.null])
    (field [f_BACK_SLASH JR.null])
    (field [f_QUESTION JR.null])
    (field [f_QUOTE JR.null])
    (field [f_QUOTE_END JR.null])
    (field [f_COMMENT JR.null])
    (field [f_INDENT JR.null])))

(define CommonSeps.jcell_instance 'jnone)
(define (CommonSeps.jstatic_instance)
  (when (eq? CommonSeps.jcell_instance 'jnone) (set! CommonSeps.jcell_instance (CommonSeps.jnew_0)))
  CommonSeps.jcell_instance)

(define (CommonSeps.jnew_0)
  (define this (new CommonSeps% [jclass "CommonSeps"]))
    (set-field! f_NEW_LINE this "\n")
    (set-field! f_SEMICOLON this ";")
    (set-field! f_EQUALS this "=")
    (set-field! f_SPACE this " ")
    (set-field! f_COMMA this ",")
    (set-field! f_COLON this ":")
    (set-field! f_PERIOD this ".")
    (set-field! f_UNDERSCORE this "_")
    (set-field! f_COLON_SEP this (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_COLON this)) jm_append_1 (get-field f_SPACE this)) jm_toString_0))
    (set-field! f_COMMA_SEP this (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_COMMA this)) jm_append_1 (get-field f_SPACE this)) jm_toString_0))
    (set-field! f_PARENTHESIS_OPEN this "(")
    (set-field! f_PARENTHESIS_CLOSE this ")")
    (set-field! f_BRACE_OPEN this "{")
    (set-field! f_BRACE_CLOSE this "}")
    (set-field! f_BRACKET_OPEN this "[")
    (set-field! f_BRACKET_CLOSE this "]")
    (set-field! f_DASH this "-")
    (set-field! f_PERCENT this "%")
    (set-field! f_AMPERSAND this "&")
    (set-field! f_FORWARD_SLASH this "/")
    (set-field! f_BACK_SLASH this "\\")
    (set-field! f_QUESTION this "?")
    (set-field! f_QUOTE this "\"")
    (set-field! f_QUOTE_END this "\",")
    (set-field! f_COMMENT this "//")
    (set-field! f_INDENT this "    ")
  this)

(define (CommonSeps.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CommonSeps.jstatic_instance)))))



