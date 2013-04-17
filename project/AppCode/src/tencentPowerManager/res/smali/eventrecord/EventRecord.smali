.class public final Leventrecord/EventRecord;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# static fields
.field private static synthetic i:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Leventrecord/EventRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Leventrecord/EventRecord;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 112
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    .line 24
    iput-wide v1, p0, Leventrecord/EventRecord;->e:J

    .line 26
    iput-wide v1, p0, Leventrecord/EventRecord;->f:J

    .line 28
    const-string v0, ""

    iput-object v0, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    .line 30
    iput-wide v1, p0, Leventrecord/EventRecord;->h:J

    .line 114
    iget-object v0, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    iput-object v0, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    iput-object v0, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    iput-object v0, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    .line 117
    iget-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    iput-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    .line 118
    iget-wide v0, p0, Leventrecord/EventRecord;->e:J

    iput-wide v0, p0, Leventrecord/EventRecord;->e:J

    .line 119
    iget-wide v0, p0, Leventrecord/EventRecord;->f:J

    iput-wide v0, p0, Leventrecord/EventRecord;->f:J

    .line 120
    iget-object v0, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    iput-object v0, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    .line 121
    iget-wide v0, p0, Leventrecord/EventRecord;->h:J

    iput-wide v0, p0, Leventrecord/EventRecord;->h:J

    .line 122
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 155
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :cond_0
    return-object v0

    .line 159
    :catch_0
    move-exception v1

    sget-boolean v1, Leventrecord/EventRecord;->i:Z

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
    .line 199
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 200
    iget-object v1, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    const-string v2, "apn"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 201
    iget-object v1, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    const-string v2, "srcIp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 202
    iget-object v1, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    const-string v2, "eventName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 203
    iget-boolean v1, p0, Leventrecord/EventRecord;->d:Z

    const-string v2, "eventResult"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 204
    iget-wide v1, p0, Leventrecord/EventRecord;->e:J

    const-string v3, "packageSize"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 205
    iget-wide v1, p0, Leventrecord/EventRecord;->f:J

    const-string v3, "cosumeTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 206
    iget-object v1, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    const-string v2, "eventValue"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 207
    iget-wide v1, p0, Leventrecord/EventRecord;->h:J

    const-string v3, "eventTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 208
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 138
    check-cast p1, Leventrecord/EventRecord;

    .line 140
    iget-object v0, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    iget-object v1, p1, Leventrecord/EventRecord;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    iget-object v1, p1, Leventrecord/EventRecord;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    iget-object v1, p1, Leventrecord/EventRecord;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    iget-boolean v1, p1, Leventrecord/EventRecord;->d:Z

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-wide v0, p0, Leventrecord/EventRecord;->e:J

    iget-wide v2, p1, Leventrecord/EventRecord;->e:J

    invoke-static {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-wide v0, p0, Leventrecord/EventRecord;->f:J

    iget-wide v2, p1, Leventrecord/EventRecord;->f:J

    invoke-static {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    iget-object v1, p1, Leventrecord/EventRecord;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-wide v0, p0, Leventrecord/EventRecord;->h:J

    iget-wide v2, p1, Leventrecord/EventRecord;->h:J

    invoke-static {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 139
    goto :goto_0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    .line 181
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    .line 183
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    .line 185
    iget-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    .line 187
    iget-wide v0, p0, Leventrecord/EventRecord;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Leventrecord/EventRecord;->e:J

    .line 189
    iget-wide v0, p0, Leventrecord/EventRecord;->f:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Leventrecord/EventRecord;->f:J

    .line 191
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    .line 193
    iget-wide v0, p0, Leventrecord/EventRecord;->h:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Leventrecord/EventRecord;->h:J

    .line 195
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 167
    iget-object v0, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 168
    iget-object v0, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 169
    iget-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 170
    iget-wide v0, p0, Leventrecord/EventRecord;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 171
    iget-wide v0, p0, Leventrecord/EventRecord;->f:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 172
    iget-object v0, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 173
    iget-wide v0, p0, Leventrecord/EventRecord;->h:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 174
    return-void
.end method
