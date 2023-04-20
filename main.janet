(import /life)
(import /drawing)
(import /parse)

(defn main
  [_ file &opt speed mode scale]
  (default speed "20")
  (default mode "window")
  (default scale "10")
  (var board (parse/parse file))
  (let [speed (scan-number speed)
        scale (scan-number scale)]
    (case mode
      "term" (life/play-terminal board speed)
      "window" (drawing/play-draw board speed scale)
      (print ``Usage: `janet life.janet <term | window> <speed> [scale]``))))
