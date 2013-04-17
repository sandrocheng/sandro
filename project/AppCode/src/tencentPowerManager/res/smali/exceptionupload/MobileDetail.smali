.class public final Lexceptionupload/MobileDetail;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# static fields
.field private static synthetic c:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lexceptionupload/MobileDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lexceptionupload/MobileDetail;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/MobileDetail;->a:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/MobileDetail;->b:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lexceptionupload/MobileDetail;->a:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/MobileDetail;->a:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lexceptionupload/MobileDetail;->b:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/MobileDetail;->b:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lexceptionupload/MobileDetail;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :cond_0
    return-object v0

    .line 69
    :catch_0
    move-exception v1

    sget-boolean v1, Lexceptionupload/MobileDetail;->c:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 95
    iget-object v1, p0, Lexceptionupload/MobileDetail;->a:Ljava/lang/String;

    const-string v2, "symbol"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 96
    iget-object v1, p0, Lexceptionupload/MobileDetail;->b:Ljava/lang/String;

    const-string v2, "other"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 97
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 54
    check-cast p1, Lexceptionupload/MobileDetail;

    .line 56
    iget-object v0, p0, Lexceptionupload/MobileDetail;->a:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/MobileDetail;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lexceptionupload/MobileDetail;->b:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/MobileDetail;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 55
    goto :goto_0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/MobileDetail;->a:Ljava/lang/String;

    .line 88
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/MobileDetail;->b:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lexceptionupload/MobileDetail;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 77
    iget-object v0, p0, Lexceptionupload/MobileDetail;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lexceptionupload/MobileDetail;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 81
    :cond_0
    return-void
.end method
