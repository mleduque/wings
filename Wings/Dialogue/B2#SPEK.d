BEGIN ~B2#WHKN~

IF ~Global("B2#SPEK","GLOBAL",0)
~ THEN BEGIN 0
  SAY @0
  = @1
  = @2
  IF ~~ THEN EXTERN ~B2#BLKN~ 1
END

BEGIN ~B2#BLKN~

IF ~Global("B2#SPEK","GLOBAL",0)
~ THEN BEGIN 0
  SAY @3
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN EXTERN ~B2#GRKN~ 1
END

BEGIN ~B2#GRKN~

IF ~Global("B2#SPEK","GLOBAL",0)
~ THEN BEGIN 0
  SAY @5
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @6
  IF ~~ THEN EXTERN ~B2#PIKN~ 1
END

INTERJECT B2#GRKN 1 B2#AerSPK1
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @7
  = @8
  = @9
  = @10
  = @11
END B2#PIKN 1

BEGIN ~B2#PIKN~

IF ~Global("B2#SPEK","GLOBAL",0)
~ THEN BEGIN 0
  SAY @12
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @13
  IF ~~ THEN EXTERN ~B2#WHKN~ 2
END

APPEND B2#WHKN
IF ~~ THEN BEGIN 2
  SAY @14
  IF ~~ THEN EXTERN ~B2#PIKN~ 2
END
END

APPEND B2#PIKN
IF ~~ THEN BEGIN 2
  SAY @15
  IF ~~ THEN EXTERN ~B2#GRKN~ 2
END
END

APPEND B2#GRKN
IF ~~ THEN BEGIN 2
  SAY @16
  IF ~~ THEN EXTERN ~B2#PIKN~ 3
END
END


APPEND B2#PIKN
IF ~~ THEN BEGIN 3
  SAY @17
  IF ~~ THEN EXTERN ~B2#WHKN~ 3
END
END

APPEND B2#WHKN
IF ~~ THEN BEGIN 3
  SAY @18
  IF ~~ THEN EXTERN ~B2#PIKN~ 4
END
END

APPEND B2#PIKN
IF ~~ THEN BEGIN 4
  SAY @19
   = @20
  IF ~~ THEN EXTERN ~B2#BLKN~ 2
END
END

APPEND B2#BLKN
IF ~~ THEN BEGIN 2
  SAY @21
  IF ~~ THEN EXTERN ~B2#PIKN~ 5
END
END

APPEND B2#PIKN
IF ~~ THEN BEGIN 5
  SAY @22
  IF ~~ THEN EXTERN ~B2#BLKN~ 3
END
END

APPEND B2#BLKN
IF ~~ THEN BEGIN 3
  SAY @23
  IF ~~ THEN EXTERN ~B2#PIKN~ 6
END
END

APPEND B2#PIKN
IF ~~ THEN BEGIN 6
  SAY @24
  IF ~~ THEN EXTERN ~B2#BLKN~ 4
END
END

INTERJECT B2#PIKN 6 B2#AerSPK2
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @25
END AERIEJ B2#AerSPK3

APPEND AERIEJ
IF ~~ THEN BEGIN B2#AerSPK3
  SAY @26
  IF ~~ THEN REPLY @27 GOTO B2#AerSPKa
  IF ~~ THEN REPLY @28 GOTO B2#AerSPKb
  IF ~~ THEN REPLY @29 GOTO B2#AerSPKc
END

IF ~~ THEN BEGIN B2#AerSPKa
  SAY @30
  IF ~~ THEN EXTERN ~B2#BLKN~ 4
END

IF ~~ THEN BEGIN B2#AerSPKb
  SAY @31
  IF ~~ THEN EXTERN ~B2#BLKN~ 4
END

IF ~~ THEN BEGIN B2#AerSPKc
  SAY @32
  IF ~~ THEN EXTERN ~B2#BLKN~ 4
END
END

APPEND B2#BLKN
IF ~~ THEN BEGIN 4
  SAY @33
  IF ~~ THEN EXTERN ~B2#PIKN~ 7
END
END

APPEND B2#PIKN
IF ~~ THEN BEGIN 7
  SAY @34
  IF ~~ THEN DO ~SetGlobal("B2#SPEK","GLOBAL",1)
~ EXIT
END
END

APPEND B2#BLKN
IF ~Global("B2#SPEK","GLOBAL",1)
~ THEN BEGIN 5
  SAY @35
  IF ~~ THEN EXTERN ~B2#PIKN~ 8
END
END

APPEND B2#PIKN
IF ~~ THEN BEGIN 8
  SAY @36
  IF ~~ THEN EXTERN ~B2#BLKN~ 6
END
END

APPEND B2#BLKN
IF ~~ THEN BEGIN 6
  SAY @37
  IF ~~ THEN EXTERN ~B2#PIKN~ 9
END
END

APPEND B2#PIKN
IF ~~ THEN BEGIN 9
  SAY @38
   = @39
  IF ~~ THEN EXTERN ~B2#BLKN~ 7
END
END

APPEND B2#BLKN
IF ~~ THEN BEGIN 7
  SAY @40
  IF ~~ THEN EXTERN ~B2#PIKN~ 10
END
END

APPEND B2#PIKN
IF ~~ THEN BEGIN 10
  SAY @41
  IF ~~ THEN DO ~~ EXIT
END
END

APPEND B2#PIKN
IF ~Global("B2#SPEK","GLOBAL",1)
~ THEN BEGIN 11
  SAY @42
  IF ~~ THEN EXTERN ~B2#WHKN~ 4
END
END

APPEND B2#WHKN
IF ~~ THEN BEGIN 4
  SAY @43
  IF ~~ THEN EXTERN ~B2#PIKN~ 12
END
END

APPEND B2#PIKN
IF ~~ THEN BEGIN 12
  SAY @44
  IF ~~ THEN EXTERN ~B2#GRKN~ 3
END
END

APPEND B2#GRKN
IF ~~ THEN BEGIN 3
  SAY @45
   = @46
  IF ~~ THEN DO ~~ EXIT
END
END

APPEND B2#WHKN
IF ~Global("B2#SPEK","GLOBAL",1)
~ THEN BEGIN 5
  SAY @47
   = @48
   = @49
  IF ~~ THEN EXTERN ~B2#PIKN~ 13
END
END

APPEND B2#PIKN
IF ~~ THEN BEGIN 13
  SAY @50
  IF ~~ THEN EXTERN ~B2#GRKN~ 4
END
END

APPEND B2#GRKN
IF ~~ THEN BEGIN 4
  SAY @51
  IF ~~ THEN EXTERN ~B2#BLKN~ 8
END
END

APPEND B2#BLKN
IF ~~ THEN BEGIN 8
  SAY @52
  IF ~~ THEN EXTERN ~B2#PIKN~ 14
END
END

APPEND B2#PIKN
IF ~~ THEN BEGIN 14
  SAY @53
  IF ~~ THEN DO ~~ EXIT
END
END

APPEND B2#GRKN
IF ~Global("B2#SPEK","GLOBAL",1)
~ THEN BEGIN 5
  SAY @54
   = @55
   = @56
  IF ~~ THEN EXTERN ~B2#PIKN~ 15
END
END

APPEND B2#PIKN
IF ~~ THEN BEGIN 15
  SAY @57
  IF ~~ THEN DO ~~ EXIT
END
END