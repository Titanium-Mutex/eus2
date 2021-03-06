;;
;; DO NOT EDIT THIS FILE
;; this file is automatically generated from euslisp+euslib version 
;;
;;
(defclass arrow-object
  :super cascaded-link
  :slots (sensors
         ))
(defmethod arrow-object
  (:init
   (&rest args &key (name "arrow") (pos (float-vector 0 0 0)) (rot (unit-matrix 3)) &allow-other-keys)
   (let (c bc
         blink0
                 )
     (send-super* :init :name name args)

     ;; definition of link

     ;; definition of :arrow-bodyset2
     (setq bc (list
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 0.5 0.5 0.5) (float-vector -0.5 0.5 0.5) (float-vector -0.5 -0.5 0.5) (float-vector 0.5 -0.5 0.5)))
         (instance face :init :vertices (list (float-vector -0.5 0.5 -0.5) (float-vector 0.5 0.5 -0.5) (float-vector 0.5 -0.5 -0.5) (float-vector -0.5 -0.5 -0.5)))
         (instance face :init :vertices (list (float-vector 0.5 0.5 0.5) (float-vector 0.5 0.5 -0.5) (float-vector -0.5 0.5 -0.5) (float-vector -0.5 0.5 0.5)))
         (instance face :init :vertices (list (float-vector 0.5 -0.5 0.5) (float-vector 0.5 -0.5 -0.5) (float-vector 0.5 0.5 -0.5) (float-vector 0.5 0.5 0.5)))
         (instance face :init :vertices (list (float-vector -0.5 -0.5 0.5) (float-vector -0.5 -0.5 -0.5) (float-vector 0.5 -0.5 -0.5) (float-vector 0.5 -0.5 0.5)))
         (instance face :init :vertices (list (float-vector -0.5 0.5 0.5) (float-vector -0.5 0.5 -0.5) (float-vector -0.5 -0.5 -0.5) (float-vector -0.5 -0.5 0.5)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 140.0 0.0 -33.3333) (float-vector 140.0 -12.7561 -30.796) (float-vector 140.0 -23.5702 -23.5702) (float-vector 140.0 -30.796 -12.7561) (float-vector 140.0 -33.3333 3.107552e-13) (float-vector 140.0 -30.796 12.7561) (float-vector 140.0 -23.5702 23.5702) (float-vector 140.0 -12.7561 30.796) (float-vector 140.0 1.817178e-13 33.3333) (float-vector 140.0 12.7561 30.796) (float-vector 140.0 23.5702 23.5702) (float-vector 140.0 30.796 12.7561) (float-vector 140.0 33.3333 -2.307450e-14) (float-vector 140.0 30.796 -12.7561) (float-vector 140.0 23.5702 -23.5702) (float-vector 140.0 12.7561 -30.796)))
         (instance face :init :vertices (list (float-vector 140.0 -12.7561 -30.796) (float-vector 140.0 0.0 -33.3333) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 0.0 -33.3333) (float-vector 140.0 12.7561 -30.796) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 12.7561 -30.796) (float-vector 140.0 23.5702 -23.5702) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 23.5702 -23.5702) (float-vector 140.0 30.796 -12.7561) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 30.796 -12.7561) (float-vector 140.0 33.3333 -2.307450e-14) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 33.3333 -2.307450e-14) (float-vector 140.0 30.796 12.7561) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 30.796 12.7561) (float-vector 140.0 23.5702 23.5702) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 23.5702 23.5702) (float-vector 140.0 12.7561 30.796) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 12.7561 30.796) (float-vector 140.0 1.817178e-13 33.3333) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 1.817178e-13 33.3333) (float-vector 140.0 -12.7561 30.796) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 -12.7561 30.796) (float-vector 140.0 -23.5702 23.5702) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 -23.5702 23.5702) (float-vector 140.0 -30.796 12.7561) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 -30.796 12.7561) (float-vector 140.0 -33.3333 3.107552e-13) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 -33.3333 3.107552e-13) (float-vector 140.0 -30.796 -12.7561) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 -30.796 -12.7561) (float-vector 140.0 -23.5702 -23.5702) (float-vector 200.0 0.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 140.0 -23.5702 -23.5702) (float-vector 140.0 -12.7561 -30.796) (float-vector 200.0 0.0 2.189520e-14)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 140.0 -8.33333 -14.4338) (float-vector 140.0 0.0 -16.6667) (float-vector 140.0 8.33333 -14.4338) (float-vector 140.0 14.4338 -8.33333) (float-vector 140.0 16.6667 -1.197435e-15) (float-vector 140.0 14.4338 8.33333) (float-vector 140.0 8.33333 14.4338) (float-vector 140.0 2.042810e-14 16.6667) (float-vector 140.0 -8.33333 14.4338) (float-vector 140.0 -14.4338 8.33333) (float-vector 140.0 -16.6667 3.877059e-14) (float-vector 140.0 -14.4338 -8.33333)))
         (instance face :init :vertices (list (float-vector 3.700743e-15 0.0 -16.6667) (float-vector 3.204938e-15 -8.33333 -14.4338) (float-vector 1.850372e-15 -14.4338 -8.33333) (float-vector -6.705318e-30 -16.6667 7.684349e-15) (float-vector -1.850372e-15 -14.4338 8.33333) (float-vector -3.204938e-15 -8.33333 14.4338) (float-vector -3.700743e-15 2.042810e-14 16.6667) (float-vector -3.204938e-15 8.33333 14.4338) (float-vector -1.850372e-15 14.4338 8.33333) (float-vector 2.169367e-30 16.6667 -3.228368e-14) (float-vector 1.850372e-15 14.4338 -8.33333) (float-vector 3.204938e-15 8.33333 -14.4338)))
         (instance face :init :vertices (list (float-vector 140.0 -8.33333 -14.4338) (float-vector 3.204938e-15 -8.33333 -14.4338) (float-vector 3.700743e-15 0.0 -16.6667) (float-vector 140.0 0.0 -16.6667)))
         (instance face :init :vertices (list (float-vector 140.0 -14.4338 -8.33333) (float-vector 1.850372e-15 -14.4338 -8.33333) (float-vector 3.204938e-15 -8.33333 -14.4338) (float-vector 140.0 -8.33333 -14.4338)))
         (instance face :init :vertices (list (float-vector 140.0 -16.6667 3.877059e-14) (float-vector -6.705318e-30 -16.6667 7.684349e-15) (float-vector 1.850372e-15 -14.4338 -8.33333) (float-vector 140.0 -14.4338 -8.33333)))
         (instance face :init :vertices (list (float-vector 140.0 -14.4338 8.33333) (float-vector -1.850372e-15 -14.4338 8.33333) (float-vector -6.705318e-30 -16.6667 7.684349e-15) (float-vector 140.0 -16.6667 3.877059e-14)))
         (instance face :init :vertices (list (float-vector 140.0 -8.33333 14.4338) (float-vector -3.204938e-15 -8.33333 14.4338) (float-vector -1.850372e-15 -14.4338 8.33333) (float-vector 140.0 -14.4338 8.33333)))
         (instance face :init :vertices (list (float-vector 140.0 2.042810e-14 16.6667) (float-vector -3.700743e-15 2.042810e-14 16.6667) (float-vector -3.204938e-15 -8.33333 14.4338) (float-vector 140.0 -8.33333 14.4338)))
         (instance face :init :vertices (list (float-vector 140.0 8.33333 14.4338) (float-vector -3.204938e-15 8.33333 14.4338) (float-vector -3.700743e-15 2.042810e-14 16.6667) (float-vector 140.0 2.042810e-14 16.6667)))
         (instance face :init :vertices (list (float-vector 140.0 14.4338 8.33333) (float-vector -1.850372e-15 14.4338 8.33333) (float-vector -3.204938e-15 8.33333 14.4338) (float-vector 140.0 8.33333 14.4338)))
         (instance face :init :vertices (list (float-vector 140.0 16.6667 -1.197435e-15) (float-vector 2.169367e-30 16.6667 -3.228368e-14) (float-vector -1.850372e-15 14.4338 8.33333) (float-vector 140.0 14.4338 8.33333)))
         (instance face :init :vertices (list (float-vector 140.0 14.4338 -8.33333) (float-vector 1.850372e-15 14.4338 -8.33333) (float-vector 2.169367e-30 16.6667 -3.228368e-14) (float-vector 140.0 16.6667 -1.197435e-15)))
         (instance face :init :vertices (list (float-vector 140.0 8.33333 -14.4338) (float-vector 3.204938e-15 8.33333 -14.4338) (float-vector 1.850372e-15 14.4338 -8.33333) (float-vector 140.0 14.4338 -8.33333)))
         (instance face :init :vertices (list (float-vector 140.0 0.0 -16.6667) (float-vector 3.700743e-15 0.0 -16.6667) (float-vector 3.204938e-15 8.33333 -14.4338) (float-vector 140.0 8.33333 -14.4338)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 33.3333 140.0 8.572528e-15) (float-vector 30.796 140.0 12.7561) (float-vector 23.5702 140.0 23.5702) (float-vector 12.7561 140.0 30.796) (float-vector -3.021827e-13 140.0 33.3333) (float-vector -12.7561 140.0 30.796) (float-vector -23.5702 140.0 23.5702) (float-vector -30.796 140.0 12.7561) (float-vector -33.3333 140.0 -1.731453e-13) (float-vector -30.796 140.0 -12.7561) (float-vector -23.5702 140.0 -23.5702) (float-vector -12.7561 140.0 -30.796) (float-vector 3.164703e-14 140.0 -33.3333) (float-vector 12.7561 140.0 -30.796) (float-vector 23.5702 140.0 -23.5702) (float-vector 30.796 140.0 -12.7561)))
         (instance face :init :vertices (list (float-vector 30.796 140.0 12.7561) (float-vector 33.3333 140.0 8.572528e-15) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 33.3333 140.0 8.572528e-15) (float-vector 30.796 140.0 -12.7561) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 30.796 140.0 -12.7561) (float-vector 23.5702 140.0 -23.5702) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 23.5702 140.0 -23.5702) (float-vector 12.7561 140.0 -30.796) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 12.7561 140.0 -30.796) (float-vector 3.164703e-14 140.0 -33.3333) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 3.164703e-14 140.0 -33.3333) (float-vector -12.7561 140.0 -30.796) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector -12.7561 140.0 -30.796) (float-vector -23.5702 140.0 -23.5702) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector -23.5702 140.0 -23.5702) (float-vector -30.796 140.0 -12.7561) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector -30.796 140.0 -12.7561) (float-vector -33.3333 140.0 -1.731453e-13) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector -33.3333 140.0 -1.731453e-13) (float-vector -30.796 140.0 12.7561) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector -30.796 140.0 12.7561) (float-vector -23.5702 140.0 23.5702) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector -23.5702 140.0 23.5702) (float-vector -12.7561 140.0 30.796) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector -12.7561 140.0 30.796) (float-vector -3.021827e-13 140.0 33.3333) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector -3.021827e-13 140.0 33.3333) (float-vector 12.7561 140.0 30.796) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 12.7561 140.0 30.796) (float-vector 23.5702 140.0 23.5702) (float-vector 0.0 200.0 2.189520e-14)))
         (instance face :init :vertices (list (float-vector 23.5702 140.0 23.5702) (float-vector 30.796 140.0 12.7561) (float-vector 0.0 200.0 2.189520e-14)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 14.4338 140.0 8.33333) (float-vector 16.6667 140.0 8.572528e-15) (float-vector 14.4338 140.0 -8.33333) (float-vector 8.33333 140.0 -14.4338) (float-vector 9.769963e-15 140.0 -16.6667) (float-vector -8.33333 140.0 -14.4338) (float-vector -14.4338 140.0 -8.33333) (float-vector -16.6667 140.0 -1.185558e-14) (float-vector -14.4338 140.0 8.33333) (float-vector -8.33333 140.0 14.4338) (float-vector -3.019807e-14 140.0 16.6667) (float-vector 8.33333 140.0 14.4338)))
         (instance face :init :vertices (list (float-vector 16.6667 0.0 -2.251372e-14) (float-vector 14.4338 -1.850372e-15 8.33333) (float-vector 8.33333 -3.204938e-15 14.4338) (float-vector -3.019807e-14 -3.700743e-15 16.6667) (float-vector -8.33333 -3.204938e-15 14.4338) (float-vector -14.4338 -1.850372e-15 8.33333) (float-vector -16.6667 4.535950e-30 -4.294182e-14) (float-vector -14.4338 1.850372e-15 -8.33333) (float-vector -8.33333 3.204938e-15 -14.4338) (float-vector 9.769963e-15 3.700743e-15 -16.6667) (float-vector 8.33333 3.204938e-15 -14.4338) (float-vector 14.4338 1.850372e-15 -8.33333)))
         (instance face :init :vertices (list (float-vector 14.4338 140.0 8.33333) (float-vector 14.4338 -1.850372e-15 8.33333) (float-vector 16.6667 0.0 -2.251372e-14) (float-vector 16.6667 140.0 8.572528e-15)))
         (instance face :init :vertices (list (float-vector 8.33333 140.0 14.4338) (float-vector 8.33333 -3.204938e-15 14.4338) (float-vector 14.4338 -1.850372e-15 8.33333) (float-vector 14.4338 140.0 8.33333)))
         (instance face :init :vertices (list (float-vector -3.019807e-14 140.0 16.6667) (float-vector -3.019807e-14 -3.700743e-15 16.6667) (float-vector 8.33333 -3.204938e-15 14.4338) (float-vector 8.33333 140.0 14.4338)))
         (instance face :init :vertices (list (float-vector -8.33333 140.0 14.4338) (float-vector -8.33333 -3.204938e-15 14.4338) (float-vector -3.019807e-14 -3.700743e-15 16.6667) (float-vector -3.019807e-14 140.0 16.6667)))
         (instance face :init :vertices (list (float-vector -14.4338 140.0 8.33333) (float-vector -14.4338 -1.850372e-15 8.33333) (float-vector -8.33333 -3.204938e-15 14.4338) (float-vector -8.33333 140.0 14.4338)))
         (instance face :init :vertices (list (float-vector -16.6667 140.0 -1.185558e-14) (float-vector -16.6667 4.535950e-30 -4.294182e-14) (float-vector -14.4338 -1.850372e-15 8.33333) (float-vector -14.4338 140.0 8.33333)))
         (instance face :init :vertices (list (float-vector -14.4338 140.0 -8.33333) (float-vector -14.4338 1.850372e-15 -8.33333) (float-vector -16.6667 4.535950e-30 -4.294182e-14) (float-vector -16.6667 140.0 -1.185558e-14)))
         (instance face :init :vertices (list (float-vector -8.33333 140.0 -14.4338) (float-vector -8.33333 3.204938e-15 -14.4338) (float-vector -14.4338 1.850372e-15 -8.33333) (float-vector -14.4338 140.0 -8.33333)))
         (instance face :init :vertices (list (float-vector 9.769963e-15 140.0 -16.6667) (float-vector 9.769963e-15 3.700743e-15 -16.6667) (float-vector -8.33333 3.204938e-15 -14.4338) (float-vector -8.33333 140.0 -14.4338)))
         (instance face :init :vertices (list (float-vector 8.33333 140.0 -14.4338) (float-vector 8.33333 3.204938e-15 -14.4338) (float-vector 9.769963e-15 3.700743e-15 -16.6667) (float-vector 9.769963e-15 140.0 -16.6667)))
         (instance face :init :vertices (list (float-vector 14.4338 140.0 -8.33333) (float-vector 14.4338 1.850372e-15 -8.33333) (float-vector 8.33333 3.204938e-15 -14.4338) (float-vector 8.33333 140.0 -14.4338)))
         (instance face :init :vertices (list (float-vector 16.6667 140.0 8.572528e-15) (float-vector 16.6667 0.0 -2.251372e-14) (float-vector 14.4338 1.850372e-15 -8.33333) (float-vector 14.4338 140.0 -8.33333)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 33.3333 0.0 140.0) (float-vector 30.796 -12.7561 140.0) (float-vector 23.5702 -23.5702 140.0) (float-vector 12.7561 -30.796 140.0) (float-vector -3.021827e-13 -33.3333 140.0) (float-vector -12.7561 -30.796 140.0) (float-vector -23.5702 -23.5702 140.0) (float-vector -30.796 -12.7561 140.0) (float-vector -33.3333 1.817178e-13 140.0) (float-vector -30.796 12.7561 140.0) (float-vector -23.5702 23.5702 140.0) (float-vector -12.7561 30.796 140.0) (float-vector 3.164703e-14 33.3333 140.0) (float-vector 12.7561 30.796 140.0) (float-vector 23.5702 23.5702 140.0) (float-vector 30.796 12.7561 140.0)))
         (instance face :init :vertices (list (float-vector 30.796 -12.7561 140.0) (float-vector 33.3333 0.0 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector 33.3333 0.0 140.0) (float-vector 30.796 12.7561 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector 30.796 12.7561 140.0) (float-vector 23.5702 23.5702 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector 23.5702 23.5702 140.0) (float-vector 12.7561 30.796 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector 12.7561 30.796 140.0) (float-vector 3.164703e-14 33.3333 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector 3.164703e-14 33.3333 140.0) (float-vector -12.7561 30.796 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector -12.7561 30.796 140.0) (float-vector -23.5702 23.5702 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector -23.5702 23.5702 140.0) (float-vector -30.796 12.7561 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector -30.796 12.7561 140.0) (float-vector -33.3333 1.817178e-13 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector -33.3333 1.817178e-13 140.0) (float-vector -30.796 -12.7561 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector -30.796 -12.7561 140.0) (float-vector -23.5702 -23.5702 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector -23.5702 -23.5702 140.0) (float-vector -12.7561 -30.796 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector -12.7561 -30.796 140.0) (float-vector -3.021827e-13 -33.3333 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector -3.021827e-13 -33.3333 140.0) (float-vector 12.7561 -30.796 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector 12.7561 -30.796 140.0) (float-vector 23.5702 -23.5702 140.0) (float-vector 0.0 0.0 200.0)))
         (instance face :init :vertices (list (float-vector 23.5702 -23.5702 140.0) (float-vector 30.796 -12.7561 140.0) (float-vector 0.0 0.0 200.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 14.4338 -8.33333 140.0) (float-vector 16.6667 0.0 140.0) (float-vector 14.4338 8.33333 140.0) (float-vector 8.33333 14.4338 140.0) (float-vector 9.769963e-15 16.6667 140.0) (float-vector -8.33333 14.4338 140.0) (float-vector -14.4338 8.33333 140.0) (float-vector -16.6667 2.042810e-14 140.0) (float-vector -14.4338 -8.33333 140.0) (float-vector -8.33333 -14.4338 140.0) (float-vector -3.019807e-14 -16.6667 140.0) (float-vector 8.33333 -14.4338 140.0)))
         (instance face :init :vertices (list (float-vector 16.6667 0.0 0.0) (float-vector 14.4338 -8.33333 0.0) (float-vector 8.33333 -14.4338 0.0) (float-vector -3.019807e-14 -16.6667 0.0) (float-vector -8.33333 -14.4338 0.0) (float-vector -14.4338 -8.33333 0.0) (float-vector -16.6667 2.042810e-14 0.0) (float-vector -14.4338 8.33333 0.0) (float-vector -8.33333 14.4338 0.0) (float-vector 9.769963e-15 16.6667 0.0) (float-vector 8.33333 14.4338 0.0) (float-vector 14.4338 8.33333 0.0)))
         (instance face :init :vertices (list (float-vector 14.4338 -8.33333 140.0) (float-vector 14.4338 -8.33333 0.0) (float-vector 16.6667 0.0 0.0) (float-vector 16.6667 0.0 140.0)))
         (instance face :init :vertices (list (float-vector 8.33333 -14.4338 140.0) (float-vector 8.33333 -14.4338 0.0) (float-vector 14.4338 -8.33333 0.0) (float-vector 14.4338 -8.33333 140.0)))
         (instance face :init :vertices (list (float-vector -3.019807e-14 -16.6667 140.0) (float-vector -3.019807e-14 -16.6667 0.0) (float-vector 8.33333 -14.4338 0.0) (float-vector 8.33333 -14.4338 140.0)))
         (instance face :init :vertices (list (float-vector -8.33333 -14.4338 140.0) (float-vector -8.33333 -14.4338 0.0) (float-vector -3.019807e-14 -16.6667 0.0) (float-vector -3.019807e-14 -16.6667 140.0)))
         (instance face :init :vertices (list (float-vector -14.4338 -8.33333 140.0) (float-vector -14.4338 -8.33333 0.0) (float-vector -8.33333 -14.4338 0.0) (float-vector -8.33333 -14.4338 140.0)))
         (instance face :init :vertices (list (float-vector -16.6667 2.042810e-14 140.0) (float-vector -16.6667 2.042810e-14 0.0) (float-vector -14.4338 -8.33333 0.0) (float-vector -14.4338 -8.33333 140.0)))
         (instance face :init :vertices (list (float-vector -14.4338 8.33333 140.0) (float-vector -14.4338 8.33333 0.0) (float-vector -16.6667 2.042810e-14 0.0) (float-vector -16.6667 2.042810e-14 140.0)))
         (instance face :init :vertices (list (float-vector -8.33333 14.4338 140.0) (float-vector -8.33333 14.4338 0.0) (float-vector -14.4338 8.33333 0.0) (float-vector -14.4338 8.33333 140.0)))
         (instance face :init :vertices (list (float-vector 9.769963e-15 16.6667 140.0) (float-vector 9.769963e-15 16.6667 0.0) (float-vector -8.33333 14.4338 0.0) (float-vector -8.33333 14.4338 140.0)))
         (instance face :init :vertices (list (float-vector 8.33333 14.4338 140.0) (float-vector 8.33333 14.4338 0.0) (float-vector 9.769963e-15 16.6667 0.0) (float-vector 9.769963e-15 16.6667 140.0)))
         (instance face :init :vertices (list (float-vector 14.4338 8.33333 140.0) (float-vector 14.4338 8.33333 0.0) (float-vector 8.33333 14.4338 0.0) (float-vector 8.33333 14.4338 140.0)))
         (instance face :init :vertices (list (float-vector 16.6667 0.0 140.0) (float-vector 16.6667 0.0 0.0) (float-vector 14.4338 8.33333 0.0) (float-vector 14.4338 8.33333 140.0)))
       ))
       ))
     (dolist (b (cdr bc)) (send (car bc) :assoc b))
     (send (elt bc 0) :set-color (list))
     (send (elt bc 1) :set-color :red)
     (send (elt bc 2) :set-color :red)
     (send (elt bc 3) :set-color :green)
     (send (elt bc 4) :set-color :green)
     (send (elt bc 5) :set-color :blue)
     (send (elt bc 6) :set-color :blue)
     (setq blink0 (instance bodyset-link :init (make-cascoords) :bodies bc :name :arrow-bodyset2 :weight 1 :centroid (float-vector 0.0 0.0 0.0) :inertia-tensor #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))

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

  (:handle (&rest args) (forward-message-to-all (list ) args))
  (:attention (&rest args) (forward-message-to-all (list ) args))
  (:button (&rest args) (forward-message-to-all (list ) args))
  )

(defun arrow (&rest args) (instance* arrow-object :init args))
;; (format *error-output* "(instance arrow-object :init) for generating model~%")
