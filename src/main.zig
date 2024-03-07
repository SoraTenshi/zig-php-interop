const std = @import("std");
const o = std.io.getStdOut().writer();

pub export fn helloPhp() callconv(.C) void {
    o.print("Hello, {s}\n", .{"php!"}) catch unreachable;
}

pub export fn printFromZig(c: [*:0]const u8) callconv(.C) void {
    o.print("PHP says: {s}\n", .{c}) catch unreachable;
}

pub export fn addFromZig(lhs: i32, rhs: i32) i32 {
    return lhs + rhs;
}
