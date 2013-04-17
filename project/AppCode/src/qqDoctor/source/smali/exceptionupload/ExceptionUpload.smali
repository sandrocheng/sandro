.class public final Lexceptionupload/ExceptionUpload;
.super Lcom/qq/taf/jce/JceStruct;
.source "ExceptionUpload.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static m:Ljava/util/ArrayList;

.field private static n:Lexceptionupload/MobileDetail;

.field private static o:Lexceptionupload/RunInfo;

.field private static p:Lexceptionupload/ContactInfo;

.field private static synthetic q:Z


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

.field private l:Ljava/lang/String;


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
    sput-boolean v0, Lexceptionupload/ExceptionUpload;->q:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    .line 29
    iput-object v2, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    .line 39
    iput-object v2, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    .line 41
    iput-object v2, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->l:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    .line 170
    iget-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    iput-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    .line 171
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    .line 172
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    .line 176
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    .line 177
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    .line 178
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->l:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->l:Ljava/lang/String;

    .line 179
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-wide p1, p0, Lexceptionupload/ExceptionUpload;->d:J

    .line 83
    return-void
.end method

.method public final a(Lexceptionupload/ContactInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    .line 153
    return-void
.end method

.method public final a(Lexceptionupload/MobileDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    .line 133
    return-void
.end method

.method public final a(Lexceptionupload/RunInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    .line 143
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    .line 93
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 237
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    :cond_0
    return-object v0

    .line 241
    :catch_0
    move-exception v1

    sget-boolean v1, Lexceptionupload/ExceptionUpload;->q:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 342
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 343
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    const-string v2, "exceptionType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 344
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    const-string v2, "excepitonAddress"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 345
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    const-string v2, "hash"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 346
    iget-wide v1, p0, Lexceptionupload/ExceptionUpload;->d:J

    const-string v3, "cashTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 347
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    const-string v2, "attachmentList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 348
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    const-string v2, "threadName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 349
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    const-string v2, "callStack"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 350
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    const-string v2, "causeBy"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 351
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    const-string v2, "mobile"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 352
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    const-string v2, "runInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 353
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    const-string v2, "contact"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 354
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->l:Ljava/lang/String;

    const-string v2, "crashDetail"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 355
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 199
    if-nez p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    check-cast p1, Lexceptionupload/ExceptionUpload;

    .line 206
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-wide v1, p0, Lexceptionupload/ExceptionUpload;->d:J

    iget-wide v3, p1, Lexceptionupload/ExceptionUpload;->d:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    iget-object v2, p1, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    iget-object v2, p1, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    iget-object v2, p1, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    iget-object v2, p1, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lexceptionupload/ExceptionUpload;->l:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ExceptionUpload;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 224
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    invoke-virtual {p1, v3, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    .line 298
    invoke-virtual {p1, v4, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    .line 300
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    .line 302
    iget-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    .line 304
    sget-object v0, Lexceptionupload/ExceptionUpload;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lexceptionupload/ExceptionUpload;->m:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Lexceptionupload/Attachment;

    invoke-direct {v0}, Lexceptionupload/Attachment;-><init>()V

    .line 308
    sget-object v1, Lexceptionupload/ExceptionUpload;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    sget-object v0, Lexceptionupload/ExceptionUpload;->m:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    .line 312
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    .line 314
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    .line 316
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    .line 318
    sget-object v0, Lexceptionupload/ExceptionUpload;->n:Lexceptionupload/MobileDetail;

    if-nez v0, :cond_1

    .line 320
    new-instance v0, Lexceptionupload/MobileDetail;

    invoke-direct {v0}, Lexceptionupload/MobileDetail;-><init>()V

    sput-object v0, Lexceptionupload/ExceptionUpload;->n:Lexceptionupload/MobileDetail;

    .line 322
    :cond_1
    sget-object v0, Lexceptionupload/ExceptionUpload;->n:Lexceptionupload/MobileDetail;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lexceptionupload/MobileDetail;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    .line 324
    sget-object v0, Lexceptionupload/ExceptionUpload;->o:Lexceptionupload/RunInfo;

    if-nez v0, :cond_2

    .line 326
    new-instance v0, Lexceptionupload/RunInfo;

    invoke-direct {v0}, Lexceptionupload/RunInfo;-><init>()V

    sput-object v0, Lexceptionupload/ExceptionUpload;->o:Lexceptionupload/RunInfo;

    .line 328
    :cond_2
    sget-object v0, Lexceptionupload/ExceptionUpload;->o:Lexceptionupload/RunInfo;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lexceptionupload/RunInfo;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    .line 330
    sget-object v0, Lexceptionupload/ExceptionUpload;->p:Lexceptionupload/ContactInfo;

    if-nez v0, :cond_3

    .line 332
    new-instance v0, Lexceptionupload/ContactInfo;

    invoke-direct {v0}, Lexceptionupload/ContactInfo;-><init>()V

    sput-object v0, Lexceptionupload/ExceptionUpload;->p:Lexceptionupload/ContactInfo;

    .line 334
    :cond_3
    sget-object v0, Lexceptionupload/ExceptionUpload;->p:Lexceptionupload/ContactInfo;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lexceptionupload/ContactInfo;

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    .line 336
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ExceptionUpload;->l:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 249
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 253
    :cond_0
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 257
    :cond_1
    iget-wide v0, p0, Lexceptionupload/ExceptionUpload;->d:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 258
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->e:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 259
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 263
    :cond_2
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 267
    :cond_3
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 269
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 271
    :cond_4
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    if-eqz v0, :cond_5

    .line 273
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->i:Lexceptionupload/MobileDetail;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 275
    :cond_5
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    if-eqz v0, :cond_6

    .line 277
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->j:Lexceptionupload/RunInfo;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 279
    :cond_6
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    if-eqz v0, :cond_7

    .line 281
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->k:Lexceptionupload/ContactInfo;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 283
    :cond_7
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->l:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 285
    iget-object v0, p0, Lexceptionupload/ExceptionUpload;->l:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 287
    :cond_8
    return-void
.end method
