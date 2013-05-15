.class public Lcom/avast/android/mobilesecurity/app/trafficinfo/a;
.super Ljava/lang/Object;
.source "NetworkData.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

.field public e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

.field public f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

.field public g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

.field public h:J

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a:J

    .line 35
    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->b:J

    .line 36
    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->c:J

    .line 38
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    .line 125
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-direct {v0, p0, v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/a;I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    .line 126
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/a;I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    .line 127
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/a;I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    .line 128
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/a;I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    .line 130
    const-wide/16 v0, -0x64

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->h:J

    .line 132
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->j:Z

    .line 160
    iput-wide p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->h:J

    .line 161
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    .line 162
    return-void
.end method

.method public constructor <init>(JLcom/avast/android/mobilesecurity/app/trafficinfo/c;ILjava/util/Date;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a:J

    .line 35
    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->b:J

    .line 36
    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->c:J

    .line 38
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    .line 125
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-direct {v0, p0, v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/a;I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    .line 126
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-direct {v0, p0, v3}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/a;I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    .line 127
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/a;I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    .line 128
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/a;I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    .line 130
    const-wide/16 v0, -0x64

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->h:J

    .line 132
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->j:Z

    .line 166
    iput-wide p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->h:J

    .line 168
    iput-boolean v3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->j:Z

    .line 169
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move-wide v4, p6

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Lcom/avast/android/mobilesecurity/app/trafficinfo/c;ILjava/util/Date;J)V

    .line 172
    return-void
.end method

.method public static a(Landroid/database/Cursor;Ljava/util/HashMap;)Lcom/avast/android/mobilesecurity/app/trafficinfo/a;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 374
    const/16 v0, 0xc

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 375
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 377
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;

    .line 380
    invoke-direct {v0, p0, v3}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Landroid/database/Cursor;I)V

    .line 389
    :goto_0
    return-object v0

    .line 385
    :cond_0
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;-><init>(J)V

    .line 386
    invoke-direct {v0, p0, v3}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Landroid/database/Cursor;I)V

    .line 387
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 394
    .line 395
    if-nez p2, :cond_0

    .line 397
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    .line 413
    :goto_0
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    .line 414
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    .line 415
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    .line 416
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    .line 417
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    .line 418
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    .line 419
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    .line 420
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    .line 421
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a:J

    .line 422
    iput-boolean v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->k:Z

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    .line 425
    return-void

    .line 398
    :cond_0
    if-ne p2, v3, :cond_1

    .line 400
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    goto :goto_0

    .line 401
    :cond_1
    if-ne p2, v1, :cond_2

    .line 403
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    goto :goto_0

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    .line 408
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a:J

    .line 409
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->c:J

    .line 410
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->b:J

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/app/trafficinfo/c;ILjava/util/Date;J)V
    .locals 25
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    .line 179
    sget-boolean v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->h:J

    sget-wide v5, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->h:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 189
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v5

    .line 190
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v3

    .line 197
    :goto_0
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_f

    .line 199
    const-wide/16 v5, 0x0

    move-wide v10, v5

    .line 201
    :goto_1
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    .line 203
    const-wide/16 v3, 0x0

    .line 208
    :cond_1
    const-wide/16 v6, 0x0

    .line 209
    const-wide/16 v8, 0x0

    .line 211
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a:J

    .line 213
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 214
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 216
    const/16 v5, 0xb

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Ljava/util/Calendar;->set(II)V

    .line 217
    const/16 v5, 0xc

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Ljava/util/Calendar;->set(II)V

    .line 218
    const/16 v5, 0xd

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Ljava/util/Calendar;->set(II)V

    .line 219
    const/16 v5, 0xe

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Ljava/util/Calendar;->set(II)V

    .line 221
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 222
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    .line 223
    invoke-virtual {v12, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 225
    const/4 v5, 0x5

    move/from16 v0, p2

    invoke-virtual {v12, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 226
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 228
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 230
    const/4 v5, 0x2

    const/4 v15, -0x1

    invoke-virtual {v12, v5, v15}, Ljava/util/Calendar;->add(II)V

    .line 231
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 234
    :cond_2
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    .line 236
    invoke-virtual {v12, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 238
    const/4 v5, 0x2

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 239
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 241
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 243
    const/4 v5, 0x1

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v12, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 244
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 247
    :cond_3
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    .line 249
    const/4 v5, 0x0

    .line 251
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v0, v12, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a:J

    move-wide/from16 v19, v0

    cmp-long v12, v19, v17

    if-gez v12, :cond_8

    .line 253
    const-string v5, "AvastMobileSecurityNetworkInfo"

    const-string v12, "Resetting year data"

    invoke-static {v5, v12}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a()V

    .line 255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a()V

    .line 256
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a()V

    .line 257
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    .line 258
    const/4 v5, 0x1

    .line 280
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->j:Z

    if-eqz v12, :cond_a

    .line 282
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->j:Z

    move-wide/from16 v21, v8

    move-wide/from16 v23, v6

    move-wide/from16 v7, v23

    move-wide/from16 v5, v21

    .line 305
    :goto_3
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->b:J

    .line 306
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->c:J

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    .line 319
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    sget-object v4, Lcom/avast/android/mobilesecurity/app/trafficinfo/f;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    if-ne v3, v4, :cond_e

    .line 321
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    sget-object v4, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    if-ne v3, v4, :cond_5

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    .line 333
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v7, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    add-long v4, v7, v5

    iput-wide v4, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    .line 353
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iput-wide v13, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a:J

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iput-wide v15, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a:J

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    move-wide/from16 v0, v17

    iput-wide v0, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a:J

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a:J

    .line 358
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    .line 359
    :cond_6
    return-void

    .line 193
    :cond_7
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->h:J

    long-to-int v3, v3

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    .line 194
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->h:J

    long-to-int v3, v3

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    goto/16 :goto_0

    .line 261
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v0, v12, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a:J

    move-wide/from16 v19, v0

    cmp-long v12, v19, v15

    if-gez v12, :cond_9

    .line 263
    const-string v5, "AvastMobileSecurityNetworkInfo"

    const-string v12, "Resetting month data"

    invoke-static {v5, v12}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a()V

    .line 265
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a()V

    .line 266
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    .line 267
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 270
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v0, v12, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a:J

    move-wide/from16 v19, v0

    cmp-long v12, v19, v13

    if-gez v12, :cond_4

    .line 272
    const-string v5, "AvastMobileSecurityNetworkInfo"

    const-string v12, "Resetting day data"

    invoke-static {v5, v12}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a()V

    .line 274
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    .line 275
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 285
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->b:J

    move-wide/from16 v19, v0

    cmp-long v12, v10, v19

    if-ltz v12, :cond_c

    .line 286
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->b:J

    sub-long v6, v10, v6

    .line 293
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->c:J

    move-wide/from16 v19, v0

    cmp-long v12, v3, v19

    if-ltz v12, :cond_d

    .line 294
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->c:J

    sub-long v8, v3, v8

    .line 301
    :goto_6
    const-wide/16 v19, 0x0

    cmp-long v12, v6, v19

    if-nez v12, :cond_b

    const-wide/16 v19, 0x0

    cmp-long v12, v8, v19

    if-nez v12, :cond_b

    if-eqz v5, :cond_6

    :cond_b
    move-wide/from16 v21, v8

    move-wide/from16 v23, v6

    move-wide/from16 v7, v23

    move-wide/from16 v5, v21

    goto/16 :goto_3

    .line 289
    :cond_c
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->b:J

    .line 290
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    goto :goto_5

    .line 297
    :cond_d
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->c:J

    .line 298
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    goto :goto_6

    .line 343
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v7, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    add-long v4, v7, v5

    iput-wide v4, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    goto/16 :goto_4

    :cond_f
    move-wide v10, v5

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mRealtimeElapsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a:J

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mins "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTotalTxOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTotalRxOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz p2, :cond_0

    .line 143
    const-string v0, "TODAY"

    invoke-static {p1, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a(Ljava/lang/String;)V

    .line 147
    if-eqz p2, :cond_1

    .line 149
    const-string v0, "MONTH"

    invoke-static {p1, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a(Ljava/lang/String;)V

    .line 151
    const-string v0, "YEAR"

    invoke-static {p1, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a(Ljava/lang/String;)V

    .line 153
    const-string v0, "ALL TIME"

    invoke-static {p1, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a(Ljava/lang/String;)V

    .line 156
    :cond_1
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a(Ljava/util/ArrayList;)V

    .line 365
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a(Ljava/util/ArrayList;)V

    .line 366
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a(Ljava/util/ArrayList;)V

    .line 367
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->a(Ljava/util/ArrayList;)V

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    .line 371
    :cond_0
    return-void
.end method

.method public a(ZLcom/avast/android/mobilesecurity/app/trafficinfo/c;Ljava/util/Date;JZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 430
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a:J

    cmp-long v0, v0, p4

    if-lez v0, :cond_2

    .line 432
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->j:Z

    .line 438
    :goto_0
    if-eqz p6, :cond_0

    .line 439
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->j:Z

    .line 441
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p0

    move-object v1, p2

    move v2, p7

    move-object v3, p3

    move-wide v4, p4

    .line 443
    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Lcom/avast/android/mobilesecurity/app/trafficinfo/c;ILjava/util/Date;J)V

    .line 445
    :cond_1
    return-void

    .line 435
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->j:Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->i:Z

    return v0
.end method
