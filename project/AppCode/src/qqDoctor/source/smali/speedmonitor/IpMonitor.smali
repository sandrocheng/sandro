.class public final Lspeedmonitor/IpMonitor;
.super Lcom/qq/taf/jce/JceStruct;
.source "IpMonitor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static synthetic g:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lspeedmonitor/IpMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lspeedmonitor/IpMonitor;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lspeedmonitor/IpMonitor;->d:I

    .line 29
    iput-wide v1, p0, Lspeedmonitor/IpMonitor;->e:J

    .line 31
    iput-wide v1, p0, Lspeedmonitor/IpMonitor;->f:J

    .line 95
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    .line 98
    iget v0, p0, Lspeedmonitor/IpMonitor;->d:I

    iput v0, p0, Lspeedmonitor/IpMonitor;->d:I

    .line 99
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->e:J

    iput-wide v0, p0, Lspeedmonitor/IpMonitor;->e:J

    .line 100
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->f:J

    iput-wide v0, p0, Lspeedmonitor/IpMonitor;->f:J

    .line 101
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput p1, p0, Lspeedmonitor/IpMonitor;->d:I

    .line 71
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-wide p1, p0, Lspeedmonitor/IpMonitor;->e:J

    .line 81
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-wide p1, p0, Lspeedmonitor/IpMonitor;->f:J

    .line 91
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :cond_0
    return-object v0

    .line 151
    :catch_0
    move-exception v1

    sget-boolean v1, Lspeedmonitor/IpMonitor;->g:Z

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
    .line 185
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 186
    iget-object v1, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    const-string v2, "apn"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 187
    iget-object v1, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    const-string v2, "srcIp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 188
    iget-object v1, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    const-string v2, "destIp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 189
    iget v1, p0, Lspeedmonitor/IpMonitor;->d:I

    const-string v2, "destPort"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 190
    iget-wide v1, p0, Lspeedmonitor/IpMonitor;->e:J

    const-string v3, "connectTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 191
    iget-wide v1, p0, Lspeedmonitor/IpMonitor;->f:J

    const-string v3, "testTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 192
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    check-cast p1, Lspeedmonitor/IpMonitor;

    .line 122
    iget-object v1, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    iget-object v2, p1, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    iget-object v2, p1, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    iget-object v2, p1, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget v1, p0, Lspeedmonitor/IpMonitor;->d:I

    iget v2, p1, Lspeedmonitor/IpMonitor;->d:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-wide v1, p0, Lspeedmonitor/IpMonitor;->e:J

    iget-wide v3, p1, Lspeedmonitor/IpMonitor;->e:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-wide v1, p0, Lspeedmonitor/IpMonitor;->f:J

    iget-wide v3, p1, Lspeedmonitor/IpMonitor;->f:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 134
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    .line 171
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    .line 173
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    .line 175
    iget v0, p0, Lspeedmonitor/IpMonitor;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lspeedmonitor/IpMonitor;->d:I

    .line 177
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lspeedmonitor/IpMonitor;->e:J

    .line 179
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->f:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lspeedmonitor/IpMonitor;->f:J

    .line 181
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 159
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 160
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 161
    iget v0, p0, Lspeedmonitor/IpMonitor;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 162
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 163
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->f:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 164
    return-void
.end method
