.class public final Lspeedmonitor/a;
.super Lcom/qq/taf/jce/JceStruct;
.source "DomainMonitor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static synthetic l:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lspeedmonitor/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lspeedmonitor/a;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lspeedmonitor/a;->a:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lspeedmonitor/a;->b:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lspeedmonitor/a;->c:Ljava/lang/String;

    .line 27
    iput-wide v1, p0, Lspeedmonitor/a;->d:J

    .line 29
    iput-wide v1, p0, Lspeedmonitor/a;->e:J

    .line 31
    iput-wide v1, p0, Lspeedmonitor/a;->f:J

    .line 33
    iput-wide v1, p0, Lspeedmonitor/a;->g:J

    .line 35
    iput-wide v1, p0, Lspeedmonitor/a;->h:J

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lspeedmonitor/a;->i:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lspeedmonitor/a;->j:Ljava/lang/String;

    .line 41
    iput-wide v1, p0, Lspeedmonitor/a;->k:J

    .line 155
    iget-object v0, p0, Lspeedmonitor/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lspeedmonitor/a;->a:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lspeedmonitor/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lspeedmonitor/a;->b:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lspeedmonitor/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lspeedmonitor/a;->c:Ljava/lang/String;

    .line 158
    iget-wide v0, p0, Lspeedmonitor/a;->d:J

    iput-wide v0, p0, Lspeedmonitor/a;->d:J

    .line 159
    iget-wide v0, p0, Lspeedmonitor/a;->e:J

    iput-wide v0, p0, Lspeedmonitor/a;->e:J

    .line 160
    iget-wide v0, p0, Lspeedmonitor/a;->f:J

    iput-wide v0, p0, Lspeedmonitor/a;->f:J

    .line 161
    iget-wide v0, p0, Lspeedmonitor/a;->g:J

    iput-wide v0, p0, Lspeedmonitor/a;->g:J

    .line 162
    iget-wide v0, p0, Lspeedmonitor/a;->h:J

    iput-wide v0, p0, Lspeedmonitor/a;->h:J

    .line 163
    iget-object v0, p0, Lspeedmonitor/a;->i:Ljava/lang/String;

    iput-object v0, p0, Lspeedmonitor/a;->i:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lspeedmonitor/a;->j:Ljava/lang/String;

    iput-object v0, p0, Lspeedmonitor/a;->j:Ljava/lang/String;

    .line 165
    iget-wide v0, p0, Lspeedmonitor/a;->k:J

    iput-wide v0, p0, Lspeedmonitor/a;->k:J

    .line 166
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-wide p1, p0, Lspeedmonitor/a;->d:J

    .line 81
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lspeedmonitor/a;->a:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-wide p1, p0, Lspeedmonitor/a;->e:J

    .line 91
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lspeedmonitor/a;->b:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public final c(J)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-wide p1, p0, Lspeedmonitor/a;->f:J

    .line 101
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lspeedmonitor/a;->c:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 222
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    :cond_0
    return-object v0

    .line 226
    :catch_0
    move-exception v1

    sget-boolean v1, Lspeedmonitor/a;->l:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final d(J)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-wide p1, p0, Lspeedmonitor/a;->g:J

    .line 111
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lspeedmonitor/a;->i:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 281
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 282
    iget-object v1, p0, Lspeedmonitor/a;->a:Ljava/lang/String;

    const-string v2, "apn"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 283
    iget-object v1, p0, Lspeedmonitor/a;->b:Ljava/lang/String;

    const-string v2, "srcIp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 284
    iget-object v1, p0, Lspeedmonitor/a;->c:Ljava/lang/String;

    const-string v2, "destDomain"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 285
    iget-wide v1, p0, Lspeedmonitor/a;->d:J

    const-string v3, "dnsTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 286
    iget-wide v1, p0, Lspeedmonitor/a;->e:J

    const-string v3, "tcpTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 287
    iget-wide v1, p0, Lspeedmonitor/a;->f:J

    const-string v3, "requestSendTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 288
    iget-wide v1, p0, Lspeedmonitor/a;->g:J

    const-string v3, "netWaitTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 289
    iget-wide v1, p0, Lspeedmonitor/a;->h:J

    const-string v3, "responseRecvReadTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 290
    iget-object v1, p0, Lspeedmonitor/a;->i:Ljava/lang/String;

    const-string v2, "targetIp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 291
    iget-object v1, p0, Lspeedmonitor/a;->j:Ljava/lang/String;

    const-string v2, "dnsServerIp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 292
    iget-wide v1, p0, Lspeedmonitor/a;->k:J

    const-string v3, "testTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 293
    return-void
