.class public final Lstrategy/SecurityStrategyPackage;
.super Lcom/qq/taf/jce/JceStruct;
.source "SecurityStrategyPackage.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static synthetic e:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lstrategy/SecurityStrategyPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lstrategy/SecurityStrategyPackage;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lstrategy/SecurityStrategyPackage;->a:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lstrategy/SecurityStrategyPackage;->b:Ljava/lang/String;

    .line 25
    iput v1, p0, Lstrategy/SecurityStrategyPackage;->c:I

    .line 27
    iput v1, p0, Lstrategy/SecurityStrategyPackage;->d:I

    .line 71
    iget-object v0, p0, Lstrategy/SecurityStrategyPackage;->a:Ljava/lang/String;

    iput-object v0, p0, Lstrategy/SecurityStrategyPackage;->a:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lstrategy/SecurityStrategyPackage;->b:Ljava/lang/String;

    iput-object v0, p0, Lstrategy/SecurityStrategyPackage;->b:Ljava/lang/String;

    .line 73
    iget v0, p0, Lstrategy/SecurityStrategyPackage;->c:I

    iput v0, p0, Lstrategy/SecurityStrategyPackage;->c:I

    .line 74
    iget v0, p0, Lstrategy/SecurityStrategyPackage;->d:I

    iput v0, p0, Lstrategy/SecurityStrategyPackage;->d:I

    .line 75
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lstrategy/SecurityStrategyPackage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lstrategy/SecurityStrategyPackage;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lstrategy/SecurityStrategyPackage;->d:I

    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :cond_0
    return-object v0

    .line 121
    :catch_0
    move-exception v1

    sget-boolean v1, Lstrategy/SecurityStrategyPackage;->e:Z

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
    .line 149
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 150
    iget-object v1, p0, Lstrategy/SecurityStrategyPackage;->a:Ljava/lang/String;

    const-string v2, "encryKey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 151
    iget-object v1, p0, Lstrategy/SecurityStrategyPackage;->b:Ljava/lang/String;

    const-string v2, "encryPublicKey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 152
    iget v1, p0, Lstrategy/SecurityStrategyPackage;->c:I

    const-string v2, "encryAlgorithm"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 153
    iget v1, p0, Lstrategy/SecurityStrategyPackage;->d:I

    const-string v2, "zipAlgorithm"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 154
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    check-cast p1, Lstrategy/SecurityStrategyPackage;

    .line 94
    iget-object v1, p0, Lstrategy/SecurityStrategyPackage;->a:Ljava/lang/String;

    iget-object v2, p1, Lstrategy/SecurityStrategyPackage;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lstrategy/SecurityStrategyPackage;->b:Ljava/lang/String;

    iget-object v2, p1, Lstrategy/SecurityStrategyPackage;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget v1, p0, Lstrategy/SecurityStrategyPackage;->c:I

    iget v2, p1, Lstrategy/SecurityStrategyPackage;->c:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget v1, p0, Lstrategy/SecurityStrategyPackage;->d:I

    iget v2, p1, Lstrategy/SecurityStrategyPackage;->d:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 104
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lstrategy/SecurityStrategyPackage;->a:Ljava/lang/String;

    .line 139
    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lstrategy/SecurityStrategyPackage;->b:Ljava/lang/String;

    .line 141
    iget v0, p0, Lstrategy/SecurityStrategyPackage;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lstrategy/SecurityStrategyPackage;->c:I

    .line 143
    iget v0, p0, Lstrategy/SecurityStrategyPackage;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lstrategy/SecurityStrategyPackage;->d:I

    .line 145
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lstrategy/SecurityStrategyPackage;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 129
    iget-object v0, p0, Lstrategy/SecurityStrategyPackage;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 130
    iget v0, p0, Lstrategy/SecurityStrategyPackage;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 131
    iget v0, p0, Lstrategy/SecurityStrategyPackage;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 132
    return-void
.end method
