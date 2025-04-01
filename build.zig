const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "zbc-cli",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });
    const calculator = b.dependency("zbc", .{
        .target = target,
        .optimize = optimize,
    });

    exe.root_module.addImport("zbc", calculator.module("zbc"));
    b.installArtifact(exe);
}
