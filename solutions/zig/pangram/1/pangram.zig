const std = @import("std");

pub fn isPangram(str: []const u8) bool {
    //_ = str;
    //@compileError("please implement the isPangram function");
    var used: [26]bool = [_]bool{false}**26;

    for (str) |c|{
        if (!std.ascii.isAlphabetic(c)) continue;
        const lower = std.ascii.toLower(c);
        const index = lower - 'a';
        if (used[index]) continue;
        used[index] = true;
    }

    for (used) |v| {
        if(!v) return false;
    }
    return true;
}
