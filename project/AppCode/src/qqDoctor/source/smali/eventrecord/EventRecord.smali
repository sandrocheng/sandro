.class public final Leventrecord/EventRecord;
.super Lcom/qq/taf/jce/JceStruct;
.source "EventRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


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

    .line 117
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    .line 29
    iput-wide v1, p0, Leventrecord/EventRecord;->e:J

    .line 31
    iput-wide v1, p0, Leventrecord/EventRecord;->f:J

    .line 33
    const-string v0, ""

    iput-object v0, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    .line 35
    iput-wide v1, p0, Leventrecord/EventRecord;->h:J

    .line 119
    iget-object v0, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    iput-object v0, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    iput-object v0, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    iput-object v0, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    .line 122
    iget-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    iput-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    .line 123
    iget-wide v0, p0, Leventrecord/EventRecord;->e:J

    iput-wide v0, p0, Leventrecord/EventRecord;->e:J

    .line 124
    iget-wide v0, p0, Leventrecord/EventRecord;->f:J

    iput-wide v0, p0, Leventrecord/EventRecord;->f:J

    .line 125
    iget-object v0, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    iput-object v0, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    .line 126
    iget-wide v0, p0, Leventrecord/EventRecord;->h:J

    iput-wide v0, p0, Leventrecord/EventRecord;->h:J

    .line 127
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-wide p1, p0, Leventrecord/EventRecord;->e:J

    .line 85
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Leventrecord/EventRecord;->d:Z

    .line 75
    return-void
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-wide p1, p0, Leventrecord/EventRecord;->f:J

    .line 95
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public final c(J)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-wide p1, p0, Leventrecord/EventRecord;->h:J

    .line 115
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 177
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    :cond_0
    return-object v0

    .line 181
    :catch_0
    move-exception v1

    sget-boolean v1, Leventrecord/EventRecord;->i:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 221
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 222
    iget-object v1, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    const-string v2, "apn"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 223
    iget-object v1, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    const-string v2, "srcIp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 224
    iget-object v1, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    const-string v2, "eventName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 225
    iget-boolean v1, p0, Leventrecord/EventRecord;->d:Z

    const-string v2, "eventResult"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 226
    iget-wide v1, p0, Leventrecord/EventRecord;->e:J

    const-string v3, "packageSize"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 227
    iget-wide v1, p0, Leventrecord/EventRecord;->f:J

    const-string v3, "cosumeTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 228
    iget-object v1, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    const-string v2, "eventValue"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 229
    iget-wide v1, p0, Leventrecord/EventRecord;->h:J

    const-string v3, "eventTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 230
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    check-cast p1, Leventrecord/EventRecord;

    .line 150
    iget-object v1, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    iget-object v2, p1, Leventrecord/EventRecord;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    iget-object v2, p1, Leventrecord/EventRecord;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    iget-object v2, p1, Leventrecord/EventRecord;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-boolean v1, p0, Leventrecord/EventRecord;->d:Z

    iget-boolean v2, p1, Leventrecord/EventRecord;->d:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-wide v1, p0, Leventrecord/EventRecord;->e:J

    iget-wide v3, p1, Leventrecord/EventRecord;->e:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-wide v1, p0, Leventrecord/EventRecord;->f:J

    iget-wide v3, p1, Leventrecord/EventRecord;->f:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    iget-object v2, p1, Leventrecord/EventRecord;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-wide v1, p0, Leventrecord/EventRecord;->h:J

    iget-wide v3, p1, Leventrecord/EventRecord;->h:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 164
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    .line 203
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    .line 205
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    .line 207
    iget-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    .line 209
    iget-wide v0, p0, Leventrecord/EventRecord;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Leventrecord/EventRecord;->e:J

    .line 211
    iget-wide v0, p0, Leventrecord/EventRecord;->f:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Leventrecord/EventRecord;->f:J

    .line 213
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    .line 215
    iget-wide v0, p0, Leventrecord/EventRecord;->h:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Leventrecord/EventRecord;->h:J

    .line 217
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Leventrecord/EventRecord;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 189
    iget-object v0, p0, Leventrecord/EventRecord;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 190
    iget-object v0, p0, Leventrecord/EventRecord;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 191
    iget-boolean v0, p0, Leventrecord/EventRecord;->d:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 192
    iget-wide v0, p0, Leventrecord/EventRecord;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 193
    iget-wide v0, p0, Leventrecord/EventRecord;->f:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 194
    iget-object v0, p0, Leventrecord/EventRecord;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 195
    iget-wide v0, p0, Leventrecord/EventRecord;->h:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 196
    return-void
.end method
