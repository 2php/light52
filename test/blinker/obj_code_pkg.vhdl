--------------------------------------------------------------------------------
-- obj_code_pkg.vhdl -- Application object code in vhdl constant string format.
--------------------------------------------------------------------------------
-- Written by build_rom.py for project 'Blinker'.
--------------------------------------------------------------------------------
-- Copyright (C) 2012 Jose A. Ruiz
--
-- This source file may be used and distributed without
-- restriction provided that this copyright statement is not
-- removed from the file and that any derivative work contains
-- the original copyright notice and the associated disclaimer.
--
-- This source file is free software; you can redistribute it
-- and/or modify it under the terms of the GNU Lesser General
-- Public License as published by the Free Software Foundation;
-- either version 2.1 of the License, or (at your option) any
-- later version.
--
-- This source is distributed in the hope that it will be
-- useful, but WITHOUT ANY WARRANTY; without even the implied
-- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
-- PURPOSE.  See the GNU Lesser General Public License for more
-- details.
--
-- You should have received a copy of the GNU Lesser General
-- Public License along with this source; if not, download it
-- from http://www.opencores.org/lgpl.shtml
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.light52_pkg.all;

package obj_code_pkg is

-- Size of XCODE memory in bytes.
constant XCODE_SIZE : natural := 4096;
-- Size of XDATA memory in bytes.
constant XDATA_SIZE : natural := 0;

