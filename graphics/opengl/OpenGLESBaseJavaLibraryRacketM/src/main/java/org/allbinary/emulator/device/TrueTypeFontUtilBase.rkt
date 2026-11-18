#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.emulator.device

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/Font.rkt" (Font.jm_getDefaultFont_0)])
(lazy-require ["../../../../org/allbinary/AvianUtil.rkt" (AvianUtil.jm_isAvian_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define TrueTypeFontUtilBase%
  (class JObject%
    (super-new)
    (field [f_shortPattern JR.null])
    (field [f_patternAsBytes JR.null])
    (field [f_pattern JR.null])
    (field [f_charArray JR.null])
    (field [f__characterWidth JR.null])
    (field [f_characterArray JR.null])
    (field [f_size 0])
    (field [f_lastCapIndex 0])
    (field [f_currentFont JR.null])
    (field [f_scale 0])
    (field [f_CELLS_PER_ROW 0])
    (field [f_fontSize 0])
    (field [f_baseCharWidth 0])
    (field [f_cellSize 0])
    (field [f_textureSize 0])
    (field [f_actualCellsPerRow 0])
    (define/public (jm_getAsTextureSize_1 _textureSize)
    (let ()
      (let/ec jreturn
        (if (<= _textureSize 64)
            (begin
            (set! _textureSize 64))
            (if (<= _textureSize 128)
            (begin
            (set! _textureSize 128))
            (if (<= _textureSize 256)
            (begin
            (set! _textureSize 256))
            (if (<= _textureSize 512)
            (begin
            (set! _textureSize 512))
            (when (<= _textureSize 1024)
            (begin
            (set! _textureSize 1024)))))))
        (jreturn _textureSize))))
    (define/public (jm_getCellSize_1 _cellSize)
    (let ()
      (let/ec jreturn
        (if (<= _cellSize 16)
            (begin
            (set! _cellSize 16))
            (if (<= _cellSize 32)
            (begin
            (set! _cellSize 32))
            (if (<= _cellSize 64)
            (begin
            (set! _cellSize 64))
            (if (<= _cellSize 128)
            (begin
            (set! _cellSize 128))
            (when (<= _cellSize 256)
            (begin
            (set! _cellSize 256)))))))
        (jreturn _cellSize))))
    (define/public (jm_getYOffset_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (* (JR.i32 (- (get-field f_scale this) 1)) (get-field f_cellSize this)))))))))
(define (TrueTypeFontUtilBase.jclassValue) TrueTypeFontUtilBase%)

(define (TrueTypeFontUtilBase.jnew_1 _scale)
  (define this (new TrueTypeFontUtilBase% [jclass "TrueTypeFontUtilBase"]))
    
    (set-field! f_patternAsBytes this (vector 32 48 49 50 51 52 53 54 55 56 57 65 66 32 32 32 67 68 69 70 71 72 73 74 75 76 77 78 79 32 32 32 80 81 82 83 84 85 86 87 88 89 90 97 98 32 32 32 99 100 101 102 103 104 105 106 107 108 109 110 111 32 32 32 112 113 114 115 116 117 118 119 120 121 122 46 63 32 32 32 33 36 37 96 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 84))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 84))) 34 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 93))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 93))) 94 38 42 40 32 32 32 41 95 43 45 61 91 93 123 125 59 39 35 58 32 32 32 64 126 44 47 60 62 92 124 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 82))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 82))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 87))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 87)))))
    (set-field! f_pattern this (get-field f_patternAsBytes this))
    (set-field! f_charArray this (vector #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x6f #x50 #x56 #x6b #x51 #x52 #x5a #x6a #x5c #x60 #x5b #x62 #x72 #x63 #x4b #x73 #x1 #x2 #x3 #x4 #x5 #x6 #x7 #x8 #x9 #xa #x6c #x69 #x74 #x64 #x75 #x4c #x70 #xb #xc #x10 #x11 #x12 #x13 #x14 #x15 #x16 #x17 #x18 #x19 #x1a #x1b #x1c #x20 #x21 #x22 #x23 #x24 #x25 #x26 #x27 #x28 #x29 #x2a #x65 #x76 #x66 #x59 #x61 #x53 #x2b #x2c #x30 #x31 #x32 #x33 #x34 #x35 #x36 #x37 #x38 #x39 #x3a #x3b #x3c #x40 #x41 #x42 #x43 #x44 #x45 #x46 #x47 #x48 #x49 #x4a #x67 #x77 #x68 #x71 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x58 #x0 #x0 #x0 #x0 #x0 #x7b #x0 #x0 #x55 #x0 #x79 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0))
    (set-field! f__characterWidth this (JR.newArray 0 (string-length (get-field f_pattern this))))
    (set-field! f_characterArray this (JR.newArray 0 1))
    (set-field! f_size this (string-length (get-field f_pattern this)))
    (set-field! f_lastCapIndex this (JR.indexOf (get-field f_pattern this) (char->integer #\Z)))
    (set-field! f_currentFont this (Font.jm_getDefaultFont_0))
    
    
    
    
    
    
    
    (let ([_shortPattern JR.null][_shortPatterAsByteArray JR.null])
      (let/ec jreturn
        (set! _shortPattern (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
        (if (AvianUtil.jm_isAvian_0)
            (begin
            (set! _shortPatterAsByteArray (vector 32 48 49 50 51 52 53 54 55 56 57 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 46 63 33 36 37 96 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 84))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 84))) 34 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 93))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 93))) 94 38 42 40 41 95 43 45 61 91 93 123 125 59 39 35 58 64 126 44 47 60 62 92 124 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 82))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 82))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 87))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 87)))))
            (set! _shortPattern _shortPatterAsByteArray))
            (begin
            (set! _shortPatterAsByteArray (vector 32 48 49 50 51 52 53 54 55 56 57 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 46 63 33 36 37 96 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 84))) 34 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 93))) 94 38 42 40 41 95 43 45 61 91 93 123 125 59 39 35 58 64 126 44 47 60 62 92 124 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 82))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 87)))))
            (set! _shortPattern _shortPatterAsByteArray)))
        (set-field! f_shortPattern this _shortPattern)
        (set-field! f_scale this _scale)
        (set-field! f_CELLS_PER_ROW this 16)
        (set-field! f_fontSize this (JR.i32 (* (JR.i32 (+ 20 6)) (get-field f_scale this))))
        (set-field! f_baseCharWidth this (JR.i32 (+ (get-field f_fontSize this) (JR.i32 (* 6 (get-field f_scale this))))))
        (set-field! f_cellSize this (JR.i32 (+ (get-field f_fontSize this) (JR.i32 (* 6 (get-field f_scale this))))))
        (set-field! f_textureSize this (send this jm_getAsTextureSize_1 (JR.i32 (* (get-field f_CELLS_PER_ROW this) (get-field f_cellSize this)))))
        (set-field! f_actualCellsPerRow this (JR.idiv (get-field f_textureSize this) (get-field f_cellSize this)))))
  this)



