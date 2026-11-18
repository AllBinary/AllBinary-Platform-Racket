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
  "./ABTextItem.rkt")
(provide (all-defined-out))

(define CommandTextItem%
  (class ABTextItem%
    (super-new)
    (field [f_command JR.null])
    (define/override (jm_isFocusable_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/public (jm_getCommand_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_command this)))))))
(define (CommandTextItem.jclassValue) CommandTextItem%)

(define (CommandTextItem.jnew_5 _command _layout _altText _backgroundBasicColor _foregroundBasicColor)
  (define this (new CommandTextItem% [jclass "CommandTextItem"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_command this _command)))
  this)



