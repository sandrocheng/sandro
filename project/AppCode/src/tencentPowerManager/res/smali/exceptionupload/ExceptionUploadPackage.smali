.class public final Lexceptionupload/ExceptionUploadPackage;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# static fields
.field private static b:Ljava/util/ArrayList;

.field private static synthetic c:Z


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lexceptionupload/ExceptionUploadPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lexceptionupload/ExceptionUploadPackage;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lexceptionupload/ExceptionUploadPackage;->a:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lexceptionupload/ExceptionUploadPackage;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lexceptionupload/ExceptionUploadPackage;->a:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lexceptionupload/ExceptionUploadPackage;->a:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :cond_0
    return-object v0

    .line 54
    :catch_0
    move-exception v1

    sget-boolean v1, Lexceptionupload/ExceptionUploadPackage;->c:Z

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
    .line 80
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 81
    iget-object v1, p0, Lexceptionupload/ExceptionUploadPackage;->a:Ljava/util/ArrayList;

    const-string v2, "list"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 82
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 40
    check-cast p1, Lexceptionupload/ExceptionUploadPackage;

    .line 42
    iget-object v0, p0, Lexceptionupload/ExceptionUploadPackage;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lexceptionupload/ExceptionUploadPackage;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 41
    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    sget-object v0, Lexceptionupload/ExceptionUploadPackage;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lexceptionupload/ExceptionUploadPackage;->b:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lexceptionupload/ExceptionUpload;

    invoke-direct {v0}, Lexceptionupload/ExceptionUpload;-><init>()V

    .line 72
    sget-object v1, Lexceptionupload/ExceptionUploadPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    sget-object v0, Lexceptionupload/ExceptionUploadPackage;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lexceptionupload/ExceptionUploadPackage;->a:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lexceptionupload/ExceptionUploadPackage;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 62
    return-void
.end method
