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
;; package org.allbinary.device

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../javax/microedition/khronos/opengles/GL10.rkt"
  "../../../java/nio/Buffer.rkt"
  "../../../java/nio/FloatBuffer.rkt"
  "../../../java/nio/IntBuffer.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define NullGL10%
  (class JObject%
    (super-new)
    (define/public (jm_glActiveTexture_1 _texture)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glAlphaFunc_2 _func _ref)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glBindTexture_2 _target _texture)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glBlendFunc_2 _sfactor _dfactor)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glClear_1 _mask)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glClearColor_4 _red _green _blue _alpha)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glClearDepthf_1 _depth)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glClearStencil_1 _s)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glClientActiveTexture_1 _texture)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glColor4f_4 _red _green _blue _alpha)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glColorMask_4 _red _green _blue _alpha)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glColorPointer_4 _size _type _stride _pointer)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glCompressedTexImage2D_8 _target _level _internalformat _width _height _border _imageSize _data)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glCompressedTexSubImage2D_9 _target _level _xoffset _yoffset _width _height _format _imageSize _data)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glCopyTexImage2D_8 _target _level _internalformat _x _y _width _height _border)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glCopyTexSubImage2D_8 _target _level _xoffset _yoffset _x _y _width _height)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glCullFace_1 _mode)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glDeleteTextures_3 _n _textures _offset)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glDeleteTextures_2 _n _textures)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glDepthFunc_1 _func)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glDepthMask_1 _flag)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glDepthRangef_2 _zNear _zFar)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glDisable_1 _cap)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glDisableClientState_1 _array)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glDrawArrays_3 _mode _first _count)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glDrawElements_4 _mode _count _type _indices)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glEnable_1 _cap)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glEnableClientState_1 _array)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glFinish_0)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glFlush_0)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glFogf_2 _pname _param)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glFogfv_3 _pname _params _offset)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glFogfv_2 _pname _params)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glFrontFace_1 _mode)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glFrustumf_6 _left _right _bottom _top _zNear _zFar)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glGenTextures_3 _n _textures _offset)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glGenTextures_2 _n _textures)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glGetError_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_glGetIntegerv_3 _pname _params _offset)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glGetIntegerv_2 _pname _params)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glGetString_1 _name)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_glHint_2 _target _mode)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glLightModelf_2 _pname _param)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glLightModelfv_3 _pname _params _offset)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glLightModelfv_2 _pname _params)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glLightf_3 _light _pname _param)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glLightfv_4 _light _pname _params _offset)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glLightfv_3 _light _pname _params)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glLineWidth_1 _width)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glLoadIdentity_0)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glLoadMatrixf_2 _m _offset)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glLoadMatrixf_1 _m)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glLogicOp_1 _opcode)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glMaterialf_3 _face _pname _param)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glMaterialfv_4 _face _pname _params _offset)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glMaterialfv_3 _face _pname _params)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glMatrixMode_1 _mode)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glMultMatrixf_2 _m _offset)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glMultMatrixf_1 _m)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glMultiTexCoord4f_5 _target _s _t _r _q)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glNormal3f_3 _nx _ny _nz)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glNormalPointer_3 _type _stride _pointer)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glOrthof_6 _left _right _bottom _top _zNear _zFar)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glPixelStorei_2 _pname _param)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glPointSize_1 _size)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glPolygonOffset_2 _factor _units)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glPopMatrix_0)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glPushMatrix_0)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glReadPixels_7 _x _y _width _height _format _type _pixels)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glRotatef_4 _angle _x _y _z)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glRotatex_4 _angle _x _y _z)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glSampleCoverage_2 _value _invert)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glScalef_3 _x _y _z)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glScalex_3 _x _y _z)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glScissor_4 _x _y _width _height)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glShadeModel_1 _mode)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glStencilFunc_3 _func _ref _mask)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glStencilMask_1 _mask)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glStencilOp_3 _fail _zfail _zpass)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glTexCoordPointer_4 _size _type _stride _pointer)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glTexEnvf_3 _target _pname _param)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glTexEnvfv_4 _target _pname _params _offset)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glTexEnvfv_3 _target _pname _params)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glTexImage2D_9 _target _level _internalformat _width _height _border _format _type _pixels)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glTexParameterf_3 _target _pname _param)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glTexParameteri_3 _target _pname _param)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glTexSubImage2D_9 _target _level _xoffset _yoffset _width _height _format _type _pixels)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glTranslatef_3 _x _y _z)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glVertexPointer_4 _size _type _stride _pointer)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glViewport_4 _x _y _width _height)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glBegin_1 _i)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glEnd_0)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glVertex3f_3 _f _f2 _f3)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))
    (define/public (jm_glPolygonMode_2 _i _i1)
    (let ()
      (let/ec jreturn
        (jreturn (void)))))))
(define (NullGL10.jclassValue) NullGL10%)

(define NullGL10.jcell_NULL_GL10 'jnone)
(define (NullGL10.jstatic_NULL_GL10)
  (when (eq? NullGL10.jcell_NULL_GL10 'jnone) (set! NullGL10.jcell_NULL_GL10 (NullGL10.jnew_0)))
  NullGL10.jcell_NULL_GL10)
(define (NullGL10.jsetstatic_NULL_GL10 value) (set! NullGL10.jcell_NULL_GL10 value))

(define (NullGL10.jnew_0)
  (define this (new NullGL10% [jclass "NullGL10"]))
  this)



