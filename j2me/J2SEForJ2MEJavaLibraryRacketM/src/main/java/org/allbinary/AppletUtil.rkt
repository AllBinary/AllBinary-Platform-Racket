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
;; package org.allbinary

(require racket/class racket/lazy-require
  "../../allbinary_java.rkt")
(provide (all-defined-out))

;import org.allbinary.logic.communication.log.PreLogUtil;
(define AppletUtil%
  (class JObject%
    (super-new)))
(define (AppletUtil.jclassValue) AppletUtil%)

(define AppletUtil.jcell_applet 'jnone)
(define (AppletUtil.jstatic_applet)
  (when (eq? AppletUtil.jcell_applet 'jnone) (set! AppletUtil.jcell_applet #f))
  AppletUtil.jcell_applet)
(define (AppletUtil.jsetstatic_applet value) (set! AppletUtil.jcell_applet value))

(define (AppletUtil.jnew_0)
  (define this (new AppletUtil% [jclass "AppletUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AppletUtil.jm_setApplet_0)
    (let ()
      (let/ec jreturn
        (set! AppletUtil.jcell_applet #t))))

(define (AppletUtil.jm_isAppletLoader_1 _anyType)
    (let ()
      (let/ec jreturn
        (jreturn (AppletUtil.jstatic_applet)))))



