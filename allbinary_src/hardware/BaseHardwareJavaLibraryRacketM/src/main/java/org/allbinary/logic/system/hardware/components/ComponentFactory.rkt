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
;; package org.allbinary.logic.system.hardware.components

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./Component.rkt" (Component.jnew_1)])
(provide (all-defined-out))

(define ComponentFactory%
  (class JObject%
    (super-new)
    (field [f_VGA JR.null])
    (field [f_IDE JR.null])
    (field [f_SCSI JR.null])
    (field [f_BRIDGE JR.null])
    (field [f_ETHERNET JR.null])
    (field [f_USB JR.null])
    (field [f_MULTIMEDIA JR.null])
    (field [f_PCI JR.null])
    (field [f_RAID JR.null])
    (field [f_SMBUS JR.null])
    (field [f_PIC JR.null])
    (field [f_Class JR.null])
    (field [f_UNKNOWN JR.null])))

(define ComponentFactory.jcell_instance 'jnone)
(define (ComponentFactory.jstatic_instance)
  (when (eq? ComponentFactory.jcell_instance 'jnone) (set! ComponentFactory.jcell_instance (ComponentFactory.jnew_0)))
  ComponentFactory.jcell_instance)

(define (ComponentFactory.jnew_0)
  (define this (new ComponentFactory% [jclass "ComponentFactory"]))
    (set-field! f_VGA this (Component.jnew_1 "VGA"))
    (set-field! f_IDE this (Component.jnew_1 "IDE"))
    (set-field! f_SCSI this (Component.jnew_1 "SCSI"))
    (set-field! f_BRIDGE this (Component.jnew_1 "bridge"))
    (set-field! f_ETHERNET this (Component.jnew_1 "Ethernet"))
    (set-field! f_USB this (Component.jnew_1 "USB"))
    (set-field! f_MULTIMEDIA this (Component.jnew_1 "Multimedia"))
    (set-field! f_PCI this (Component.jnew_1 "PCI"))
    (set-field! f_RAID this (Component.jnew_1 "RAID"))
    (set-field! f_SMBUS this (Component.jnew_1 "SMBus"))
    (set-field! f_PIC this (Component.jnew_1 "PIC"))
    (set-field! f_Class this (Component.jnew_1 "Class"))
    (set-field! f_UNKNOWN this (Component.jnew_1 (get-field f_UNKNOWN (CommonStrings.jm_getInstance_0))))
  this)

(define (ComponentFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ComponentFactory.jstatic_instance)))))



