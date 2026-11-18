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
;; package org.allbinary.business.advertisement

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/rand/MyRandomFactory.rkt" (MyRandomFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/system/security/licensing/LockedUtil.rkt" (LockedUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define Advertisements%
  (class JObject%
    (super-new)
    (field [f_bannerList JR.null])
    (field [f_pageList JR.null])
    (field [f_myRandomFactory JR.null])
    (define/public (jm_addPage_1 _advertisementProcessorInterface)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_pageList this) jm_contains_1 _advertisementProcessorInterface))
            (begin
            (send (get-field f_pageList this) jm_add_1 _advertisementProcessorInterface))))))
    (define/public (jm_startRandomPage_0)
    (let ([_size JR.null][_random JR.null][_advertisementProcessorInterface JR.null])
      (let/ec jreturn
        (set! _size (send (get-field f_pageList this) jm_size_0))
        (when (> _size 0)
            (begin
            (set! _random (send (get-field f_myRandomFactory this) jm_getAbsoluteNextInt_1 _size))
            (set! _advertisementProcessorInterface (vector-ref (get-field f_objectArray (get-field f_pageList this)) _random))
            (send _advertisementProcessorInterface jm_start_0))))))
    (define/public (jm_processRandomPage_0)
    (let ([_size JR.null][_random JR.null][_advertisementProcessorInterface JR.null])
      (let/ec jreturn
        (when (send (LockedUtil.jm_getInstance_0) jm_isLocked_0)
            (begin
            (set! _size (send (get-field f_pageList this) jm_size_0))
            (when (> _size 0)
                (begin
                (set! _random (send (get-field f_myRandomFactory this) jm_getAbsoluteNextInt_1 _size))
                (set! _advertisementProcessorInterface (vector-ref (get-field f_objectArray (get-field f_pageList this)) _random))
                (send _advertisementProcessorInterface jm_process_0))))))))
    (define/public (jm_stopAllPage_0)
    (let ([_advertisementProcessorInterface JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (send (get-field f_pageList this) jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _advertisementProcessorInterface (vector-ref (get-field f_objectArray (get-field f_pageList this)) _index))
            (send _advertisementProcessorInterface jm_stop_0)) (jloop))))))))
    (define/public (jm_addBanner_1 _advertisementProcessorInterface)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_bannerList this) jm_contains_1 _advertisementProcessorInterface))
            (begin
            (send (get-field f_bannerList this) jm_add_1 _advertisementProcessorInterface))))))
    (define/public (jm_startAll_0)
    (let ([_advertisementProcessorInterface JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (send (get-field f_bannerList this) jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _advertisementProcessorInterface (vector-ref (get-field f_objectArray (get-field f_bannerList this)) _index))
            (send _advertisementProcessorInterface jm_start_0)) (jloop))))))))
    (define/public (jm_stopAllBanner_0)
    (let ([_advertisementProcessorInterface JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (send (get-field f_bannerList this) jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _advertisementProcessorInterface (vector-ref (get-field f_objectArray (get-field f_bannerList this)) _index))
            (send _advertisementProcessorInterface jm_stop_0)) (jloop))))))))
    (define/public (jm_getBanner_1 _index)
    (let ([_advertisementProcessorInterface JR.null])
      (let/ec jreturn
        (set! _advertisementProcessorInterface (vector-ref (get-field f_objectArray (get-field f_bannerList this)) _index))
        (jreturn _advertisementProcessorInterface))))
    (define/public (jm_stopAll_0)
    (let ()
      (let/ec jreturn
        (send this jm_stopAllBanner_0)
        (send this jm_stopAllPage_0))))))
(define (Advertisements.jclassValue) Advertisements%)

(define (Advertisements.jnew_0)
  (define this (new Advertisements% [jclass "Advertisements"]))
    (set-field! f_bannerList this (BasicArrayListD.jnew_0))
    (set-field! f_pageList this (BasicArrayListD.jnew_0))
    (set-field! f_myRandomFactory this (MyRandomFactory.jm_getInstance_0))
  this)



