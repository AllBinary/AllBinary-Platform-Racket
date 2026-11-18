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
;; package org.allbinary.graphics.draw

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define DrawStringUtil%
  (class JObject%
    (super-new)
    (field [f_EMPTY_STRING JR.null])
    (field [f_anchor 0])
    (define/public (jm_drawCenterString_6 _graphics _string _offset _length _x _y)
    (let ([_width JR.null])
      (let/ec jreturn
        (set! _width (arithmetic-shift (JR.className (send _graphics jm_getFont_0)) (- (bitwise-and 1 31))))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_put_3 (send (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 "Exception: stringLength: ") jm_appendint_1 (string-length _string)) jm_append_1 " offset: ") jm_appendint_1 _offset) jm_append_1 " currentLength: ") jm_appendint_1 _length) jm_toString_0) this "drawCenterString"))])
            (send _graphics jm_drawSubstring_6 _string _offset _length (JR.i32 (- _x _width)) _y (get-field f_anchor this))))))
    (define/public (jm_drawCenterStrings_6 _graphics _stringArray _maxWidth _charHeight _x _y)
    (let ([_extraLines JR.null][_string JR.null][_width JR.null][_minTotalLines JR.null][_linePortion JR.null][_offset JR.null][_currentLength JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _extraLines 0)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _stringArray))
                (let/ec jcontinue
            (set! _string (vector-ref _stringArray _index))
            (when (not (eq? _string (get-field f_EMPTY_STRING this)))
                (begin
                (set! _width (JR.className (send _graphics jm_getFont_0)))
                (set! _minTotalLines 1)
                (when (> _width _maxWidth)
                    (begin
                    (set! _minTotalLines (JR.i32 (+ (JR.idiv _width _maxWidth) 1)))))
                (set! _linePortion (JR.idiv (string-length _string) _minTotalLines))
                (set! _offset 0)
                (set! _currentLength _linePortion)
                (set! _size (string-length _string))
                (let/ec jbreak (let jloop () (when (< _offset _size)
                        (let/ec jcontinue
                    (when (> (JR.i32 (+ _offset _currentLength)) _size)
                        (begin
                        (set! _currentLength (JR.i32 (- _size _offset)))))
                    (when (not (= (JR.i32 (+ _offset _currentLength)) _size))
                        (begin
                        (let/ec jbreak (let jloop () (when (and (> _currentLength 0) (not (eq? (JR.className (vector-ref _stringArray _index)) 32)))
                                (let/ec jcontinue
                            (set! _currentLength (JR.i32 (- _currentLength 1)))) (jloop))))
                        (when (<= _currentLength 4)
                            (begin
                            (set! _currentLength _linePortion)))))
                    (send this jm_drawCenterString_6 _graphics _string _offset _currentLength _x (JR.i32 (+ _y (JR.i32 (* (JR.i32 (+ _index (let ([jvalue _extraLines]) (set! _extraLines (JR.i32 (+ _extraLines 1))) jvalue))) _charHeight)))))
                    (set! _offset (JR.i32 (+ _offset _currentLength)))
                    (set! _currentLength _linePortion)) (jloop))))
                (set! _extraLines (JR.i32 (- _extraLines 1))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (DrawStringUtil.jclassValue) DrawStringUtil%)

(define DrawStringUtil.jcell_instance 'jnone)
(define (DrawStringUtil.jstatic_instance)
  (when (eq? DrawStringUtil.jcell_instance 'jnone) (set! DrawStringUtil.jcell_instance (DrawStringUtil.jnew_0)))
  DrawStringUtil.jcell_instance)
(define (DrawStringUtil.jsetstatic_instance value) (set! DrawStringUtil.jcell_instance value))

(define (DrawStringUtil.jnew_0)
  (define this (new DrawStringUtil% [jclass "DrawStringUtil"]))
    (set-field! f_EMPTY_STRING this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
  this)

(define (DrawStringUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DrawStringUtil.jstatic_instance)))))



