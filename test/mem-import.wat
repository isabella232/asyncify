(module
  (import "env" "memory" (memory $memory 16))
  (func $env.get_time (import "env" "get_time") (result i32))
  (func $env.sleep (import "env" "sleep") (param i32))
  (func $run (export "run") (result i32)
    (local $start i32)
    (local.set $start
      (call $env.get_time))
    (call $env.sleep
      (i32.const 100))
    (i32.gt_u
      (call $env.get_time)
      (local.get $start)))
  (export "run2" (func $run)))
