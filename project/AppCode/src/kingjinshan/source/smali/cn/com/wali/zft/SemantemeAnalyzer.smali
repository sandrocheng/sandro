.class final Lcn/com/wali/zft/SemantemeAnalyzer;
.super Ljava/lang/Object;
.source "SemantemeAnalyzer.java"


# static fields
.field private static list:Ljava/util/ArrayList;


# instance fields
.field private analyzer:I

.field private dict:Ljava/io/File;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 43
    new-instance v6, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    sput-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "SSHF"

    const-string v2, ""

    const-string v3, "BASIC_SSHF"

    const/16 v4, 0x64

    const-string v5, "\u5143"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "SSYE"

    const-string v2, ""

    const-string v3, "BASIC_SSYE"

    const/16 v4, 0x64

    const-string v5, "\u5143"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "SSQF"

    const-string v2, ""

    const-string v3, "BASIC_SSQF"

    const/16 v4, 0x64

    const-string v5, "\u5143"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "CALLZL"

    const-string v2, ""

    const-string v3, "YYTC_FREE_LOCALTEL"

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "CALLYL"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "CALLSY"

    const-string v2, ""

    const-string v3, "TOTAL_TELYL"

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "LCALLZL"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "LCALLYL"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "LCALLSY"

    const-string v2, ""

    const-string v3, "YYTC_TELYL"

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTCZL"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTCYL"

    const-string v2, ""

    const-string v3, "TOTAL_GPRS_USED"

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTCSY"

    const-string v2, ""

    const-string v3, "TOTAL_GPRS_BALANCE"

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "WTCZL"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "WTCYL"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "WTCSY"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "WTTCZL"

    const-string v2, ""

    const-string v3, ""

    const/16 v4, 0x3c

    const-string v5, "\u5c0f\u65f6"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "WTTCYL"

    const-string v2, ""

    const-string v3, ""

    const/16 v4, 0x3c

    const-string v5, "\u5c0f\u65f6"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "WTTCSY"

    const-string v2, ""

    const-string v3, ""

    const/16 v4, 0x3c

    const-string v5, "\u5c0f\u65f6"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "DXZL"

    const-string v2, ""

    const-string v3, "YYTC_FREE_SMS"

    const/4 v4, 0x1

    const-string v5, "\u6761"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "DXYL"

    const-string v2, ""

    const-string v3, "YYTC_TCSYL_SMS"

    const/4 v4, 0x1

    const-string v5, "\u6761"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "DXSY"

    const-string v2, ""

    const-string v3, "YYTC_TCYL_SMS"

    const/4 v4, 0x1

    const-string v5, "\u6761"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "CXZL"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u6761"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "CXYL"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u6761"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "CXSY"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u6761"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "JFZL"

    const-string v2, ""

    const-string v3, "BASIC_CXJF"

    const/4 v4, 0x1

    const-string v5, "\u5206"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "JFSY"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "YCYE"

    const-string v2, ""

    const-string v3, "BASIC_YCYE"

    const/4 v4, 0x1

    const-string v5, "\u5143"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "SKIP"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTCINZL"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTCINSY"

    const-string v2, ""

    const-string v3, "GPRS_INPROVINCE_BALANCE"

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTCINYL"

    const-string v2, ""

    const-string v3, "GPRS_INPROVINCE_USED"

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTCOUTZL"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTCOUTSY"

    const-string v2, ""

    const-string v3, "GPRS_OUTPROVINCE_BALANCE"

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTCOUTYL"

    const-string v2, ""

    const-string v3, "GPRS_OUTPROVINCE_USED"

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTCXSZL"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTCXSSY"

    const-string v2, ""

    const-string v3, "XSGTC_GPRS_BALANCE"

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTCXSYL"

    const-string v2, ""

    const-string v3, "XSGTC_GPRS_USED"

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "RCALLZL"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "RCALLSY"

    const-string v2, ""

    const-string v3, "YYTC_TCYL_LONGTEL"

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "RCALLYL"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "BASIC_SSHF"

    const-string v2, ""

    const-string v3, ""

    const/16 v4, 0x64

    const-string v5, "\u5143"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "BASIC_SSYE"

    const-string v2, ""

    const-string v3, ""

    const/16 v4, 0x64

    const-string v5, "\u5143"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "BASIC_SSQF"

    const-string v2, ""

    const-string v3, ""

    const/16 v4, 0x64

    const-string v5, "\u5143"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "YYTC_FREE_LOCALTEL"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "TOTAL_TELYL"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "TOTAL_GPRS_USED"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "TOTAL_GPRS_BALANCE"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "YYTC_FREE_SMS"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u6761"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "YYTC_TCSYL_SMS"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u6761"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "YYTC_TCYL_SMS"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u6761"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "BASIC_CXJF"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "BASIC_YCYE"

    const-string v2, ""

    const-string v3, ""

    const/16 v4, 0x64

    const-string v5, "\u5143"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GPRS_INPROVINCE_USED"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GPRS_INPROVINCE_BALANCE"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GPRS_OUTPROVINCE_USED"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GPRS_OUTPROVINCE_BALANCE"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "XSGTC_GPRS_USED"

    const-string v2, ""

    const-string v3, ""

    const v4, 0xa89680

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "XSGTC_GPRS_BALANCE"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "YYTC_TCYL_LONGTEL"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTC_GPRS_BALANCE"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTC_GPRS_USED"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "YYTC_GPRS_BALANCE"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "YYTC_GPRS_USED"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "YYTC_TELYL"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "BASIC_SSHF_LAST_MONTH"

    const-string v2, ""

    const-string v3, ""

    const/16 v4, 0x64

    const-string v5, "\u5143"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "BASIC_CXJF_LAST_YEAR"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "BASIC_CXJF_BEFORE_LAST"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTC_GPRS_BALANCE"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "GTC_GPRS_USED"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "YYTC_GPRS_BALANCE"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "YYTC_GPRS_USED"

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x10

    const-string v5, "M"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "YYTC_TELYL"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206\u949f"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "BASIC_SSHF_LAST_MONTH"

    const-string v2, ""

    const-string v3, ""

    const/16 v4, 0x64

    const-string v5, "\u5143"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "BASIC_CXJF_LAST_YEAR"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v6, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    const-string v1, "BASIC_CXJF_BEFORE_LAST"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "\u5206"

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/wali/zft/SemantemeAnalyzer;->analyzer:I

    .line 143
    iput-object p1, p0, Lcn/com/wali/zft/SemantemeAnalyzer;->mContext:Landroid/content/Context;

    .line 144
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    sget-object v0, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    .line 150
    iget-object v2, v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->var:Ljava/lang/String;

    invoke-static {v2}, Lcn/com/wali/zft/SemantemeAnalyzer;->getReadAble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->readable:Ljava/lang/String;

    goto :goto_1

    .line 152
    :cond_2
    iput-object p2, p0, Lcn/com/wali/zft/SemantemeAnalyzer;->dict:Ljava/io/File;

    goto :goto_0
