local native = dlimport.cinterop.native_type
local nfb = dlimport.cinterop.new_function_binding
local dll = dlimport.load(assert(dlimport.searchpath("dluaulib")))
local get_version = dlimport.cinterop.new_function_binding(dll, 'string', 'get_version')
local get_version_major = nfb(dll, 'c_int', 'get_version_major')
local get_version_minor = nfb(dll, 'c_int', 'get_version_minor')
local v: c_int = get_version_minor()
local n = tonumber(tostring(v))
-- local point_aggr = dlimport.cinterop.new_aggregate(8, {
--     {
--         name = 'x',
--         type = 'c_int',
--         memory_offset = 0,
--         array_size = 1,
--     },
--     {
--         name = 'y',
--         type = 'c_int',
--         memory_offset = 4,
--         array_size = 1,
--     }
-- })
-- print(`aggr {point_aggr}`)
--local test_point: (c_int, c_int) -> buffer = nfb(dll, point_aggr, 'test_point', 'c_int', 'c_int')
print(n, v)
print(`version {get_version()}`)
print(`version major: {get_version_major()}`)

local int = native.int('100')
print(`{nameof(int)}: {typeof(int)} = {int}`)
local uint = native.uint(0xff)
print(`{nameof(uint)}: {typeof(uint)} = {uint}`)
local short = native.short(0xff)
print(`{nameof(short)}: {typeof(short)} = {short}`)
local ushort = native.ushort(0xff)
print(`{nameof(ushort)}: {typeof(ushort)} = {ushort}`)
local long = native.long('1000000000')
print(`{nameof(long)}: {typeof(long)} = {long}`)
local ulong = native.ulong('100000000')
print(`{nameof(ulong)}: {typeof(ulong)} = {ulong}`)
local char = native.char(1000)
print(`{nameof(char)}: {typeof(char)} = {char}`)
local uchar = native.uchar('a')
print(`{nameof(uchar)}: {typeof(uchar)} = {uchar}`)
local float = native.float(0.123)
print(`{nameof(float)}: {typeof(float)} = {float}`)
