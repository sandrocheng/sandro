.class public final Lexceptionupload/RunInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "RunInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static synthetic f:Z


# instance fields
.field private a:F

.field private b:F

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lexceptionupload/RunInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lexceptionupload/RunInfo;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput v2, p0, Lexceptionupload/RunInfo;->a:F

    .line 23
    iput v2, p0, Lexceptionupload/RunInfo;->b:F

    .line 25
    iput-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    .line 27
    iput-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    .line 29
    iput-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    .line 83
    iget v0, p0, Lexceptionupload/RunInfo;->a:F

    iput v0, p0, Lexceptionupload/RunInfo;->a:F

    .line 84
    iget v0, p0, Lexceptionupload/RunInfo;->b:F

    iput v0, p0, Lexceptionupload/RunInfo;->b:F

    .line 85
    iget-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    iput-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    .line 86
    iget-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    iput-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    .line 87
    iget-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    iput-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    .line 88
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lexceptionupload/RunInfo;->a:F

    .line 39
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-wide p1, p0, Lexceptionupload/RunInfo;->c:J

    .line 59
    return-void
.end method

.method public final b(F)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lexceptionupload/RunInfo;->b:F

    .line 49
    return-void
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-wide p1, p0, Lexceptionupload/RunInfo;->d:J

    .line 69
    return-void
.end method

.method public final c(J)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-wide p1, p0, Lexceptionupload/RunInfo;->e:J

    .line 79
    return-void
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

    sget-boolean v1, Lexceptionupload/RunInfo;->f:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 167
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 168
    iget v1, p0, Lexceptionupload/RunInfo;->a:F

    const-string v2, "battery"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 169
    iget v1, p0, Lexceptionupload/RunInfo;->b:F

    const-string v2, "cpu"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 170
    iget-wide v1, p0, Lexceptionupload/RunInfo;->c:J

    const-string v3, "freeMem"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 171
    iget-wide v1, p0, Lexceptionupload/RunInfo;->d:J

    const-string v3, "freeStorage"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 172
    iget-wide v1, p0, Lexceptionupload/RunInfo;->e:J

    const-string v3, "freeSDCard"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 173
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
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
    check-cast p1, Lexceptionupload/RunInfo;

    .line 108
    iget v1, p0, Lexceptionupload/RunInfo;->a:F

    iget v2, p1, Lexceptionupload/RunInfo;->a:F

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget v1, p0, Lexceptionupload/RunInfo;->b:F

    iget v2, p1, Lexceptionupload/RunInfo;->b:F

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-wide v1, p0, Lexceptionupload/RunInfo;->c:J

    iget-wide v3, p1, Lexceptionupload/RunInfo;->c:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-wide v1, p0, Lexceptionupload/RunInfo;->d:J

    iget-wide v3, p1, Lexceptionupload/RunInfo;->d:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-wide v1, p0, Lexceptionupload/RunInfo;->e:J

    iget-wide v3, p1, Lexceptionupload/RunInfo;->e:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

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

    .line 153
    iget v0, p0, Lexceptionupload/RunInfo;->a:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lexceptionupload/RunInfo;->a:F

    .line 155
    iget v0, p0, Lexceptionupload/RunInfo;->b:F

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lexceptionupload/RunInfo;->b:F

    .line 157
    iget-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    .line 159
    iget-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    .line 161
    iget-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    .line 163
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lexceptionupload/RunInfo;->a:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 144
    iget v0, p0, Lexceptionupload/RunInfo;->b:F

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 145
    iget-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 146
    iget-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 147
    iget-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 148
    return-void
.end method