.end method

.method private native Analyse(ILjava/lang/String;)Ljava/util/ArrayList;
.end method

.method private native AnalyzerDestroy(I)V
.end method

.method private native AnalyzerInit(Ljava/lang/String;)I
.end method

.method public static native getReadAble(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getVar2Readable(Ljava/lang/String;)Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;
    .locals 3
    .parameter

    .prologue
    .line 257
    sget-object v0, Lcn/com/wali/zft/SemantemeAnalyzer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    .line 259
    iget-object v2, v0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->var:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter

    .prologue
    .line 244
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private switch_(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 218
    if-nez p1, :cond_1

    .line 241
    :cond_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 228
    check-cast p0, Ljava/lang/String;

    .line 229
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 230
    array-length v2, v1

    if-le v2, v6, :cond_2

    .line 232
    aget-object v2, v1, v5

    .line 233
    aget-object v3, v1, v5

    invoke-static {v3}, Lcn/com/wali/zft/SemantemeAnalyzer;->getVar2Readable(Ljava/lang/String;)Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    move-result-object v3

    .line 234
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->tpl:Ljava/lang/String;

    invoke-static {v4}, Lcn/com/wali/zft/SemantemeAnalyzer;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 236
    iget-object v2, v3, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->tpl:Ljava/lang/String;

    .line 238
    :cond_3
    new-instance v3, Lcn/com/wali/zft/Pair;

    aget-object v1, v1, v6

    invoke-direct {v3, v2, v1}, Lcn/com/wali/zft/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final Analyzer(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 192
    invoke-static {p1}, Lcn/com/wali/zft/SemantemeAnalyzer;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 207
    :goto_0
    return v0

    .line 196
    :cond_0
    if-nez p2, :cond_1

    move v0, v1

    .line 198
    goto :goto_0

    .line 200
    :cond_1
    iget v0, p0, Lcn/com/wali/zft/SemantemeAnalyzer;->analyzer:I

    invoke-direct {p0, v0, p1}, Lcn/com/wali/zft/SemantemeAnalyzer;->Analyse(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 201
    if-nez v0, :cond_2

    move v0, v2

    .line 203
    goto :goto_0

    .line 205
    :cond_2
    invoke-direct {p0, v0, p2}, Lcn/com/wali/zft/SemantemeAnalyzer;->switch_(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move v0, v2

    .line 207
    goto :goto_0
.end method

.method public final Init()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcn/com/wali/zft/SemantemeAnalyzer;->dict:Ljava/io/File;

    if-nez v0, :cond_0

    move v0, v1

    .line 170
    :goto_0
    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcn/com/wali/zft/SemantemeAnalyzer;->dict:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/wali/zft/SemantemeAnalyzer;->AnalyzerInit(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/com/wali/zft/SemantemeAnalyzer;->analyzer:I

    .line 166
    iget v0, p0, Lcn/com/wali/zft/SemantemeAnalyzer;->analyzer:I

    if-gtz v0, :cond_1

    move v0, v1

    .line 168
    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final Release()V
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcn/com/wali/zft/SemantemeAnalyzer;->analyzer:I

    if-lez v0, :cond_0

    .line 180
    iget v0, p0, Lcn/com/wali/zft/SemantemeAnalyzer;->analyzer:I

    invoke-direct {p0, v0}, Lcn/com/wali/zft/SemantemeAnalyzer;->AnalyzerDestroy(I)V

    .line 182
    :cond_0
    return-void
.end method
