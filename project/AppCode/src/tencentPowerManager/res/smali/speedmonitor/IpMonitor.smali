.class public final Lspeedmonitor/IpMonitor;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


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

    .line 88
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lspeedmonitor/IpMonitor;->d:I

    .line 24
    iput-wide v1, p0, Lspeedmonitor/IpMonitor;->e:J

    .line 26
    iput-wide v1, p0, Lspeedmonitor/IpMonitor;->f:J

    .line 90
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    .line 93
    iget v0, p0, Lspeedmonitor/IpMonitor;->d:I

    iput v0, p0, Lspeedmonitor/IpMonitor;->d:I

    .line 94
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->e:J

    iput-wide v0, p0, Lspeedmonitor/IpMonitor;->e:J

    .line 95
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->f:J

    iput-wide v0, p0, Lspeedmonitor/IpMonitor;->f:J

    .line 96
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 125
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :cond_0
    return-object v0

    .line 129
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
    .line 163
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 164
    iget-object v1, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    const-string v2, "apn"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 165
    iget-object v1, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    const-string v2, "srcIp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 166
    iget-object v1, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    const-string v2, "destIp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 167
    iget v1, p0, Lspeedmonitor/IpMonitor;->d:I

    const-string v2, "destPort"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 168
    iget-wide v1, p0, Lspeedmonitor/IpMonitor;->e:J

    const-string v3, "connectTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 169
    iget-wide v1, p0, Lspeedmonitor/IpMonitor;->f:J

    const-string v3, "testTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 170
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 110
    check-cast p1, Lspeedmonitor/IpMonitor;

    .line 112
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    iget-object v1, p1, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    iget-object v1, p1, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    iget-object v1, p1, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Lspeedmonitor/IpMonitor;->d:I

    iget v1, p1, Lspeedmonitor/IpMonitor;->d:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->e:J

    iget-wide v2, p1, Lspeedmonitor/IpMonitor;->e:J

    invoke-static {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->f:J

    iget-wide v2, p1, Lspeedmonitor/IpMonitor;->f:J

    invoke-static {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 111
    goto :goto_0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    .line 149
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    .line 151
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    .line 153
    iget v0, p0, Lspeedmonitor/IpMonitor;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lspeedmonitor/IpMonitor;->d:I

    .line 155
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lspeedmonitor/IpMonitor;->e:J

    .line 157
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->f:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lspeedmonitor/IpMonitor;->f:J

    .line 159
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 137
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 138
    iget-object v0, p0, Lspeedmonitor/IpMonitor;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 139
    iget v0, p0, Lspeedmonitor/IpMonitor;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 140
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 141
    iget-wide v0, p0, Lspeedmonitor/IpMonitor;->f:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 142
    return-void
.end method
