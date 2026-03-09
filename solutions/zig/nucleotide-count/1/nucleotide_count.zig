const std = @import("std");
    
pub const NucleotideError = error{Invalid};

pub const Counts = struct {
    a: u32,
    c: u32,
    g: u32,
    t: u32,
};

pub fn countNucleotides(s: []const u8) NucleotideError!Counts {
    var counts = Counts{
        .a = 0,
        .c = 0,
        .g = 0,
        .t = 0,
    };

    for (s) |c| {
        // Convert to uppercase for case-insensitive comparison
        const upper_c = std.ascii.toUpper(c);
        
        if (upper_c == 'A') {
            counts.a += 1;
        } else if (upper_c == 'C') {
            counts.c += 1;
        } else if (upper_c == 'G') {
            counts.g += 1;
        } else if (upper_c == 'T') {
            counts.t += 1;
        } else {
            return NucleotideError.Invalid;
        }
    }
    
    return counts;
}