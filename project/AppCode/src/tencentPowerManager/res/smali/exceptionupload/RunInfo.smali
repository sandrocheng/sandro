.class public final Lexceptionupload/RunInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


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

    .line 76
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 16
    iput v2, p0, Lexceptionupload/RunInfo;->a:F

    .line 18
    iput v2, p0, Lexceptionupload/RunInfo;->b:F

    .line 20
    iput-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    .line 22
    iput-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    .line 24
    iput-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    .line 78
    iget v0, p0, Lexceptionupload/RunInfo;->a:F

    iput v0, p0, Lexceptionupload/RunInfo;->a:F

    .line 79
    iget v0, p0, Lexceptionupload/RunInfo;->b:F

    iput v0, p0, Lexceptionupload/RunInfo;->b:F

    .line 80
    iget-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    iput-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    .line 81
    iget-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    iput-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    .line 82
    iget-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    iput-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    .line 83
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lexceptionupload/RunInfo;->a:F

    .line 34
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-wide p1, p0, Lexceptionupload/RunInfo;->c:J

    .line 54
    return-void
.end method

.method public final b(F)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lexceptionupload/RunInfo;->b:F

    .line 44
    return-void
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-wide p1, p0, Lexceptionupload/RunInfo;->d:J

    .line 64
    return-void
.end method

.method public final c(J)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-wide p1, p0, Lexceptionupload/RunInfo;->e:J

    .line 74
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 110
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :cond_0
    return-object v0

    .line 114
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
    .line 145
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 146
    iget v1, p0, Lexceptionupload/RunInfo;->a:F

    const-string v2, "battery"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 147
    iget v1, p0, Lexceptionupload/RunInfo;->b:F

    const-string v2, "cpu"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 148
    iget-wide v1, p0, Lexceptionupload/RunInfo;->c:J

    const-string v3, "freeMem"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 149
    iget-wide v1, p0, Lexceptionupload/RunInfo;->d:J

    const-string v3, "freeStorage"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 150
    iget-wide v1, p0, Lexceptionupload/RunInfo;->e:J

    const-string v3, "freeSDCard"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 151
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 96
    check-cast p1, Lexceptionupload/RunInfo;

    .line 98
    iget v0, p0, Lexceptionupload/RunInfo;->a:F

    iget v1, p1, Lexceptionupload/RunInfo;->a:F

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget v0, p0, Lexceptionupload/RunInfo;->b:F

    iget v1, p1, Lexceptionupload/RunInfo;->b:F

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    iget-wide v2, p1, Lexceptionupload/RunInfo;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    iget-wide v2, p1, Lexceptionupload/RunInfo;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    iget-wide v2, p1, Lexceptionupload/RunInfo;->e:J

    invoke-static {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 97
    goto :goto_0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 131
    iget v0, p0, Lexceptionupload/RunInfo;->a:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lexceptionupload/RunInfo;->a:F

    .line 133
    iget v0, p0, Lexceptionupload/RunInfo;->b:F

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lexceptionupload/RunInfo;->b:F

    .line 135
    iget-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    .line 137
    iget-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    .line 139
    iget-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    .line 141
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 121
    iget v0, p0, Lexceptionupload/RunInfo;->a:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 122
    iget v0, p0, Lexceptionupload/RunInfo;->b:F

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 123
    iget-wide v0, p0, Lexceptionupload/RunInfo;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 124
    iget-wide v0, p0, Lexceptionupload/RunInfo;->d:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 125
    iget-wide v0, p0, Lexceptionupload/RunInfo;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 126
    return-void
.end method