.end method

.method public final e(J)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-wide p1, p0, Lspeedmonitor/a;->h:J

    .line 121
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lspeedmonitor/a;->j:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 185
    if-nez p1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    check-cast p1, Lspeedmonitor/a;

    .line 192
    iget-object v1, p0, Lspeedmonitor/a;->a:Ljava/lang/String;

    iget-object v2, p1, Lspeedmonitor/a;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lspeedmonitor/a;->b:Ljava/lang/String;

    iget-object v2, p1, Lspeedmonitor/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lspeedmonitor/a;->c:Ljava/lang/String;

    iget-object v2, p1, Lspeedmonitor/a;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-wide v1, p0, Lspeedmonitor/a;->d:J

    iget-wide v3, p1, Lspeedmonitor/a;->d:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-wide v1, p0, Lspeedmonitor/a;->e:J

    iget-wide v3, p1, Lspeedmonitor/a;->e:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-wide v1, p0, Lspeedmonitor/a;->f:J

    iget-wide v3, p1, Lspeedmonitor/a;->f:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-wide v1, p0, Lspeedmonitor/a;->g:J

    iget-wide v3, p1, Lspeedmonitor/a;->g:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-wide v1, p0, Lspeedmonitor/a;->h:J

    iget-wide v3, p1, Lspeedmonitor/a;->h:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lspeedmonitor/a;->i:Ljava/lang/String;

    iget-object v2, p1, Lspeedmonitor/a;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lspeedmonitor/a;->j:Ljava/lang/String;

    iget-object v2, p1, Lspeedmonitor/a;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-wide v1, p0, Lspeedmonitor/a;->k:J

    iget-wide v3, p1, Lspeedmonitor/a;->k:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f(J)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-wide p1, p0, Lspeedmonitor/a;->k:J

    .line 151
    return-void
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 209
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 255
    invoke-virtual {p1, v4, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lspeedmonitor/a;->a:Ljava/lang/String;

    .line 257
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lspeedmonitor/a;->b:Ljava/lang/String;

    .line 259
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lspeedmonitor/a;->c:Ljava/lang/String;

    .line 261
    iget-wide v0, p0, Lspeedmonitor/a;->d:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lspeedmonitor/a;->d:J

    .line 263
    iget-wide v0, p0, Lspeedmonitor/a;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lspeedmonitor/a;->e:J

    .line 265
    iget-wide v0, p0, Lspeedmonitor/a;->f:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lspeedmonitor/a;->f:J

    .line 267
    iget-wide v0, p0, Lspeedmonitor/a;->g:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lspeedmonitor/a;->g:J

    .line 269
    iget-wide v0, p0, Lspeedmonitor/a;->h:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lspeedmonitor/a;->h:J

    .line 271
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lspeedmonitor/a;->i:Ljava/lang/String;

    .line 273
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lspeedmonitor/a;->j:Ljava/lang/String;

    .line 275
    iget-wide v0, p0, Lspeedmonitor/a;->k:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lspeedmonitor/a;->k:J

    .line 277
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lspeedmonitor/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 234
    iget-object v0, p0, Lspeedmonitor/a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 235
    iget-object v0, p0, Lspeedmonitor/a;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 236
    iget-wide v0, p0, Lspeedmonitor/a;->d:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 237
    iget-wide v0, p0, Lspeedmonitor/a;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 238
    iget-wide v0, p0, Lspeedmonitor/a;->f:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 239
    iget-wide v0, p0, Lspeedmonitor/a;->g:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 240
    iget-wide v0, p0, Lspeedmonitor/a;->h:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 241
    iget-object v0, p0, Lspeedmonitor/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lspeedmonitor/a;->i:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 245
    :cond_0
    iget-object v0, p0, Lspeedmonitor/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lspeedmonitor/a;->j:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 249
    :cond_1
    iget-wide v0, p0, Lspeedmonitor/a;->k:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 250
    return-void
.end method