-- Object code initialization constant.
constant object_code : t_obj_code(0 to 2377) := (
    X"02", X"00", X"11", X"32", X"00", X"00", X"00", X"00", 
    X"00", X"00", X"00", X"02", X"01", X"c7", X"02", X"00", 
    X"70", X"75", X"81", X"3b", X"12", X"09", X"02", X"e5", 
    X"82", X"60", X"03", X"02", X"00", X"0e", X"79", X"00", 
    X"e9", X"44", X"00", X"60", X"1b", X"7a", X"00", X"90", 
    X"09", X"4a", X"78", X"00", X"75", X"a0", X"00", X"e4", 
    X"93", X"f2", X"a3", X"08", X"b8", X"00", X"02", X"05", 
    X"a0", X"d9", X"f4", X"da", X"f2", X"75", X"a0", X"ff", 
    X"e4", X"78", X"ff", X"f6", X"d8", X"fd", X"78", X"00", 
    X"e8", X"44", X"00", X"60", X"0a", X"79", X"00", X"75", 
    X"a0", X"00", X"e4", X"f3", X"09", X"d8", X"fc", X"78", 
    X"00", X"e8", X"44", X"00", X"60", X"0c", X"79", X"00", 
    X"90", X"00", X"00", X"e4", X"f0", X"a3", X"d8", X"fc", 
    X"d9", X"fa", X"75", X"0c", X"00", X"02", X"00", X"0e", 
    X"12", X"00", X"e8", X"74", X"06", X"c0", X"e0", X"74", 
    X"09", X"c0", X"e0", X"74", X"80", X"c0", X"e0", X"12", 
    X"02", X"ee", X"15", X"81", X"15", X"81", X"15", X"81", 
    X"74", X"09", X"c0", X"e0", X"74", X"09", X"c0", X"e0", 
    X"74", X"80", X"c0", X"e0", X"12", X"02", X"ee", X"15", 
    X"81", X"15", X"81", X"15", X"81", X"74", X"2b", X"c0", 
    X"e0", X"74", X"09", X"c0", X"e0", X"74", X"80", X"c0", 
    X"e0", X"12", X"02", X"ee", X"15", X"81", X"15", X"81", 
    X"15", X"81", X"12", X"01", X"09", X"ac", X"82", X"ad", 
    X"83", X"ae", X"f0", X"ff", X"75", X"0f", X"e8", X"75", 
    X"10", X"03", X"e4", X"f5", X"11", X"f5", X"12", X"8c", 
    X"82", X"8d", X"83", X"8e", X"f0", X"ef", X"12", X"01", 
    X"f7", X"ac", X"82", X"ad", X"83", X"ae", X"f0", X"ff", 
    X"8c", X"00", X"79", X"00", X"7a", X"00", X"7b", X"00", 
    X"88", X"90", X"8d", X"04", X"8c", X"80", X"80", X"ca", 
    X"e4", X"f5", X"08", X"f5", X"09", X"f5", X"0a", X"f5", 
    X"0b", X"90", X"c3", X"50", X"12", X"01", X"75", X"75", 
    X"82", X"01", X"12", X"01", X"bf", X"75", X"82", X"01", 
    X"12", X"01", X"6d", X"75", X"82", X"01", X"02", X"01", 
    X"90", X"12", X"01", X"98", X"ae", X"82", X"af", X"83", 
    X"7d", X"00", X"7c", X"00", X"75", X"0f", X"32", X"e4", 
    X"f5", X"10", X"f5", X"11", X"f5", X"12", X"8e", X"82", 
    X"8f", X"83", X"8d", X"f0", X"ec", X"12", X"01", X"f7", 
    X"ae", X"82", X"af", X"83", X"ad", X"f0", X"fc", X"85", 
    X"08", X"0f", X"85", X"09", X"10", X"85", X"0a", X"11", 
    X"85", X"0b", X"12", X"90", X"03", X"e8", X"e4", X"f5", 
    X"f0", X"c0", X"07", X"c0", X"06", X"c0", X"05", X"c0", 
    X"04", X"12", X"02", X"5c", X"a8", X"82", X"a9", X"83", 
    X"aa", X"f0", X"fb", X"d0", X"04", X"d0", X"05", X"d0", 
    X"06", X"d0", X"07", X"e8", X"2e", X"fe", X"e9", X"3f", 
    X"ff", X"ea", X"3d", X"fd", X"eb", X"3c", X"8e", X"82", 
    X"8f", X"83", X"8d", X"f0", X"22", X"e5", X"82", X"13", 
    X"92", X"00", X"92", X"af", X"22", X"ae", X"82", X"af", 
    X"83", X"be", X"ff", X"05", X"bf", X"ff", X"02", X"80", 
    X"0a", X"8f", X"8f", X"7f", X"00", X"8e", X"8e", X"d2", 
    X"8c", X"80", X"02", X"c2", X"8c", X"d2", X"88", X"22", 
    X"e5", X"82", X"13", X"92", X"01", X"92", X"8d", X"22", 
    X"85", X"8d", X"0f", X"85", X"8c", X"10", X"85", X"8c", 
    X"11", X"e5", X"11", X"b5", X"10", X"02", X"80", X"06", 
    X"85", X"8d", X"0f", X"85", X"8c", X"10", X"af", X"0f", 
    X"7e", X"00", X"ac", X"10", X"7d", X"00", X"ec", X"4e", 
    X"f5", X"82", X"ed", X"4f", X"f5", X"83", X"22", X"e5", 
    X"82", X"13", X"92", X"02", X"92", X"a9", X"22", X"c0", 
    X"e0", X"c0", X"d0", X"d2", X"88", X"85", X"0c", X"90", 
    X"05", X"0c", X"74", X"01", X"25", X"08", X"f5", X"08", 
    X"e4", X"35", X"09", X"f5", X"09", X"e4", X"35", X"0a", 
    X"f5", X"0a", X"e4", X"35", X"0b", X"f5", X"0b", X"d0", 
    X"d0", X"d0", X"e0", X"32", X"af", X"82", X"8f", X"99", 
    X"bf", X"0a", X"03", X"75", X"99", X"0d", X"22", X"fb", 
    X"7a", X"20", X"e4", X"fc", X"fd", X"fe", X"ff", X"e5", 
    X"82", X"25", X"82", X"f5", X"82", X"e5", X"83", X"33", 
    X"f5", X"83", X"e5", X"f0", X"33", X"f5", X"f0", X"eb", 
    X"33", X"fb", X"40", X"17", X"da", X"e9", X"80", X"42", 
    X"e5", X"82", X"25", X"82", X"f5", X"82", X"e5", X"83", 
    X"33", X"f5", X"83", X"e5", X"f0", X"33", X"f5", X"f0", 
    X"eb", X"33", X"fb", X"ec", X"33", X"fc", X"ed", X"33", 
    X"fd", X"ee", X"33", X"fe", X"ef", X"33", X"ff", X"ec", 
    X"95", X"0f", X"ed", X"95", X"10", X"ee", X"95", X"11", 
    X"ef", X"95", X"12", X"40", X"13", X"ec", X"95", X"0f", 
    X"fc", X"ed", X"95", X"10", X"fd", X"ee", X"95", X"11", 
    X"fe", X"ef", X"95", X"12", X"ff", X"43", X"82", X"01", 
    X"da", X"be", X"eb", X"22", X"aa", X"f0", X"fb", X"e5", 
    X"82", X"85", X"0f", X"f0", X"a4", X"fc", X"ad", X"f0", 
    X"e5", X"83", X"85", X"0f", X"f0", X"a4", X"2d", X"fd", 
    X"e4", X"35", X"f0", X"fe", X"e5", X"82", X"85", X"10", 
    X"f0", X"a4", X"2d", X"fd", X"e5", X"f0", X"3e", X"fe", 
    X"e4", X"33", X"ff", X"ea", X"85", X"0f", X"f0", X"a4", 
    X"2e", X"fe", X"e5", X"f0", X"3f", X"ff", X"e5", X"83", 
    X"85", X"10", X"f0", X"a4", X"2e", X"fe", X"e5", X"f0", 
    X"3f", X"ff", X"e5", X"82", X"85", X"11", X"f0", X"a4", 
    X"2e", X"fe", X"e5", X"f0", X"3f", X"ff", X"eb", X"85", 
    X"0f", X"f0", X"a4", X"2f", X"ff", X"ea", X"85", X"10", 
    X"f0", X"a4", X"2f", X"ff", X"e5", X"83", X"85", X"11", 
    X"f0", X"a4", X"2f", X"ff", X"e5", X"82", X"85", X"12", 
    X"f0", X"a4", X"2f", X"8e", X"f0", X"8d", X"83", X"8c", 
    X"82", X"22", X"c0", X"0e", X"85", X"81", X"0e", X"12", 
    X"01", X"ec", X"d0", X"0e", X"22", X"85", X"82", X"31", 
    X"85", X"83", X"32", X"85", X"f0", X"33", X"e4", X"f5", 
    X"2e", X"f5", X"2f", X"f5", X"30", X"85", X"0d", X"34", 
    X"90", X"02", X"ca", X"02", X"03", X"c0", X"c0", X"0e", 
    X"85", X"81", X"0e", X"e5", X"0e", X"24", X"fb", X"ff", 
    X"8f", X"34", X"e4", X"f5", X"2e", X"f5", X"2f", X"f5", 
    X"30", X"e5", X"0e", X"24", X"fb", X"f8", X"86", X"31", 
    X"08", X"86", X"32", X"08", X"86", X"33", X"90", X"02", 
    X"ca", X"12", X"03", X"c0", X"d0", X"0e", X"22", X"af", 
    X"82", X"c0", X"24", X"c0", X"25", X"c0", X"26", X"12", 
    X"03", X"24", X"80", X"07", X"c0", X"22", X"c0", X"23", 
    X"8f", X"82", X"22", X"15", X"81", X"15", X"81", X"15", 
    X"81", X"05", X"2c", X"e4", X"b5", X"2c", X"02", X"05", 
    X"2d", X"22", X"af", X"82", X"74", X"30", X"2f", X"ff", 
    X"24", X"c6", X"50", X"0a", X"74", X"07", X"2f", X"ff", 
    X"30", X"03", X"03", X"43", X"07", X"20", X"8f", X"82", 
    X"02", X"03", X"17", X"e5", X"82", X"ff", X"c4", X"54", 
    X"0f", X"f5", X"82", X"c0", X"07", X"12", X"03", X"3a", 
    X"d0", X"07", X"74", X"0f", X"5f", X"f5", X"82", X"02", 
    X"03", X"3a", X"85", X"82", X"0f", X"85", X"27", X"10", 
    X"85", X"28", X"11", X"85", X"29", X"12", X"85", X"2a", 
    X"13", X"aa", X"2b", X"75", X"14", X"20", X"ea", X"2a", 
    X"fa", X"e5", X"13", X"23", X"54", X"01", X"ff", X"8a", 
    X"06", X"4e", X"fa", X"e5", X"10", X"25", X"10", X"f5", 
    X"10", X"e5", X"11", X"33", X"f5", X"11", X"e5", X"12", 
    X"33", X"f5", X"12", X"e5", X"13", X"33", X"f5", X"13", 
    X"c3", X"ea", X"95", X"0f", X"40", X"08", X"ea", X"c3", 
    X"95", X"0f", X"fa", X"43", X"10", X"01", X"d5", X"14", 
    X"cd", X"85", X"10", X"27", X"85", X"11", X"28", X"85", 
    X"12", X"29", X"85", X"13", X"2a", X"8a", X"2b", X"22", 
    X"85", X"82", X"22", X"85", X"83", X"23", X"85", X"2e", 
    X"24", X"85", X"2f", X"25", X"85", X"30", X"26", X"e4", 
    X"f5", X"2c", X"f5", X"2d", X"ad", X"31", X"ae", X"32", 
    X"af", X"33", X"8d", X"82", X"8e", X"83", X"8f", X"f0", 
    X"12", X"08", X"e6", X"fc", X"74", X"01", X"2d", X"f5", 
    X"31", X"e4", X"3e", X"f5", X"32", X"8f", X"33", X"ec", 
    X"ff", X"70", X"03", X"02", X"08", X"c7", X"bf", X"25", 
    X"02", X"80", X"03", X"02", X"08", X"bf", X"c2", X"04", 
    X"c2", X"05", X"c2", X"06", X"c2", X"07", X"c2", X"08", 
    X"c2", X"09", X"c2", X"0a", X"c2", X"0b", X"75", X"35", 
    X"00", X"75", X"36", X"00", X"7c", X"ff", X"aa", X"31", 
    X"ab", X"32", X"ae", X"33", X"8a", X"82", X"8b", X"83", 
    X"8e", X"f0", X"12", X"08", X"e6", X"ff", X"a3", X"aa", 
    X"82", X"ab", X"83", X"8a", X"31", X"8b", X"32", X"8e", 
    X"33", X"bf", X"25", X"07", X"8f", X"82", X"12", X"03", 
    X"17", X"80", X"99", X"8f", X"38", X"74", X"d0", X"25", 
    X"38", X"50", X"26", X"e5", X"38", X"24", X"c6", X"40", 
    X"20", X"bc", X"ff", X"12", X"e5", X"36", X"75", X"f0", 
    X"0a", X"a4", X"fd", X"2f", X"24", X"d0", X"f5", X"36", 
    X"70", X"c2", X"d2", X"05", X"80", X"be", X"ec", X"75", 
    X"f0", X"0a", X"a4", X"2f", X"24", X"d0", X"fc", X"80", 
    X"b3", X"bf", X"2e", X"07", X"bc", X"ff", X"ad", X"7c", 
    X"00", X"80", X"a9", X"8f", X"05", X"bd", X"61", X"00", 
    X"40", X"0c", X"ed", X"24", X"85", X"40", X"07", X"53", 
    X"07", X"df", X"d2", X"03", X"80", X"02", X"c2", X"03", 
    X"bf", X"20", X"02", X"80", X"6d", X"bf", X"2b", X"02", 
    X"80", X"63", X"bf", X"2d", X"02", X"80", X"59", X"bf", 
    X"42", X"02", X"80", X"63", X"bf", X"43", X"02", X"80", 
    X"68", X"bf", X"44", X"03", X"02", X"06", X"66", X"bf", 
    X"46", X"03", X"02", X"06", X"7c", X"bf", X"48", X"03", 
    X"02", X"04", X"1c", X"bf", X"49", X"03", X"02", X"06", 
    X"66", X"bf", X"4a", X"03", X"02", X"04", X"1c", X"bf", 
    X"4c", X"02", X"80", X"40", X"bf", X"4f", X"03", X"02", 
    X"06", X"6d", X"bf", X"50", X"03", X"02", X"05", X"fb", 
    X"bf", X"53", X"02", X"80", X"5c", X"bf", X"54", X"03", 
    X"02", X"04", X"1c", X"bf", X"55", X"03", X"02", X"06", 
    X"72", X"bf", X"58", X"03", X"02", X"06", X"77", X"bf", 
    X"5a", X"03", X"02", X"04", X"1c", X"02", X"06", X"80", 
    X"d2", X"04", X"02", X"04", X"1c", X"d2", X"06", X"02", 
    X"04", X"1c", X"d2", X"07", X"02", X"04", X"1c", X"d2", 
    X"09", X"02", X"04", X"1c", X"d2", X"0a", X"02", X"04", 
    X"1c", X"30", X"09", X"0c", X"e5", X"34", X"14", X"fe", 
    X"8e", X"34", X"8e", X"01", X"87", X"07", X"80", X"11", 
    X"e5", X"34", X"24", X"fe", X"fe", X"8e", X"34", X"8e", 
    X"01", X"87", X"05", X"09", X"87", X"06", X"19", X"8d", 
    X"07", X"8f", X"82", X"12", X"03", X"17", X"02", X"06", 
    X"89", X"e5", X"34", X"24", X"fd", X"fe", X"8e", X"34", 
    X"8e", X"01", X"87", X"03", X"09", X"87", X"05", X"09", 
    X"87", X"06", X"19", X"19", X"8b", X"27", X"8d", X"28", 
    X"8e", X"29", X"8b", X"82", X"8d", X"83", X"8e", X"f0", 
    X"c0", X"04", X"12", X"08", X"ce", X"ad", X"82", X"ae", 
    X"83", X"d0", X"04", X"bc", X"ff", X"02", X"8d", X"04", 
    X"20", X"04", X"2a", X"c3", X"ed", X"95", X"36", X"50", 
    X"24", X"e5", X"36", X"c3", X"9d", X"f5", X"36", X"ae", 
    X"36", X"8e", X"03", X"1e", X"eb", X"60", X"14", X"75", 
    X"82", X"20", X"c0", X"06", X"c0", X"05", X"c0", X"04", 
    X"12", X"03", X"17", X"d0", X"04", X"d0", X"05", X"d0", 
    X"06", X"80", X"e6", X"8e", X"36", X"8c", X"06", X"85", 
    X"27", X"82", X"85", X"28", X"83", X"85", X"29", X"f0", 
    X"12", X"08", X"e6", X"fc", X"ff", X"60", X"30", X"8e", 
    X"04", X"1e", X"c3", X"e4", X"64", X"80", X"8c", X"f0", 
    X"63", X"f0", X"80", X"95", X"f0", X"50", X"20", X"8f", 
    X"82", X"c0", X"06", X"c0", X"05", X"12", X"03", X"17", 
    X"d0", X"05", X"d0", X"06", X"aa", X"27", X"ab", X"28", 
    X"ac", X"29", X"0a", X"ba", X"00", X"01", X"0b", X"8a", 
    X"27", X"8b", X"28", X"8c", X"29", X"80", X"c0", X"20", 
    X"04", X"03", X"02", X"06", X"89", X"c3", X"ed", X"95", 
    X"36", X"40", X"03", X"02", X"06", X"89", X"e5", X"36", 
    X"c3", X"9d", X"f5", X"36", X"ae", X"36", X"8e", X"04", 
    X"1e", X"ec", X"70", X"03", X"02", X"06", X"87", X"75", 
    X"82", X"20", X"c0", X"06", X"12", X"03", X"17", X"d0", 
    X"06", X"80", X"eb", X"e5", X"34", X"24", X"fd", X"fc", 
    X"8c", X"34", X"8c", X"01", X"87", X"02", X"09", X"87", 
    X"03", X"09", X"87", X"04", X"19", X"19", X"8a", X"27", 
    X"8b", X"28", X"8c", X"29", X"ac", X"29", X"bc", X"80", 
    X"00", X"40", X"04", X"7f", X"43", X"80", X"14", X"bc", 
    X"60", X"00", X"40", X"04", X"7f", X"50", X"80", X"0b", 
    X"bc", X"40", X"00", X"40", X"04", X"7f", X"49", X"80", 
    X"02", X"7f", X"58", X"8f", X"82", X"c0", X"07", X"12", 
    X"03", X"17", X"75", X"82", X"3a", X"12", X"03", X"17", 
    X"75", X"82", X"30", X"12", X"03", X"17", X"75", X"82", 
    X"78", X"12", X"03", X"17", X"d0", X"07", X"bf", X"49", 
    X"02", X"80", X"0b", X"bf", X"50", X"02", X"80", X"06", 
    X"85", X"28", X"82", X"12", X"03", X"53", X"85", X"27", 
    X"82", X"12", X"03", X"53", X"80", X"23", X"d2", X"08", 
    X"75", X"35", X"0a", X"80", X"1c", X"75", X"35", X"08", 
    X"80", X"17", X"75", X"35", X"0a", X"80", X"12", X"75", 
    X"35", X"10", X"80", X"0d", X"d2", X"0b", X"80", X"09", 
    X"8f", X"82", X"12", X"03", X"17", X"80", X"02", X"8e", 
    X"36", X"30", X"0b", X"5c", X"e5", X"34", X"24", X"fc", 
    X"fe", X"8e", X"34", X"8e", X"01", X"87", X"02", X"09", 
    X"87", X"03", X"09", X"87", X"04", X"09", X"87", X"06", 
    X"19", X"19", X"19", X"8a", X"27", X"8b", X"28", X"8c", 
    X"29", X"8e", X"2a", X"75", X"27", X"3f", X"75", X"28", 
    X"09", X"75", X"29", X"80", X"85", X"27", X"39", X"85", 
    X"28", X"3a", X"85", X"29", X"3b", X"74", X"01", X"25", 
    X"39", X"fa", X"e4", X"35", X"3a", X"fc", X"ae", X"3b", 
    X"8a", X"27", X"8c", X"28", X"8e", X"29", X"85", X"39", 
    X"82", X"85", X"3a", X"83", X"85", X"3b", X"f0", X"12", 
    X"08", X"e6", X"fe", X"ff", X"70", X"03", X"02", X"03", 
    X"d4", X"8f", X"82", X"12", X"03", X"17", X"80", X"cc", 
    X"e5", X"35", X"70", X"03", X"02", X"03", X"d4", X"75", 
    X"37", X"1a", X"30", X"09", X"2d", X"e5", X"34", X"14", 
    X"fc", X"8c", X"34", X"8c", X"01", X"e7", X"fa", X"33", 
    X"95", X"e0", X"fb", X"fc", X"fe", X"8a", X"27", X"8b", 
    X"28", X"8c", X"29", X"8e", X"2a", X"20", X"08", X"66", 
    X"aa", X"27", X"7b", X"00", X"7c", X"00", X"7e", X"00", 
    X"8a", X"27", X"8b", X"28", X"8c", X"29", X"8e", X"2a", 
    X"80", X"54", X"30", X"0a", X"21", X"e5", X"34", X"24", 
    X"fc", X"fe", X"8e", X"34", X"8e", X"01", X"87", X"02", 
    X"09", X"87", X"03", X"09", X"87", X"04", X"09", X"87", 
    X"06", X"19", X"19", X"19", X"8a", X"27", X"8b", X"28", 
    X"8c", X"29", X"8e", X"2a", X"80", X"30", X"e5", X"34", 
    X"24", X"fe", X"fe", X"8e", X"34", X"8e", X"01", X"87", 
    X"04", X"09", X"87", X"06", X"19", X"ee", X"33", X"95", 
    X"e0", X"fb", X"fa", X"8c", X"27", X"8e", X"28", X"8b", 
    X"29", X"8a", X"2a", X"20", X"08", X"10", X"aa", X"27", 
    X"ab", X"28", X"7c", X"00", X"7e", X"00", X"8a", X"27", 
    X"8b", X"28", X"8c", X"29", X"8e", X"2a", X"30", X"08", 
    X"25", X"aa", X"27", X"ab", X"28", X"ac", X"29", X"e5", 
    X"2a", X"fe", X"30", X"e7", X"17", X"c3", X"e4", X"9a", 
    X"fa", X"e4", X"9b", X"fb", X"e4", X"9c", X"fc", X"e4", 
    X"9e", X"fe", X"8a", X"27", X"8b", X"28", X"8c", X"29", 
    X"8e", X"2a", X"80", X"02", X"c2", X"08", X"d2", X"0c", 
    X"a9", X"37", X"7e", X"00", X"75", X"2b", X"00", X"85", 
    X"35", X"82", X"c0", X"06", X"c0", X"01", X"12", X"03", 
    X"6a", X"d0", X"01", X"d0", X"06", X"20", X"0c", X"0b", 
    X"e5", X"2b", X"c4", X"fc", X"e7", X"fb", X"4c", X"f7", 
    X"19", X"80", X"02", X"a7", X"2b", X"0e", X"b2", X"0c", 
    X"e5", X"27", X"45", X"28", X"45", X"29", X"45", X"2a", 
    X"70", X"d2", X"89", X"37", X"8e", X"05", X"e5", X"36", 
    X"70", X"03", X"75", X"36", X"01", X"20", X"05", X"24", 
    X"20", X"04", X"21", X"ed", X"04", X"fe", X"ac", X"36", 
    X"c3", X"ee", X"9c", X"50", X"15", X"75", X"82", X"20", 
    X"c0", X"06", X"c0", X"05", X"c0", X"04", X"12", X"03", 
    X"17", X"d0", X"04", X"d0", X"05", X"d0", X"06", X"1c", 
    X"80", X"e6", X"8c", X"36", X"30", X"08", X"0e", X"75", 
    X"82", X"2d", X"c0", X"05", X"12", X"03", X"17", X"d0", 
    X"05", X"15", X"36", X"80", X"23", X"ed", X"60", X"20", 
    X"30", X"06", X"0e", X"75", X"82", X"2b", X"c0", X"05", 
    X"12", X"03", X"17", X"d0", X"05", X"15", X"36", X"80", 
    X"0f", X"30", X"07", X"0c", X"75", X"82", X"20", X"c0", 
    X"05", X"12", X"03", X"17", X"d0", X"05", X"15", X"36", 
    X"20", X"04", X"22", X"ae", X"36", X"8e", X"04", X"1e", 
    X"c3", X"ed", X"9c", X"50", X"2b", X"30", X"05", X"04", 
    X"7c", X"30", X"80", X"02", X"7c", X"20", X"8c", X"82", 
    X"c0", X"06", X"c0", X"05", X"12", X"03", X"17", X"d0", 
    X"05", X"d0", X"06", X"80", X"e0", X"c3", X"ed", X"95", 
    X"36", X"50", X"08", X"e5", X"36", X"c3", X"9d", X"f5", 
    X"36", X"80", X"07", X"75", X"36", X"00", X"80", X"02", 
    X"8e", X"36", X"a9", X"37", X"8d", X"06", X"8e", X"05", 
    X"1e", X"ed", X"60", X"26", X"b2", X"0c", X"20", X"0c", 
    X"0a", X"09", X"e7", X"c4", X"54", X"0f", X"fd", X"8d", 
    X"2b", X"80", X"07", X"87", X"05", X"74", X"0f", X"5d", 
    X"f5", X"2b", X"85", X"2b", X"82", X"c0", X"06", X"c0", 
    X"01", X"12", X"03", X"3a", X"d0", X"01", X"d0", X"06", 
    X"80", X"d4", X"20", X"04", X"03", X"02", X"03", X"d4", 
    X"ae", X"36", X"8e", X"05", X"1e", X"ed", X"70", X"03", 
    X"02", X"03", X"d4", X"75", X"82", X"20", X"c0", X"06", 
    X"12", X"03", X"17", X"d0", X"06", X"80", X"eb", X"8f", 
    X"82", X"12", X"03", X"17", X"02", X"03", X"d4", X"85", 
    X"2c", X"82", X"85", X"2d", X"83", X"22", X"aa", X"82", 
    X"ab", X"83", X"12", X"08", X"e6", X"60", X"03", X"a3", 
    X"80", X"f8", X"c3", X"e5", X"82", X"9a", X"f5", X"82", 
    X"e5", X"83", X"9b", X"f5", X"83", X"22", X"20", X"f7", 
    X"14", X"30", X"f6", X"14", X"88", X"83", X"a8", X"82", 
    X"20", X"f5", X"07", X"e6", X"a8", X"83", X"75", X"83", 
    X"00", X"22", X"e2", X"80", X"f7", X"e4", X"93", X"22", 
    X"e0", X"22", X"75", X"82", X"00", X"22", X"0a", X"0d", 
    X"00", X"4c", X"69", X"67", X"68", X"74", X"35", X"32", 
    X"20", X"70", X"72", X"6f", X"6a", X"65", X"63", X"74", 
    X"20", X"2d", X"2d", X"20", X"4d", X"61", X"72", X"20", 
    X"20", X"33", X"20", X"32", X"30", X"31", X"38", X"0a", 
    X"0a", X"0d", X"00", X"4c", X"45", X"44", X"20", X"62", 
    X"6c", X"69", X"6e", X"6b", X"65", X"72", X"20", X"74", 
    X"65", X"73", X"74", X"2e", X"0a", X"0d", X"00", X"3c", 
    X"4e", X"4f", X"20", X"46", X"4c", X"4f", X"41", X"54", 
    X"3e", X"00" 
);


end package obj_code_pkg;
