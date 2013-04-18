.class Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;
.super Ljava/lang/Object;
.source "SemantemeAnalyzer.java"


# instance fields
.field rate:I

.field readable:Ljava/lang/String;

.field tpl:Ljava/lang/String;

.field unit:Ljava/lang/String;

.field var:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->rate:I

    .line 35
    iput-object p1, p0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->var:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->readable:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->tpl:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->rate:I

    .line 39
    iput-object p5, p0, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->unit:Ljava/lang/String;

    .line 40
    return-void
.end method
