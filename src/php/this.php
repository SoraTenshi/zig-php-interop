<?php

$ffi = FFI::cdef(
    "void helloPhp();
     void printFromZig(const char *c);
     int addFromZig(const int lhs, const int rhs);",
    "libzig-php-interop.so"
);

print("--------- START ---------\n");
$ffi->helloPhp();
$ffi->printFromZig("PHP FFI kinda sucks");
printf("Zig says: \$ffi->addFromZig(13, 37) -> %d\n", (int)$ffi->addFromZig(13, 37));
print("---------- END ----------\n");

?>
