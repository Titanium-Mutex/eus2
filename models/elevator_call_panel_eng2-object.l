;;
;; DO NOT EDIT THIS FILE
;; this file is automatically generated from euslisp+euslib version 
;;
;;
(defclass elevator_call_panel_eng2-object
  :super cascaded-link
  :slots (sensors
         button0 button1
         ))
(defmethod elevator_call_panel_eng2-object
  (:init
   (&rest args &key (name "elevator_call_panel_eng2") (pos (float-vector 0 0 0)) (rot (unit-matrix 3)) &allow-other-keys)
   (let (c bc
         blink0
                 )
     (send-super* :init :name name args)

     ;; definition of link

     ;; definition of :elevator_call_panel_eng2-bodyset2
     (setq bc (list
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 0.5 49.0 120.5) (float-vector -0.5 49.0 120.5) (float-vector -0.5 -49.0 120.5) (float-vector 0.5 -49.0 120.5)))
         (instance face :init :vertices (list (float-vector -0.5 49.0 -120.5) (float-vector 0.5 49.0 -120.5) (float-vector 0.5 -49.0 -120.5) (float-vector -0.5 -49.0 -120.5)))
         (instance face :init :vertices (list (float-vector 0.5 49.0 120.5) (float-vector 0.5 49.0 -120.5) (float-vector -0.5 49.0 -120.5) (float-vector -0.5 49.0 120.5)))
         (instance face :init :vertices (list (float-vector 0.5 -49.0 120.5) (float-vector 0.5 -49.0 -120.5) (float-vector 0.5 49.0 -120.5) (float-vector 0.5 49.0 120.5)))
         (instance face :init :vertices (list (float-vector -0.5 -49.0 120.5) (float-vector -0.5 -49.0 -120.5) (float-vector 0.5 -49.0 -120.5) (float-vector 0.5 -49.0 120.5)))
         (instance face :init :vertices (list (float-vector -0.5 49.0 120.5) (float-vector -0.5 49.0 -120.5) (float-vector -0.5 -49.0 -120.5) (float-vector -0.5 -49.0 120.5)))
       ))
       ))
     (dolist (b (cdr bc)) (send (car bc) :assoc b))
     ;; paste texture elevator_call_panel_eng2.png
     (send (elt bc 0) :paste-texture-to-face (elt (send (elt bc 0) :faces)3) :file "models/elevator_call_panel_eng2.png")
     (send (elt bc 0) :set-color (list))
     (setq blink0 (instance bodyset-link :init (make-cascoords) :bodies bc :name :elevator_call_panel_eng2-bodyset2 :weight 1 :centroid (float-vector 0.0 0.0 0.0) :inertia-tensor #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))

     ;; definition of assoc
     (send self :assoc blink0)

     ;; definition of end-coords

     ;; definition of joint


     ;; definition of :button
     (setq button0 (make-cascoords :pos (float-vector 0.0 0.0 -10.0) :rot #2f((-1.0 -1.224647e-16 0.0) (1.224647e-16 -1.0 0.0) (0.0 0.0 1.0)) :name "down"))
     (send blink0 :assoc button0)
     (setq button1 (make-cascoords :pos (float-vector 0.0 0.0 45.0) :rot #2f((-1.0 -1.224647e-16 0.0) (1.224647e-16 -1.0 0.0) (0.0 0.0 1.0)) :name "up"))
     (send blink0 :assoc button1)

     ;; init-ending 
     (setq links (list blink0))
     (setq joint-list (list))
     (send self :init-ending)
     (send self :move-to (make-coords :pos pos :rot rot))
     (send-all links :worldcoords)

     self))

  (:handle (&rest args) (forward-message-to-all (list ) args))
  (:attention (&rest args) (forward-message-to-all (list ) args))
  (:button (&rest args) (forward-message-to-all (list  button0 button1) args))
  (:button-down (&rest args) (forward-message-to button0 args))
  (:button-up (&rest args) (forward-message-to button1 args))
  )

(defun elevator_call_panel_eng2 (&rest args) (instance* elevator_call_panel_eng2-object :init args))
;; (format *error-output* "(instance elevator_call_panel_eng2-object :init) for generating model~%")
