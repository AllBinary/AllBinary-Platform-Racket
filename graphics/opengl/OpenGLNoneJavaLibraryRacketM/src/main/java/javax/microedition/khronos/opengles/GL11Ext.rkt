#lang racket/base
;; Generated Code Do Not Modify
;; package javax.microedition.khronos.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/nio/Buffer.rkt"
  "../../../../java/nio/FloatBuffer.rkt"
  "../../../../java/nio/IntBuffer.rkt"
  "../../../../java/nio/ShortBuffer.rkt"
  "./GL.rkt")
(provide (all-defined-out))

(define GL11Ext%
  (class JObject%
    (super-new)
    (define/public (jm_glTexParameterfv_4 _target _pname _param _offset)
      (raise (JR.newException "AbstractMethodError" "glTexParameterfv")))
    (define/public (jm_glCurrentPaletteMatrixOES_1 _matrixpaletteindex)
      (raise (JR.newException "AbstractMethodError" "glCurrentPaletteMatrixOES")))
    (define/public (jm_glDrawTexfOES_5 _x _y _z _width _height)
      (raise (JR.newException "AbstractMethodError" "glDrawTexfOES")))
    (define/public (jm_glDrawTexfvOES_2 _coords _offset)
      (raise (JR.newException "AbstractMethodError" "glDrawTexfvOES")))
    (define/public (jm_glDrawTexfvOES_1 _coords)
      (raise (JR.newException "AbstractMethodError" "glDrawTexfvOES")))
    (define/public (jm_glDrawTexiOES_5 _x _y _z _width _height)
      (raise (JR.newException "AbstractMethodError" "glDrawTexiOES")))
    (define/public (jm_glDrawTexivOES_2 _coords _offset)
      (raise (JR.newException "AbstractMethodError" "glDrawTexivOES")))
    (define/public (jm_glDrawTexivOES_1 _coords)
      (raise (JR.newException "AbstractMethodError" "glDrawTexivOES")))
    (define/public (jm_glDrawTexsOES_5 _x _y _z _width _height)
      (raise (JR.newException "AbstractMethodError" "glDrawTexsOES")))
    (define/public (jm_glDrawTexsvOES_2 _coords _offset)
      (raise (JR.newException "AbstractMethodError" "glDrawTexsvOES")))
    (define/public (jm_glDrawTexsvOES_1 _coords)
      (raise (JR.newException "AbstractMethodError" "glDrawTexsvOES")))
    (define/public (jm_glDrawTexxOES_5 _x _y _z _width _height)
      (raise (JR.newException "AbstractMethodError" "glDrawTexxOES")))
    (define/public (jm_glDrawTexxvOES_2 _coords _offset)
      (raise (JR.newException "AbstractMethodError" "glDrawTexxvOES")))
    (define/public (jm_glDrawTexxvOES_1 _coords)
      (raise (JR.newException "AbstractMethodError" "glDrawTexxvOES")))
    (define/public (jm_glEnable_1 _cap)
      (raise (JR.newException "AbstractMethodError" "glEnable")))
    (define/public (jm_glEnableClientState_1 _array)
      (raise (JR.newException "AbstractMethodError" "glEnableClientState")))
    (define/public (jm_glLoadPaletteFromModelViewMatrixOES_0)
      (raise (JR.newException "AbstractMethodError" "glLoadPaletteFromModelViewMatrixOES")))
    (define/public (jm_glMatrixIndexPointerOES_4 jp1 jp2 jp3 jp4)
      (cond))
    (define/public (jm_glWeightPointerOES_4 jp1 jp2 jp3 jp4)
      (cond))))
(define (GL11Ext.jclassValue) GL11Ext%)

