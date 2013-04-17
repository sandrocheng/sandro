.class public final Lexceptionupload/ExceptionUpload;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# static fields
.field private static l:Ljava/util/ArrayList;

.field private static m:Lexceptionupload/MobileDetail;

.field private static n:Lexceptionupload/RunInfo;

.field private static o:Lexceptionupload/ContactInfo;

.field private static synthetic p:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lexceptionupload/MobileDetail;

.field private j:Lexceptionupload/RunInfo;

.field private k:Lexceptionupload/ContactInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lexceptionupload/ExceptionUpload;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lexceptionupload/ExceptionUpload;->p:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    .line 24
    iput-object v2, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    .line 34
    iput-object v2, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    .line 36
    iput-object v2, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    .line 150
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    .line 153
    iget-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    iput-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    .line 154
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    .line 155
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    .line 159
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    .line 160
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    .line 161
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-wide p1, p0, Lexceptionupload/ExceptionUpload;->d:J

    .line 76
    return-void
.end method

.method public final a(Lexceptionupload/ContactInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    .line 146
    return-void
.end method

.method public final a(Lexceptionupload/MobileDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    .line 126
    return-void
.end method

.method public final a(Lexceptionupload/RunInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    .line 136
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 200
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    :cond_0
    return-object v0

    .line 204
    :catch_0
    move-exception v1

    sget-boolean v1, Lexceptionupload/ExceptionUpload;->p:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 299
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 300
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    const-string v2, "exceptionType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 301
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    const-string v2, "excepitonAddress"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 302
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    const-string v2, "hash"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 303
    iget-wide v1, p0, Lexceptionupload/ExceptionUpload;->d:J

    const-string v3, "cashTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 304
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    const-string v2, "attachmentList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 305
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    const-string v2, "threadName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 306
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    const-string v2, "callStack"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 307
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    const-string v2, "causeBy"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 308
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    const-string v2, "mobile"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 309
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    const-string v2, "runInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 310
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    const-string v2, "contact"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 311
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 180
    check-cast p1, Lexceptionupload/ExceptionUpload;

    .line 182
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    iget-wide v2, p1, Lexceptionupload/ExceptionUpload;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    iget-object v1, p1, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    iget-object v1, p1, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    iget-object v1, p1, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    iget-object v1, p1, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 181
    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    invoke-virtual {p1, v3, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    .line 257
    invoke-virtual {p1, v4, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    .line 259
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    .line 261
    iget-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    .line 263
    sget-object v0, Lexceptionupload/ExceptionUpload;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lexceptionupload/ExceptionUpload;->l:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Lexceptionupload/Attachment;

    invoke-direct {v0}, Lexceptionupload/Attachment;-><init>()V

    .line 267
    sget-object v1, Lexceptionupload/ExceptionUpload;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    sget-object v0, Lexceptionupload/ExceptionUpload;->l:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    .line 271
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    .line 273
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    .line 275
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    .line 277
    sget-object v0, Lexceptionupload/ExceptionUpload;->m:Lexceptionupload/MobileDetail;

    if-nez v0, :cond_1

    .line 279
    new-instance v0, Lexceptionupload/MobileDetail;

    invoke-direct {v0}, Lexceptionupload/MobileDetail;-><init>()V

    sput-object v0, Lexceptionupload/ExceptionUpload;->m:Lexceptionupload/MobileDetail;

    .line 281
    :cond_1
    sget-object v0, Lexceptionupload/ExceptionUpload;->m:Lexceptionupload/MobileDetail;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lexceptionupload/MobileDetail;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    .line 283
    sget-object v0, Lexceptionupload/ExceptionUpload;->n:Lexceptionupload/RunInfo;

    if-nez v0, :cond_2

    .line 285
    new-instance v0, Lexceptionupload/RunInfo;

    invoke-direct {v0}, Lexceptionupload/RunInfo;-><init>()V

    sput-object v0, Lexceptionupload/ExceptionUpload;->n:Lexceptionupload/RunInfo;

    .line 287
    :cond_2
    sget-object v0, Lexceptionupload/ExceptionUpload;->n:Lexceptionupload/RunInfo;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lexceptionupload/RunInfo;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    .line 289
    sget-object v0, Lexceptionupload/ExceptionUpload;->o:Lexceptionupload/ContactInfo;

    if-nez v0, :cond_3

    .line 291
    new-instance v0, Lexceptionupload/ContactInfo;

    invoke-direct {v0}, Lexceptionupload/ContactInfo;-><init>()V

    sput-object v0, Lexceptionupload/ExceptionUpload;->o:Lexceptionupload/ContactInfo;

    .line 293
    :cond_3
    sget-object v0, Lexceptionupload/ExceptionUpload;->o:Lexceptionupload/ContactInfo;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lexceptionupload/ContactInfo;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    .line 295
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 212
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 220
    :cond_1
    iget-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 221
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 222
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 226
    :cond_2
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 230
    :cond_3
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 234
    :cond_4
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 238
    :cond_5
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    if-eqz v0, :cond_6

    .line 240
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 242
    :cond_6
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    if-eqz v0, :cond_7

    .line 244
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 246
    :cond_7
    return-void
.end method
