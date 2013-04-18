.class public Lking/org/apache/commons/codec/language/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"

# interfaces
.implements Lking/org/apache/commons/codec/StringEncoder;


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String; = null

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String; = null

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String; = null

.field private static final SILENT_START:[Ljava/lang/String; = null

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field private maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GN"

    aput-object v1, v0, v3

    const-string v1, "KN"

    aput-object v1, v0, v4

    const-string v1, "PN"

    aput-object v1, v0, v5

    const-string v1, "WR"

    aput-object v1, v0, v6

    const-string v1, "PS"

    aput-object v1, v0, v7

    sput-object v0, Lking/org/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "L"

    aput-object v1, v0, v3

    const-string v1, "R"

    aput-object v1, v0, v4

    const-string v1, "N"

    aput-object v1, v0, v5

    const-string v1, "M"

    aput-object v1, v0, v6

    const-string v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "H"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " "

    aput-object v2, v0, v1

    sput-object v0, Lking/org/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 51
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ES"

    aput-object v1, v0, v3

    const-string v1, "EP"

    aput-object v1, v0, v4

    const-string v1, "EB"

    aput-object v1, v0, v5

    const-string v1, "EL"

    aput-object v1, v0, v6

    const-string v1, "EY"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "IB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EI"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ER"

    aput-object v2, v0, v1

    sput-object v0, Lking/org/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "L"

    aput-object v1, v0, v3

    const-string v1, "T"

    aput-object v1, v0, v4

    const-string v1, "K"

    aput-object v1, v0, v5

    const-string v1, "S"

    aput-object v1, v0, v6

    const-string v1, "N"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "M"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lking/org/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lking/org/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 66
    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 921
    if-nez p1, :cond_0

    move-object v0, v2

    .line 928
    :goto_0
    return-object v0

    .line 924
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v2

    .line 926
    goto :goto_0

    .line 928
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 812
    const/4 v0, 0x4

    const-string v1, "CHIA"

    invoke-static {p1, p2, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 822
    :goto_0
    return v0

    .line 814
    :cond_0
    if-gt p2, v5, :cond_1

    move v0, v4

    .line 815
    goto :goto_0

    .line 816
    :cond_1
    sub-int v0, p2, v3

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 817
    goto :goto_0

    .line 818
    :cond_2
    sub-int v0, p2, v5

    const/4 v1, 0x3

    const-string v2, "ACH"

    invoke-static {p1, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    .line 819
    goto :goto_0

    .line 821
    :cond_3
    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    .line 822
    const/16 v1, 0x49

    if-eq v0, v1, :cond_4

    const/16 v1, 0x45

    if-ne v0, v1, :cond_5

    :cond_4
    sub-int v0, p2, v3

    const/4 v1, 0x6

    const-string v2, "BACHER"

    const-string v3, "MACHER"

    invoke-static {p1, v0, v1, v2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v5

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_0
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 831
    if-eqz p2, :cond_0

    move v0, v7

    .line 839
    :goto_0
    return v0

    .line 833
    :cond_0
    add-int/lit8 v0, p2, 0x1

    const-string v1, "HARAC"

    const-string v2, "HARIS"

    invoke-static {p1, v0, v8, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x3

    const-string v3, "HOR"

    const-string v4, "HYM"

    const-string v5, "HIA"

    const-string v6, "HEM"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 835
    goto :goto_0

    .line 836
    :cond_1
    const-string v0, "CHORE"

    invoke-static {p1, v7, v8, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    .line 837
    goto :goto_0

    .line 839
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 847
    const/4 v0, 0x4

    const-string v1, "VAN "

    const-string v2, "VON "

    invoke-static {p1, v8, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "SCH"

    invoke-static {p1, v8, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    sub-int v1, p2, v0

    const/4 v2, 0x6

    const-string v3, "ORCHES"

    const-string v4, "ARCHIT"

    const-string v5, "ORCHID"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x2

    const-string v1, "T"

    const-string v2, "S"

    invoke-static {p1, v0, v7, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sub-int v1, p2, v7

    const-string v3, "A"

    const-string v4, "O"

    const-string v5, "U"

    const-string v6, "E"

    move-object v0, p1

    move v2, v7

    invoke-static/range {v0 .. v6}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    add-int/lit8 v0, p2, 0x2

    sget-object v1, Lking/org/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    invoke-static {p1, v0, v7, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v7

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v7

    :goto_0
    return v0

    :cond_2
    move v0, v8

    goto :goto_0
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 859
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    sub-int v1, p2, v6

    const-string v3, "ILLO"

    const-string v4, "ILLA"

    const-string v5, "ALLE"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 867
    :goto_0
    return v0

    .line 862
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    const-string v1, "AS"

    const-string v3, "OS"

    invoke-static {p1, v0, v7, v1, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    const-string v1, "A"

    const-string v3, "O"

    invoke-static {p1, v0, v6, v1, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sub-int v0, p2, v6

    const-string v1, "ALLE"

    invoke-static {p1, v0, v2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    .line 865
    goto :goto_0

    .line 867
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 875
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 878
    :goto_0
    return v0

    :cond_0
    sub-int v0, p2, v3

    const/4 v1, 0x3

    const-string v2, "UMB"

    invoke-static {p1, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x2

    const/4 v1, 0x2

    const-string v2, "ER"

    invoke-static {p1, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 948
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 957
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p0, p1, p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 967
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p0, p1, p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 977
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p0, p1, p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 989
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    invoke-static {p0, p1, p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1001
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    const/4 v1, 0x5

    aput-object p8, v0, v1

    invoke-static {p0, p1, p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1012
    .line 1013
    if-ltz p1, :cond_1

    add-int v0, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1014
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 1016
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 1017
    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    const/4 v0, 0x1

    .line 1023
    :goto_1
    return v0

    .line 1016
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method private handleAEIOUY(Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 272
    if-nez p2, :cond_0

    .line 273
    const/16 v0, 0x41

    invoke-virtual {p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 275
    :cond_0
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method private handleC(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x58

    const/16 v7, 0x4b

    const/16 v6, 0x53

    const/4 v2, 0x2

    .line 284
    invoke-direct {p0, p1, p3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p2, v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 286
    add-int/lit8 v0, p3, 0x2

    .line 329
    :goto_0
    return v0

    .line 287
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x6

    const-string v1, "CAESAR"

    invoke-static {p1, p3, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p2, v6}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 289
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 290
    :cond_1
    const-string v0, "CH"

    invoke-static {p1, p3, v2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-direct {p0, p1, p2, p3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleCH(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_0

    .line 292
    :cond_2
    const-string v0, "CZ"

    invoke-static {p1, p3, v2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sub-int v0, p3, v2

    const/4 v1, 0x4

    const-string v3, "WICZ"

    invoke-static {p1, v0, v1, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    invoke-virtual {p2, v6, v8}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 296
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 297
    :cond_3
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    const-string v3, "CIA"

    invoke-static {p1, v0, v1, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    invoke-virtual {p2, v8}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 300
    add-int/lit8 v0, p3, 0x3

    goto :goto_0

    .line 301
    :cond_4
    const-string v0, "CC"

    invoke-static {p1, p3, v2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p3, v9, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_6

    .line 304
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleCC(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_0

    .line 305
    :cond_6
    const-string v3, "CK"

    const-string v4, "CG"

    const-string v5, "CQ"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 306
    invoke-virtual {p2, v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 307
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 308
    :cond_7
    const-string v3, "CI"

    const-string v4, "CE"

    const-string v5, "CY"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 310
    const/4 v2, 0x3

    const-string v3, "CIO"

    const-string v4, "CIE"

    const-string v5, "CIA"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 311
    invoke-virtual {p2, v6, v8}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 315
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 313
    :cond_8
    invoke-virtual {p2, v6}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 317
    :cond_9
    invoke-virtual {p2, v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 318
    add-int/lit8 v1, p3, 0x1

    const-string v3, " C"

    const-string v4, " Q"

    const-string v5, " G"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 320
    add-int/lit8 v0, p3, 0x3

    goto/16 :goto_0

    .line 321
    :cond_a
    add-int/lit8 v4, p3, 0x1

    const-string v6, "C"

    const-string v7, "K"

    const-string v8, "Q"

    move-object v3, p1

    move v5, v9

    invoke-static/range {v3 .. v8}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p3, 0x1

    const-string v1, "CE"

    const-string v3, "CI"

    invoke-static {p1, v0, v2, v1, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 323
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 325
    :cond_b
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0
.end method

.method private handleCC(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 338
    add-int/lit8 v1, p3, 0x2

    const-string v3, "I"

    const-string v4, "E"

    const-string v5, "H"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    const-string v3, "HU"

    invoke-static {p1, v0, v1, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 341
    if-ne p3, v2, :cond_0

    sub-int v0, p3, v2

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    :cond_0
    sub-int v0, p3, v2

    const/4 v1, 0x5

    const-string v2, "UCCEE"

    const-string v3, "UCCES"

    invoke-static {p1, v0, v1, v2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    :cond_1
    const-string v0, "KS"

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 349
    :goto_0
    add-int/lit8 v0, p3, 0x3

    .line 355
    :goto_1
    return v0

    .line 347
    :cond_2
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 351
    :cond_3
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 352
    add-int/lit8 v0, p3, 0x2

    goto :goto_1
.end method

.method private handleCH(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x58

    const/16 v3, 0x4b

    .line 364
    if-lez p3, :cond_0

    const/4 v0, 0x4

    const-string v1, "CHAE"

    invoke-static {p1, p3, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p2, v3, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 366
    add-int/lit8 v0, p3, 0x2

    .line 385
    :goto_0
    return v0

    .line 367
    :cond_0
    invoke-direct {p0, p1, p3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {p2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 370
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 371
    :cond_1
    invoke-direct {p0, p1, p3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    invoke-virtual {p2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 374
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 376
    :cond_2
    if-lez p3, :cond_4

    .line 377
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "MC"

    invoke-static {p1, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    invoke-virtual {p2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 385
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 380
    :cond_3
    invoke-virtual {p2, v4, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 383
    :cond_4
    invoke-virtual {p2, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1
.end method

.method private handleD(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x54

    const/4 v2, 0x2

    .line 395
    const-string v0, "DG"

    invoke-static {p1, p3, v2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    add-int/lit8 v1, p3, 0x2

    const/4 v2, 0x1

    const-string v3, "I"

    const-string v4, "E"

    const-string v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 399
    add-int/lit8 v0, p3, 0x3

    .line 412
    :goto_0
    return v0

    .line 402
    :cond_0
    const-string v0, "TK"

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 403
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 405
    :cond_1
    const-string v0, "DT"

    const-string v1, "DD"

    invoke-static {p1, p3, v2, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {p2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 407
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {p2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 410
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private handleG(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 423
    invoke-direct {p0, p1, p2, p3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleGH(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 468
    :goto_0
    return v0

    .line 424
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_3

    .line 425
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 426
    const-string v0, "KN"

    const-string v1, "N"

    invoke-virtual {p2, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 427
    :cond_1
    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    const-string v2, "EY"

    invoke-static {p1, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_2

    if-nez p4, :cond_2

    .line 429
    const-string v0, "N"

    const-string v1, "KN"

    invoke-virtual {p2, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 431
    :cond_2
    const-string v0, "KN"

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 434
    :cond_3
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string v2, "LI"

    invoke-static {p1, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 435
    const-string v0, "KL"

    const-string v1, "L"

    invoke-virtual {p2, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 437
    :cond_4
    if-nez p3, :cond_6

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_5

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    sget-object v2, Lking/org/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 439
    :cond_5
    const/16 v0, 0x4b

    const/16 v1, 0x4a

    invoke-virtual {p2, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 440
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 441
    :cond_6
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string v2, "ER"

    invoke-static {p1, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_8

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x6

    const-string v3, "DANGER"

    const-string v4, "RANGER"

    const-string v5, "MANGER"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    sub-int v0, p3, v0

    const/4 v1, 0x1

    const-string v2, "E"

    const-string v3, "I"

    invoke-static {p1, v0, v1, v2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    sub-int v0, p3, v0

    const/4 v1, 0x3

    const-string v2, "RGY"

    const-string v3, "OGY"

    invoke-static {p1, v0, v1, v2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 447
    const/16 v0, 0x4b

    const/16 v1, 0x4a

    invoke-virtual {p2, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 448
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 449
    :cond_8
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    const-string v3, "E"

    const-string v4, "I"

    const-string v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    sub-int v0, p3, v0

    const/4 v1, 0x4

    const-string v2, "AGGI"

    const-string v3, "OGGI"

    invoke-static {p1, v0, v1, v2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 452
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string v2, "VAN "

    const-string v3, "VON "

    invoke-static {p1, v0, v1, v2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "SCH"

    invoke-static {p1, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string v2, "ET"

    invoke-static {p1, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 454
    :cond_a
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 460
    :goto_2
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 455
    :cond_b
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    const-string v2, "IER"

    invoke-static {p1, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 456
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 458
    :cond_c
    const/16 v0, 0x4a

    const/16 v1, 0x4b

    invoke-virtual {p2, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 461
    :cond_d
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_e

    .line 462
    add-int/lit8 v0, p3, 0x2

    .line 463
    const/16 v1, 0x4b

    invoke-virtual {p2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0

    .line 465
    :cond_e
    add-int/lit8 v0, p3, 0x1

    .line 466
    const/16 v1, 0x4b

    invoke-virtual {p2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0
.end method

.method private handleGH(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x49

    const/16 v8, 0x4b

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 477
    if-lez p3, :cond_1

    sub-int v0, p3, v2

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    invoke-virtual {p2, v8}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 500
    :cond_0
    :goto_0
    add-int/lit8 v0, p3, 0x2

    .line 502
    :goto_1
    return v0

    .line 480
    :cond_1
    if-nez p3, :cond_3

    .line 481
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v9, :cond_2

    .line 482
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 486
    :goto_2
    add-int/lit8 v0, p3, 0x2

    goto :goto_1

    .line 484
    :cond_2
    invoke-virtual {p2, v8}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 487
    :cond_3
    if-le p3, v2, :cond_4

    sub-int v1, p3, v6

    const-string v3, "B"

    const-string v4, "H"

    const-string v5, "D"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    if-le p3, v6, :cond_5

    sub-int v1, p3, v7

    const-string v3, "B"

    const-string v4, "H"

    const-string v5, "D"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    if-le p3, v7, :cond_7

    const/4 v0, 0x4

    sub-int v0, p3, v0

    const-string v1, "B"

    const-string v3, "H"

    invoke-static {p1, v0, v2, v1, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 491
    :cond_6
    add-int/lit8 v0, p3, 0x2

    goto :goto_1

    .line 493
    :cond_7
    if-le p3, v6, :cond_8

    sub-int v0, p3, v2

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_8

    sub-int v1, p3, v7

    const-string v3, "C"

    const-string v4, "G"

    const-string v5, "L"

    const-string v6, "R"

    const-string v7, "T"

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 496
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 497
    :cond_8
    if-lez p3, :cond_0

    sub-int v0, p3, v2

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-eq v0, v9, :cond_0

    .line 498
    invoke-virtual {p2, v8}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0
.end method

.method private handleH(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    sub-int v0, p3, v0

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    const/16 v0, 0x48

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 515
    add-int/lit8 v0, p3, 0x2

    .line 520
    :goto_0
    return v0

    .line 518
    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private handleJ(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x48

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/16 v6, 0x4a

    .line 528
    const-string v0, "JOSE"

    invoke-static {p1, p3, v3, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SAN "

    invoke-static {p1, v5, v3, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 530
    :cond_0
    if-nez p3, :cond_1

    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v3, :cond_2

    const-string v0, "SAN "

    invoke-static {p1, v5, v3, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    :cond_2
    invoke-virtual {p2, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 536
    :goto_0
    add-int/lit8 v0, p3, 0x1

    .line 555
    :goto_1
    return v0

    .line 534
    :cond_3
    invoke-virtual {p2, v6, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 538
    :cond_4
    if-nez p3, :cond_6

    const-string v0, "JOSE"

    invoke-static {p1, p3, v3, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 539
    const/16 v0, 0x41

    invoke-virtual {p2, v6, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 549
    :cond_5
    :goto_2
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v6, :cond_a

    .line 550
    add-int/lit8 v0, p3, 0x2

    goto :goto_1

    .line 540
    :cond_6
    sub-int v0, p3, v2

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p4, :cond_8

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_7

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_8

    .line 542
    :cond_7
    invoke-virtual {p2, v6, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 543
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p3, v0, :cond_9

    .line 544
    const/16 v0, 0x20

    invoke-virtual {p2, v6, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 545
    :cond_9
    add-int/lit8 v0, p3, 0x1

    sget-object v1, Lking/org/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sub-int v1, p3, v2

    const-string v3, "S"

    const-string v4, "K"

    const-string v5, "L"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 546
    invoke-virtual {p2, v6}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 552
    :cond_a
    add-int/lit8 v0, p3, 0x1

    goto :goto_1
.end method

.method private handleL(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x4c

    .line 564
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 565
    invoke-direct {p0, p1, p3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 570
    :goto_0
    add-int/lit8 v0, p3, 0x2

    .line 575
    :goto_1
    return v0

    .line 568
    :cond_0
    invoke-virtual {p2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 572
    :cond_1
    add-int/lit8 v0, p3, 0x1

    .line 573
    invoke-virtual {p2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1
.end method

.method private handleP(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 584
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 585
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 586
    add-int/lit8 v0, p3, 0x2

    .line 591
    :goto_0
    return v0

    .line 588
    :cond_0
    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 589
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string v2, "P"

    const-string v3, "B"

    invoke-static {p1, v0, v1, v2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private handleR(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x52

    const/4 v3, 0x2

    .line 601
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    sub-int v0, p3, v3

    const-string v1, "IE"

    invoke-static {p1, v0, v3, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    sub-int v0, p3, v0

    const-string v1, "ME"

    const-string v2, "MA"

    invoke-static {p1, v0, v3, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    invoke-virtual {p2, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 608
    :goto_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v4, :cond_1

    add-int/lit8 v0, p3, 0x2

    :goto_1
    return v0

    .line 606
    :cond_0
    invoke-virtual {p2, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 608
    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_1
.end method

.method private handleS(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/16 v9, 0x58

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/16 v7, 0x53

    .line 618
    sub-int v0, p3, v2

    const-string v1, "ISL"

    const-string v3, "YSL"

    invoke-static {p1, v0, v4, v1, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    add-int/lit8 v0, p3, 0x1

    .line 661
    :goto_0
    return v0

    .line 621
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x5

    const-string v1, "SUGAR"

    invoke-static {p1, p3, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {p2, v9, v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 624
    add-int/lit8 v0, p3, 0x1

    goto :goto_0

    .line 625
    :cond_1
    const-string v0, "SH"

    invoke-static {p1, p3, v8, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x4

    const-string v3, "HEIM"

    const-string v4, "HOEK"

    const-string v5, "HOLM"

    const-string v6, "HOLZ"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    invoke-virtual {p2, v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 633
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 631
    :cond_2
    invoke-virtual {p2, v9}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 634
    :cond_3
    const-string v0, "SIO"

    const-string v1, "SIA"

    invoke-static {p1, p3, v4, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    const-string v1, "SIAN"

    invoke-static {p1, p3, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 636
    :cond_4
    if-eqz p4, :cond_5

    .line 637
    invoke-virtual {p2, v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 641
    :goto_2
    add-int/lit8 v0, p3, 0x3

    goto :goto_0

    .line 639
    :cond_5
    invoke-virtual {p2, v7, v9}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 642
    :cond_6
    if-nez p3, :cond_7

    add-int/lit8 v1, p3, 0x1

    const-string v3, "M"

    const-string v4, "N"

    const-string v5, "L"

    const-string v6, "W"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    add-int/lit8 v0, p3, 0x1

    const-string v1, "Z"

    invoke-static {p1, v0, v2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 647
    :cond_8
    invoke-virtual {p2, v7, v9}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 648
    add-int/lit8 v0, p3, 0x1

    const-string v1, "Z"

    invoke-static {p1, v0, v2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0

    .line 649
    :cond_a
    const-string v0, "SC"

    invoke-static {p1, p3, v8, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 650
    invoke-direct {p0, p1, p2, p3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleSC(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_0

    .line 652
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p3, v0, :cond_c

    sub-int v0, p3, v8

    const-string v1, "AI"

    const-string v3, "OI"

    invoke-static {p1, v0, v8, v1, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 655
    invoke-virtual {p2, v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 659
    :goto_3
    add-int/lit8 v0, p3, 0x1

    const-string v1, "S"

    const-string v3, "Z"

    invoke-static {p1, v0, v2, v1, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 657
    :cond_c
    invoke-virtual {p2, v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_3

    .line 659
    :cond_d
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0
.end method

.method private handleSC(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x58

    const/16 v10, 0x53

    const/4 v9, 0x3

    const/4 v2, 0x2

    .line 670
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_3

    .line 672
    add-int/lit8 v1, p3, 0x3

    const-string v3, "OO"

    const-string v4, "ER"

    const-string v5, "EN"

    const-string v6, "UY"

    const-string v7, "ED"

    const-string v8, "EM"

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    add-int/lit8 v0, p3, 0x3

    const-string v1, "ER"

    const-string v3, "EN"

    invoke-static {p1, v0, v2, v1, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    const-string v0, "X"

    const-string v1, "SK"

    invoke-virtual {p2, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :goto_0
    add-int/lit8 v0, p3, 0x3

    return v0

    .line 679
    :cond_0
    const-string v0, "SK"

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, p1, v9}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, v9}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x57

    if-eq v0, v1, :cond_2

    .line 683
    invoke-virtual {p2, v11, v10}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 685
    :cond_2
    invoke-virtual {p2, v11}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 688
    :cond_3
    add-int/lit8 v1, p3, 0x2

    const/4 v2, 0x1

    const-string v3, "I"

    const-string v4, "E"

    const-string v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 689
    invoke-virtual {p2, v10}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 691
    :cond_4
    const-string v0, "SK"

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleT(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x54

    const/4 v3, 0x3

    .line 702
    const-string v0, "TION"

    invoke-static {p1, p3, v7, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 704
    add-int/lit8 v0, p3, 0x3

    .line 723
    :goto_0
    return v0

    .line 705
    :cond_0
    const-string v0, "TIA"

    const-string v1, "TCH"

    invoke-static {p1, p3, v3, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 707
    add-int/lit8 v0, p3, 0x3

    goto :goto_0

    .line 708
    :cond_1
    const-string v0, "TH"

    invoke-static {p1, p3, v6, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TTH"

    invoke-static {p1, p3, v3, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 710
    :cond_2
    add-int/lit8 v0, p3, 0x2

    const-string v1, "OM"

    const-string v2, "AM"

    invoke-static {p1, v0, v6, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "VAN "

    const-string v1, "VON "

    invoke-static {p1, v5, v7, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SCH"

    invoke-static {p1, v5, v3, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 714
    :cond_3
    invoke-virtual {p2, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 718
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 716
    :cond_4
    const/16 v0, 0x30

    invoke-virtual {p2, v0, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 720
    :cond_5
    invoke-virtual {p2, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 721
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string v2, "T"

    const-string v3, "D"

    invoke-static {p1, v0, v1, v2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_6
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private handleW(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x46

    const/16 v3, 0x41

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 732
    const-string v0, "WR"

    invoke-static {p1, p3, v2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const/16 v0, 0x52

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 735
    add-int/lit8 v0, p3, 0x2

    .line 762
    :goto_0
    return v0

    .line 737
    :cond_0
    if-nez p3, :cond_3

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WH"

    invoke-static {p1, p3, v2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 739
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    invoke-virtual {p2, v3, v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 746
    :goto_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0

    .line 744
    :cond_2
    invoke-virtual {p2, v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 747
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p3, v0, :cond_4

    sub-int v0, p3, v1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    sub-int v1, p3, v1

    const/4 v2, 0x5

    const-string v3, "EWSKI"

    const-string v4, "EWSKY"

    const-string v5, "OWSKI"

    const-string v6, "OWSKY"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "SCH"

    invoke-static {p1, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 752
    :cond_5
    invoke-virtual {p2, v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 759
    :cond_6
    add-int/lit8 v0, p3, 0x1

    goto :goto_0

    .line 754
    :cond_7
    const/4 v0, 0x4

    const-string v1, "WICZ"

    const-string v2, "WITZ"

    invoke-static {p1, p3, v0, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 756
    const-string v0, "TS"

    const-string v1, "FX"

    invoke-virtual {p2, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    add-int/lit8 v0, p3, 0x4

    goto :goto_0
.end method

.method private handleX(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 771
    if-nez p3, :cond_0

    .line 772
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 773
    add-int/lit8 v0, p3, 0x1

    .line 783
    :goto_0
    return v0

    .line 775
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p3, v0, :cond_1

    sub-int v0, p3, v5

    const-string v1, "IAU"

    const-string v2, "EAU"

    invoke-static {p1, v0, v5, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sub-int v0, p3, v4

    const-string v1, "AU"

    const-string v2, "OU"

    invoke-static {p1, v0, v4, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 779
    :cond_1
    const-string v0, "KS"

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 781
    :cond_2
    add-int/lit8 v0, p3, 0x1

    const-string v1, "C"

    const-string v2, "X"

    invoke-static {p1, v0, v3, v1, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private handleZ(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 791
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 793
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 794
    add-int/lit8 v0, p3, 0x2

    .line 803
    :goto_0
    return v0

    .line 796
    :cond_0
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x2

    const-string v3, "ZO"

    const-string v4, "ZI"

    const-string v5, "ZA"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_2

    if-lez p3, :cond_2

    const/4 v0, 0x1

    sub-int v0, p3, v0

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_2

    .line 797
    :cond_1
    const-string v0, "S"

    const-string v1, "TS"

    invoke-virtual {p2, v0, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    :goto_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 799
    :cond_2
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 801
    :cond_3
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 907
    move v0, v2

    .line 908
    :goto_0
    sget-object v1, Lking/org/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 909
    sget-object v1, Lking/org/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    const/4 v0, 0x1

    .line 914
    :goto_1
    return v0

    .line 908
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 890
    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVowel(C)Z
    .locals 2
    .parameter

    .prologue
    .line 898
    const-string v0, "AEIOUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 937
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 938
    :cond_0
    const/4 v0, 0x0

    .line 940
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x4e

    const/16 v7, 0x4b

    const/16 v6, 0x46

    .line 87
    invoke-direct {p0, p1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 92
    :cond_0
    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    move-result v1

    .line 93
    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v9

    .line 95
    :goto_1
    new-instance v3, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;

    invoke-virtual {p0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lking/org/apache/commons/codec/language/DoubleMetaphone;I)V

    .line 97
    :goto_2
    invoke-virtual {v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v9

    if-gt v2, v4, :cond_9

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 186
    goto :goto_2

    .line 93
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 105
    :sswitch_0
    invoke-direct {p0, v3, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleAEIOUY(Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v2

    goto :goto_2

    .line 108
    :sswitch_1
    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 109
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v0, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x42

    if-ne v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 113
    :sswitch_2
    const/16 v4, 0x53

    invoke-virtual {v3, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_2

    .line 117
    :sswitch_3
    invoke-direct {p0, v0, v3, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleC(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v2

    goto :goto_2

    .line 120
    :sswitch_4
    invoke-direct {p0, v0, v3, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleD(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v2

    goto :goto_2

    .line 123
    :sswitch_5
    invoke-virtual {v3, v6}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 124
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v0, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 127
    :sswitch_6
    invoke-direct {p0, v0, v3, v2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleG(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v2

    goto :goto_2

    .line 130
    :sswitch_7
    invoke-direct {p0, v0, v3, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleH(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v2

    goto :goto_2

    .line 133
    :sswitch_8
    invoke-direct {p0, v0, v3, v2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleJ(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v2

    goto :goto_2

    .line 136
    :sswitch_9
    invoke-virtual {v3, v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 137
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v0, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v7, :cond_4

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 140
    :sswitch_a
    invoke-direct {p0, v0, v3, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleL(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v2

    goto :goto_2

    .line 143
    :sswitch_b
    const/16 v4, 0x4d

    invoke-virtual {v3, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 144
    invoke-direct {p0, v0, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 147
    :sswitch_c
    invoke-virtual {v3, v8}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 148
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v0, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v8, :cond_6

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 152
    :sswitch_d
    invoke-virtual {v3, v8}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 154
    goto/16 :goto_2

    .line 156
    :sswitch_e
    invoke-direct {p0, v0, v3, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleP(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v2

    goto/16 :goto_2

    .line 159
    :sswitch_f
    invoke-virtual {v3, v7}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 160
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v0, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x51

    if-ne v4, v5, :cond_7

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 163
    :sswitch_10
    invoke-direct {p0, v0, v3, v2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleR(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v2

    goto/16 :goto_2

    .line 166
    :sswitch_11
    invoke-direct {p0, v0, v3, v2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleS(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v2

    goto/16 :goto_2

    .line 169
    :sswitch_12
    invoke-direct {p0, v0, v3, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleT(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v2

    goto/16 :goto_2

    .line 172
    :sswitch_13
    invoke-virtual {v3, v6}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 173
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v0, v4}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_8

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 176
    :sswitch_14
    invoke-direct {p0, v0, v3, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleW(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v2

    goto/16 :goto_2

    .line 179
    :sswitch_15
    invoke-direct {p0, v0, v3, v2}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleX(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v2

    goto/16 :goto_2

    .line 182
    :sswitch_16
    invoke-direct {p0, v0, v3, v2, v1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->handleZ(Ljava/lang/String;Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v2

    goto/16 :goto_2

    .line 190
    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v3}, Lking/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x42 -> :sswitch_1
        0x43 -> :sswitch_3
        0x44 -> :sswitch_4
        0x45 -> :sswitch_0
        0x46 -> :sswitch_5
        0x47 -> :sswitch_6
        0x48 -> :sswitch_7
        0x49 -> :sswitch_0
        0x4a -> :sswitch_8
        0x4b -> :sswitch_9
        0x4c -> :sswitch_a
        0x4d -> :sswitch_b
        0x4e -> :sswitch_c
        0x4f -> :sswitch_0
        0x50 -> :sswitch_e
        0x51 -> :sswitch_f
        0x52 -> :sswitch_10
        0x53 -> :sswitch_11
        0x54 -> :sswitch_12
        0x55 -> :sswitch_0
        0x56 -> :sswitch_13
        0x57 -> :sswitch_14
        0x58 -> :sswitch_15
        0x59 -> :sswitch_0
        0x5a -> :sswitch_16
        0xc7 -> :sswitch_2
        0xd1 -> :sswitch_d
    .end sparse-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 202
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lking/org/apache/commons/codec/EncoderException;

    const-string v1, "DoubleMetaphone encode parameter is not of type String"

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lking/org/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-virtual {p0, p1, p3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lking/org/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput p1, p0, Lking/org/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 263
    return-void
.end method