(define GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES 'jnone)
(define (GL11Ext.jstatic_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES)
  (when (eq? GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES 'jnone) (set! GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES 35742))
  GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES)
(define (GL11Ext.jsetstatic_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES value) (set! GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES value))

(define GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_OES 'jnone)
(define (GL11Ext.jstatic_GL_MATRIX_INDEX_ARRAY_OES)
  (when (eq? GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_OES 'jnone) (set! GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_OES 34884))
  GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_OES)
(define (GL11Ext.jsetstatic_GL_MATRIX_INDEX_ARRAY_OES value) (set! GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_OES value))

(define GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_POINTER_OES 'jnone)
(define (GL11Ext.jstatic_GL_MATRIX_INDEX_ARRAY_POINTER_OES)
  (when (eq? GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_POINTER_OES 'jnone) (set! GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_POINTER_OES 34889))
  GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_POINTER_OES)
(define (GL11Ext.jsetstatic_GL_MATRIX_INDEX_ARRAY_POINTER_OES value) (set! GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_POINTER_OES value))

(define GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_SIZE_OES 'jnone)
(define (GL11Ext.jstatic_GL_MATRIX_INDEX_ARRAY_SIZE_OES)
  (when (eq? GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_SIZE_OES 'jnone) (set! GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_SIZE_OES 34886))
  GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_SIZE_OES)
(define (GL11Ext.jsetstatic_GL_MATRIX_INDEX_ARRAY_SIZE_OES value) (set! GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_SIZE_OES value))

(define GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_STRIDE_OES 'jnone)
(define (GL11Ext.jstatic_GL_MATRIX_INDEX_ARRAY_STRIDE_OES)
  (when (eq? GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_STRIDE_OES 'jnone) (set! GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_STRIDE_OES 34888))
  GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_STRIDE_OES)
(define (GL11Ext.jsetstatic_GL_MATRIX_INDEX_ARRAY_STRIDE_OES value) (set! GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_STRIDE_OES value))

(define GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_TYPE_OES 'jnone)
(define (GL11Ext.jstatic_GL_MATRIX_INDEX_ARRAY_TYPE_OES)
  (when (eq? GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_TYPE_OES 'jnone) (set! GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_TYPE_OES 34887))
  GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_TYPE_OES)
(define (GL11Ext.jsetstatic_GL_MATRIX_INDEX_ARRAY_TYPE_OES value) (set! GL11Ext.jcell_GL_MATRIX_INDEX_ARRAY_TYPE_OES value))

(define GL11Ext.jcell_GL_MATRIX_PALETTE_OES 'jnone)
(define (GL11Ext.jstatic_GL_MATRIX_PALETTE_OES)
  (when (eq? GL11Ext.jcell_GL_MATRIX_PALETTE_OES 'jnone) (set! GL11Ext.jcell_GL_MATRIX_PALETTE_OES 34880))
  GL11Ext.jcell_GL_MATRIX_PALETTE_OES)
(define (GL11Ext.jsetstatic_GL_MATRIX_PALETTE_OES value) (set! GL11Ext.jcell_GL_MATRIX_PALETTE_OES value))

(define GL11Ext.jcell_GL_MAX_PALETTE_MATRICES_OES 'jnone)
(define (GL11Ext.jstatic_GL_MAX_PALETTE_MATRICES_OES)
  (when (eq? GL11Ext.jcell_GL_MAX_PALETTE_MATRICES_OES 'jnone) (set! GL11Ext.jcell_GL_MAX_PALETTE_MATRICES_OES 34882))
  GL11Ext.jcell_GL_MAX_PALETTE_MATRICES_OES)
(define (GL11Ext.jsetstatic_GL_MAX_PALETTE_MATRICES_OES value) (set! GL11Ext.jcell_GL_MAX_PALETTE_MATRICES_OES value))

(define GL11Ext.jcell_GL_MAX_VERTEX_UNITS_OES 'jnone)
(define (GL11Ext.jstatic_GL_MAX_VERTEX_UNITS_OES)
  (when (eq? GL11Ext.jcell_GL_MAX_VERTEX_UNITS_OES 'jnone) (set! GL11Ext.jcell_GL_MAX_VERTEX_UNITS_OES 34468))
  GL11Ext.jcell_GL_MAX_VERTEX_UNITS_OES)
(define (GL11Ext.jsetstatic_GL_MAX_VERTEX_UNITS_OES value) (set! GL11Ext.jcell_GL_MAX_VERTEX_UNITS_OES value))

(define GL11Ext.jcell_GL_TEXTURE_CROP_RECT_OES 'jnone)
(define (GL11Ext.jstatic_GL_TEXTURE_CROP_RECT_OES)
  (when (eq? GL11Ext.jcell_GL_TEXTURE_CROP_RECT_OES 'jnone) (set! GL11Ext.jcell_GL_TEXTURE_CROP_RECT_OES 35741))
  GL11Ext.jcell_GL_TEXTURE_CROP_RECT_OES)
(define (GL11Ext.jsetstatic_GL_TEXTURE_CROP_RECT_OES value) (set! GL11Ext.jcell_GL_TEXTURE_CROP_RECT_OES value))

(define GL11Ext.jcell_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES 'jnone)
(define (GL11Ext.jstatic_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES)
  (when (eq? GL11Ext.jcell_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES 'jnone) (set! GL11Ext.jcell_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES 34974))
  GL11Ext.jcell_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES)
(define (GL11Ext.jsetstatic_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES value) (set! GL11Ext.jcell_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES value))

(define GL11Ext.jcell_GL_WEIGHT_ARRAY_OES 'jnone)
(define (GL11Ext.jstatic_GL_WEIGHT_ARRAY_OES)
  (when (eq? GL11Ext.jcell_GL_WEIGHT_ARRAY_OES 'jnone) (set! GL11Ext.jcell_GL_WEIGHT_ARRAY_OES 34477))
  GL11Ext.jcell_GL_WEIGHT_ARRAY_OES)
(define (GL11Ext.jsetstatic_GL_WEIGHT_ARRAY_OES value) (set! GL11Ext.jcell_GL_WEIGHT_ARRAY_OES value))

(define GL11Ext.jcell_GL_WEIGHT_ARRAY_POINTER_OES 'jnone)
(define (GL11Ext.jstatic_GL_WEIGHT_ARRAY_POINTER_OES)
  (when (eq? GL11Ext.jcell_GL_WEIGHT_ARRAY_POINTER_OES 'jnone) (set! GL11Ext.jcell_GL_WEIGHT_ARRAY_POINTER_OES 34476))
  GL11Ext.jcell_GL_WEIGHT_ARRAY_POINTER_OES)
(define (GL11Ext.jsetstatic_GL_WEIGHT_ARRAY_POINTER_OES value) (set! GL11Ext.jcell_GL_WEIGHT_ARRAY_POINTER_OES value))

(define GL11Ext.jcell_GL_WEIGHT_ARRAY_SIZE_OES 'jnone)
(define (GL11Ext.jstatic_GL_WEIGHT_ARRAY_SIZE_OES)
  (when (eq? GL11Ext.jcell_GL_WEIGHT_ARRAY_SIZE_OES 'jnone) (set! GL11Ext.jcell_GL_WEIGHT_ARRAY_SIZE_OES 34475))
  GL11Ext.jcell_GL_WEIGHT_ARRAY_SIZE_OES)
(define (GL11Ext.jsetstatic_GL_WEIGHT_ARRAY_SIZE_OES value) (set! GL11Ext.jcell_GL_WEIGHT_ARRAY_SIZE_OES value))

(define GL11Ext.jcell_GL_WEIGHT_ARRAY_STRIDE_OES 'jnone)
(define (GL11Ext.jstatic_GL_WEIGHT_ARRAY_STRIDE_OES)
  (when (eq? GL11Ext.jcell_GL_WEIGHT_ARRAY_STRIDE_OES 'jnone) (set! GL11Ext.jcell_GL_WEIGHT_ARRAY_STRIDE_OES 34474))
  GL11Ext.jcell_GL_WEIGHT_ARRAY_STRIDE_OES)
(define (GL11Ext.jsetstatic_GL_WEIGHT_ARRAY_STRIDE_OES value) (set! GL11Ext.jcell_GL_WEIGHT_ARRAY_STRIDE_OES value))

(define GL11Ext.jcell_GL_WEIGHT_ARRAY_TYPE_OES 'jnone)
(define (GL11Ext.jstatic_GL_WEIGHT_ARRAY_TYPE_OES)
  (when (eq? GL11Ext.jcell_GL_WEIGHT_ARRAY_TYPE_OES 'jnone) (set! GL11Ext.jcell_GL_WEIGHT_ARRAY_TYPE_OES 34473))
  GL11Ext.jcell_GL_WEIGHT_ARRAY_TYPE_OES)
(define (GL11Ext.jsetstatic_GL_WEIGHT_ARRAY_TYPE_OES value) (set! GL11Ext.jcell_GL_WEIGHT_ARRAY_TYPE_OES value))

(define (GL11Ext.jnew_0)
  (define this (new GL11Ext% [jclass "GL11Ext"]))
  this)



