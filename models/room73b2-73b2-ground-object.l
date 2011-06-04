;;
;;
;; this file is automatically generated from euslisp+euslib version EusLisp 8.26(r473M 630 46425) for Linux64 created on k-okada-t410s(Sat Apr 23 16:48:15 JST 2011)
;;
;;
(defclass room73b2-73b2-ground-object
  :super cascaded-link
  :slots (sensors))
(defmethod room73b2-73b2-ground-object
  (:init
   (&rest args &key (name "room73b2-73b2-ground") (pos (float-vector 0 0 0)) (rot (unit-matrix 3)) &allow-other-keys)
   (let (c bc
         blink0
         joint0
        
         )
     (send-super* :init :name name args)

     ;; definition of link

     ;; definition of :bodyset231167624
     (setq bc (list
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 5957.5 3892.5 5.0) (float-vector -5957.5 3892.5 5.0) (float-vector -5957.5 -3892.5 5.0) (float-vector 5957.5 -3892.5 5.0)))
         (instance face :init :vertices (list (float-vector -5957.5 3892.5 -5.0) (float-vector 5957.5 3892.5 -5.0) (float-vector 5957.5 -3892.5 -5.0) (float-vector -5957.5 -3892.5 -5.0)))
         (instance face :init :vertices (list (float-vector 5957.5 3892.5 5.0) (float-vector 5957.5 3892.5 -5.0) (float-vector -5957.5 3892.5 -5.0) (float-vector -5957.5 3892.5 5.0)))
         (instance face :init :vertices (list (float-vector 5957.5 -3892.5 5.0) (float-vector 5957.5 -3892.5 -5.0) (float-vector 5957.5 3892.5 -5.0) (float-vector 5957.5 3892.5 5.0)))
         (instance face :init :vertices (list (float-vector -5957.5 -3892.5 5.0) (float-vector -5957.5 -3892.5 -5.0) (float-vector 5957.5 -3892.5 -5.0) (float-vector 5957.5 -3892.5 5.0)))
         (instance face :init :vertices (list (float-vector -5957.5 3892.5 5.0) (float-vector -5957.5 3892.5 -5.0) (float-vector -5957.5 -3892.5 -5.0) (float-vector -5957.5 -3892.5 5.0)))
       ))
       ))
     (dolist (b (cdr bc)) (send (car bc) :assoc b))
     ;; paste texture akihabara-floor-tex.jpg
     (send (elt bc 0) :paste-texture-to-face (elt (send (elt bc 0) :faces)0) :file "models/akihabara-floor-tex.jpg")
     (send (elt bc 0) :set-color :black)
     (setq blink0 (instance bodyset-link :init (make-cascoords) :bodies bc :name :bodyset231167624 :weight 1 :centroid (float-vector 0.0 0.0 0.0) :inertia-tensor #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))

     ;; definition of assoc
     (send self :assoc blink0)

     ;; definition of end-coords

     ;; definition of joint


     ;; init-ending 
     (setq links (list blink0))
     (setq joint-list (list))
     (send self :init-ending)
     (send self :move-to (make-coords :pos pos :rot rot))
     (send-all links :worldcoords)

     self))
  (:handle () (list ))
  (:attention () (list ))
  (:button () (list ))
  )

(defun room73b2-73b2-ground (&rest args) (instance* room73b2-73b2-ground-object :init args))
;; (format *error-output* "(instance room73b2-73b2-ground-object :init) for generating model~%")