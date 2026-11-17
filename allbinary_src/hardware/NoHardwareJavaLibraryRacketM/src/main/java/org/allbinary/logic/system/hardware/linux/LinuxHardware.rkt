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
;; package org.allbinary.logic.system.hardware.linux

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/system/hardware/HardwareInterface.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define LinuxHardware%
  (class JObject%
    (super-new)
    (define/public (jm_getMultimedia_1 _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getBridge_1 _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getCpu_1 _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getEthernet_1 _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getFireWire_1 _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getHardDriveController_1 _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getHardDrive_1 _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getMachineAccessControlAddress_1 _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getMonitor_1 _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getUsb_1 _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getVideo_1 _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getComponent_1 _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_compareTo_1 _hardwareInterface)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/public (jm_difference_1 _hardwareInterface)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_TABLE (StdUtil.jm_getInstance_0))))))
    (define/public (jm_isNextHardware_1 _nextLine)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))

(define (LinuxHardware.jnew_0)
  (define this (new LinuxHardware% [jclass "LinuxHardware"]))
    (let ()
      (let/ec jreturn (void)))
  this)



