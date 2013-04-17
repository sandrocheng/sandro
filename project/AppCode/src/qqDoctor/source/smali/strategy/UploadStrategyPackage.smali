.class public final Lstrategy/UploadStrategyPackage;
.super Lcom/qq/taf/jce/JceStruct;
.source "UploadStrategyPackage.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static f:Ljava/util/Map;

.field private static synthetic g:Z


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lstrategy/UploadStrategyPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lstrategy/UploadStrategyPackage;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput v0, p0, Lstrategy/UploadStrategyPackage;->a:I

    .line 23
    iput v0, p0, Lstrategy/UploadStrategyPackage;->b:I

    .line 25
    iput v0, p0, Lstrategy/UploadStrategyPackage;->c:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lstrategy/UploadStrategyPackage;->d:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lstrategy/UploadStrategyPackage;->e:Ljava/util/Map;

    .line 83
    iget v0, p0, Lstrategy/UploadStrategyPackage;->a:I

    iput v0, p0, Lstrategy/UploadStrategyPackage;->a:I

    .line 84
    iget v0, p0, Lstrategy/UploadStrategyPackage;->b:I

    iput v0, p0, Lstrategy/UploadStrategyPackage;->b:I

    .line 85
    iget v0, p0, Lstrategy/UploadStrategyPackage;->c:I

    iput v0, p0, Lstrategy/UploadStrategyPackage;->c:I

    .line 86
    iget-object v0, p0, Lstrategy/UploadStrategyPackage;->d:Ljava/lang/String;

    iput-object v0, p0, Lstrategy/UploadStrategyPackage;->d:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lstrategy/UploadStrategyPackage;->e:Ljava/util/Map;

    iput-object v0, p0, Lstrategy/UploadStrategyPackage;->e:Ljava/util/Map;

    .line 88
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lstrategy/UploadStrategyPackage;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lstrategy/UploadStrategyPackage;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lstrategy/UploadStrategyPackage;->c:I

    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 132
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :cond_0
    return-object v0

    .line 136
    :catch_0
    move-exception v1

    sget-boolean v1, Lstrategy/UploadStrategyPackage;->g:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lstrategy/UploadStrategyPackage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 178
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 179
    iget v1, p0, Lstrategy/UploadStrategyPackage;->a:I

    const-string v2, "testCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 180
    iget v1, p0, Lstrategy/UploadStrategyPackage;->b:I

    const-string v2, "maxPackageSize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 181
    iget v1, p0, Lstrategy/UploadStrategyPackage;->c:I

    const-string v2, "uploadStrategy"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 182
    iget-object v1, p0, Lstrategy/UploadStrategyPackage;->d:Ljava/lang/String;

    const-string v2, "uploadServer"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 183
    iget-object v1, p0, Lstrategy/UploadStrategyPackage;->e:Ljava/util/Map;

    const-string v2, "moduleStrategy"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Map;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 184
    return-void
.end method

.method public final e()Ljava/util/Map;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lstrategy/UploadStrategyPackage;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    check-cast p1, Lstrategy/UploadStrategyPackage;

    .line 108
    iget v1, p0, Lstrategy/UploadStrategyPackage;->a:I

    iget v2, p1, Lstrategy/UploadStrategyPackage;->a:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget v1, p0, Lstrategy/UploadStrategyPackage;->b:I

    iget v2, p1, Lstrategy/UploadStrategyPackage;->b:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget v1, p0, Lstrategy/UploadStrategyPackage;->c:I

    iget v2, p1, Lstrategy/UploadStrategyPackage;->c:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lstrategy/UploadStrategyPackage;->d:Ljava/lang/String;

    iget-object v2, p1, Lstrategy/UploadStrategyPackage;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lstrategy/UploadStrategyPackage;->e:Ljava/util/Map;

    iget-object v2, p1, Lstrategy/UploadStrategyPackage;->e:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 119
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    iget v0, p0, Lstrategy/UploadStrategyPackage;->a:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lstrategy/UploadStrategyPackage;->a:I

    .line 159
    iget v0, p0, Lstrategy/UploadStrategyPackage;->b:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lstrategy/UploadStrategyPackage;->b:I

    .line 161
    iget v0, p0, Lstrategy/UploadStrategyPackage;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lstrategy/UploadStrategyPackage;->c:I

    .line 163
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lstrategy/UploadStrategyPackage;->d:Ljava/lang/String;

    .line 165
    sget-object v0, Lstrategy/UploadStrategyPackage;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lstrategy/UploadStrategyPackage;->f:Ljava/util/Map;

    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 169
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 170
    sget-object v2, Lstrategy/UploadStrategyPackage;->f:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    sget-object v0, Lstrategy/UploadStrategyPackage;->f:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lstrategy/UploadStrategyPackage;->e:Ljava/util/Map;

    .line 174
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lstrategy/UploadStrategyPackage;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 144
    iget v0, p0, Lstrategy/UploadStrategyPackage;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 145
    iget v0, p0, Lstrategy/UploadStrategyPackage;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 146
    iget-object v0, p0, Lstrategy/UploadStrategyPackage;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lstrategy/UploadStrategyPackage;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 150
    :cond_0
    iget-object v0, p0, Lstrategy/UploadStrategyPackage;->e:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 151
    return-void
.end method
