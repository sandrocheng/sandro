.class public Lcom/avast/android/mobilesecurity/app/account/c;
.super Ljava/lang/Object;
.source "AccountStatusSender.java"


# instance fields
.field private final a:B

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private g:Lcom/avast/android/generic/internet/c/c;

.field private h:Lcom/avast/android/mobilesecurity/t;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/internet/c/c;Lcom/avast/android/mobilesecurity/t;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->a:B

    .line 54
    const-string v0, "AMS2"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->b:Ljava/lang/String;

    .line 60
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->c:J

    .line 65
    const-wide/32 v0, 0x10000

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->d:J

    .line 70
    const-wide/32 v0, 0x20000

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->e:J

    .line 75
    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->f:J

    .line 93
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/account/c;->g:Lcom/avast/android/generic/internet/c/c;

    .line 94
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    .line 95
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/account/c;->i:Landroid/content/Context;

    .line 96
    return-void
.end method

.method private a(Lcom/avast/android/generic/internet/c/a/an;)V
    .locals 18
    .parameter

    .prologue
    .line 191
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/az;->values()[Lcom/avast/android/generic/internet/c/a/az;

    move-result-object v11

    array-length v12, v11

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v13, v11, v10

    .line 192
    const-string v1, "AuidInfoSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating AntivirusActivity message for time period: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/avast/android/generic/internet/c/a/az;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/aj;->d()Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v14

    .line 197
    invoke-virtual {v14, v13}, Lcom/avast/android/generic/internet/c/a/ak;->a(Lcom/avast/android/generic/internet/c/a/az;)Lcom/avast/android/generic/internet/c/a/ak;

    .line 198
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/av;->values()[Lcom/avast/android/generic/internet/c/a/av;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v1, 0x0

    move v9, v1

    :goto_1
    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    aget-object v17, v15, v9

    .line 199
    const/4 v8, 0x0

    .line 200
    const/4 v7, 0x0

    .line 201
    invoke-static {v13}, Lcom/avast/android/mobilesecurity/g;->a(Lcom/avast/android/generic/internet/c/a/az;)Landroid/net/Uri;

    move-result-object v2

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/account/c;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scan_type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/avast/android/generic/internet/c/a/av;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 208
    if-eqz v3, :cond_3

    .line 209
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    const-string v1, "infected"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 213
    const-string v1, "scanned"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 217
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 220
    :goto_3
    const-string v3, "AuidInfoSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating InfectionCounts message for scan type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/avast/android/generic/internet/c/a/av;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", infected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", scanned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ap;->h()Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v3

    .line 227
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/internet/c/a/aq;->a(Lcom/avast/android/generic/internet/c/a/av;)Lcom/avast/android/generic/internet/c/a/aq;

    .line 228
    invoke-virtual {v3, v2}, Lcom/avast/android/generic/internet/c/a/aq;->b(I)Lcom/avast/android/generic/internet/c/a/aq;

    .line 229
    invoke-virtual {v3, v1}, Lcom/avast/android/generic/internet/c/a/aq;->a(I)Lcom/avast/android/generic/internet/c/a/aq;

    .line 231
    invoke-virtual {v3}, Lcom/avast/android/generic/internet/c/a/aq;->c()Lcom/avast/android/generic/internet/c/a/ap;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/avast/android/generic/internet/c/a/ak;->a(Lcom/avast/android/generic/internet/c/a/ap;)Lcom/avast/android/generic/internet/c/a/ak;

    .line 198
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_1

    .line 234
    :cond_0
    invoke-virtual {v14}, Lcom/avast/android/generic/internet/c/a/ak;->c()Lcom/avast/android/generic/internet/c/a/aj;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/avast/android/generic/internet/c/a/aj;)Lcom/avast/android/generic/internet/c/a/an;

    .line 191
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_0

    .line 236
    :cond_1
    return-void

    :cond_2
    move v1, v7

    move v2, v8

    goto :goto_2

    :cond_3
    move v1, v7

    move v2, v8

    goto :goto_3
.end method

.method private b()Lcom/avast/android/generic/internet/c/a/am;
    .locals 6

    .prologue
    .line 152
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/am;->x()Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    .line 153
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/c;->c()Lcom/avast/android/generic/internet/c/a/ax;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/avast/android/generic/internet/c/a/ax;)Lcom/avast/android/generic/internet/c/a/an;

    .line 154
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->a(I)Lcom/avast/android/generic/internet/c/a/an;

    .line 155
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->c(I)Lcom/avast/android/generic/internet/c/a/an;

    .line 156
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/c;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/internet/c/a/an;->a(J)Lcom/avast/android/generic/internet/c/a/an;

    .line 157
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->b(I)Lcom/avast/android/generic/internet/c/a/an;

    .line 158
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->d(I)Lcom/avast/android/generic/internet/c/a/an;

    .line 160
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->a(Z)Lcom/avast/android/generic/internet/c/a/an;

    .line 161
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/c;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/internet/c/a/an;->b(J)Lcom/avast/android/generic/internet/c/a/an;

    .line 162
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aC()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->b(Z)Lcom/avast/android/generic/internet/c/a/an;

    .line 164
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->c(Z)Lcom/avast/android/generic/internet/c/a/an;

    .line 166
    const-string v1, "Creating AntivirusStatus message, security status: %s, program version: %d, build number: %d, definitions version: %d, community iq: %s, firawall: %s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/an;->e()Lcom/avast/android/generic/internet/c/a/ax;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/an;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/an;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/an;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/an;->m()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/an;->n()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 175
    const-string v2, "AuidInfoSender"

    invoke-static {v2, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/account/c;->a(Lcom/avast/android/generic/internet/c/a/an;)V

    .line 178
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/account/c;->b(Lcom/avast/android/generic/internet/c/a/an;)V

    .line 180
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/an;->c()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/avast/android/generic/internet/c/a/an;)V
    .locals 13
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/n;->a()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 249
    if-eqz v3, :cond_5

    .line 250
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    const-string v0, "date"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 253
    const-string v0, "uri"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 255
    const-string v0, "virus_name"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 257
    const-string v0, "scan_type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 260
    :cond_0
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    if-nez v0, :cond_1

    .line 262
    const-string v0, ""

    .line 264
    :cond_1
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    if-nez v1, :cond_2

    .line 266
    const-string v1, ""

    .line 270
    :cond_2
    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 271
    if-lez v2, :cond_3

    .line 272
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 275
    :cond_3
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 276
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 277
    const-string v2, ""

    .line 278
    sget-object v10, Lcom/avast/android/mobilesecurity/app/account/d;->a:[I

    invoke-static {v9}, Lcom/avast/android/generic/internet/c/a/av;->a(I)Lcom/avast/android/generic/internet/c/a/av;

    move-result-object v9

    invoke-virtual {v9}, Lcom/avast/android/generic/internet/c/a/av;->ordinal()I

    move-result v9

    aget v9, v10, v9

    packed-switch v9, :pswitch_data_0

    .line 287
    :goto_0
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/as;->j()Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v9

    .line 289
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/avast/android/generic/internet/c/a/at;->a(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/at;

    .line 290
    invoke-static {v1}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/avast/android/generic/internet/c/a/at;->b(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/at;

    .line 292
    int-to-long v10, v8

    invoke-virtual {v9, v10, v11}, Lcom/avast/android/generic/internet/c/a/at;->a(J)Lcom/avast/android/generic/internet/c/a/at;

    .line 293
    invoke-static {v2}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/avast/android/generic/internet/c/a/at;->c(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/at;

    .line 296
    const-string v10, "AuidInfoSender"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Creating LastDetectedViruses message for uri: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", what: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", when: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", where: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v9}, Lcom/avast/android/generic/internet/c/a/at;->c()Lcom/avast/android/generic/internet/c/a/as;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/avast/android/generic/internet/c/a/as;)Lcom/avast/android/generic/internet/c/a/an;

    .line 303
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_5
    return-void

    .line 280
    :pswitch_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/account/c;->i:Landroid/content/Context;

    const v9, 0x7f0c01ea

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/account/c;->i:Landroid/content/Context;

    const v9, 0x7f0c02e4

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()Lcom/avast/android/generic/internet/c/a/ax;
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->f(Landroid/content/Context;)Z

    move-result v0

    .line 317
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/c;->i()Z

    move-result v1

    .line 319
    if-eqz v1, :cond_0

    .line 320
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ax;->d:Lcom/avast/android/generic/internet/c/a/ax;

    .line 324
    :goto_0
    return-object v0

    .line 321
    :cond_0
    if-eqz v0, :cond_1

    .line 322
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ax;->c:Lcom/avast/android/generic/internet/c/a/ax;

    goto :goto_0

    .line 324
    :cond_1
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ax;->b:Lcom/avast/android/generic/internet/c/a/ax;

    goto :goto_0
.end method

.method private d()[B
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x1
        0x0t
        0xat
        0x0t
        0x0t
    .end array-data
.end method

.method private e()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 349
    .line 350
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/account/c;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 353
    :try_start_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/account/c;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 359
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 360
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 361
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    add-int/2addr v0, v2

    .line 362
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    .line 363
    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    :cond_0
    :goto_0
    return v0

    .line 355
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private f()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 375
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/account/c;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 377
    :try_start_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/account/c;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return v0

    .line 378
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private g()I
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 394
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/account/c;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;

    move-result-object v1

    .line 397
    if-eqz v1, :cond_0

    .line 398
    iget-object v1, v1, Lcom/avast/android/mobilesecurity/engine/al;->a:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 399
    array-length v1, v2

    if-ne v1, v3, :cond_0

    .line 402
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v2, v1

    invoke-static {v1}, Lcom/avast/android/generic/util/e;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 404
    array-length v1, v3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 405
    const/4 v1, 0x0

    aget-byte v1, v3, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v0

    .line 406
    const/4 v0, 0x1

    :try_start_1
    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    .line 407
    const/4 v0, 0x2

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    .line 408
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    and-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v1

    .line 416
    :cond_0
    :goto_0
    return v0

    .line 410
    :catch_0
    move-exception v1

    .line 411
    :goto_1
    const-string v2, "AuidInfoSender"

    const-string v3, "Can\'t get VPS version."

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 410
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method private h()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 425
    const-wide/16 v0, 0x0

    .line 426
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->S()Z

    move-result v2

    if-nez v2, :cond_0

    .line 427
    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    .line 428
    or-long/2addr v0, v4

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->ag()Z

    move-result v2

    if-nez v2, :cond_1

    .line 431
    const-wide/32 v2, 0x10000

    or-long/2addr v0, v2

    .line 432
    or-long/2addr v0, v4

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->aj()Z

    move-result v2

    if-nez v2, :cond_2

    .line 435
    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    .line 436
    or-long/2addr v0, v4

    .line 438
    :cond_2
    return-wide v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aj()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Lcom/avast/android/generic/internet/c/a/ag;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 458
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ag;->d()Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    .line 460
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/account/c;->i:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 462
    if-eqz v1, :cond_0

    .line 463
    const-string v2, "level"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 465
    const-string v3, "scale"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 468
    if-eq v2, v4, :cond_0

    if-eq v1, v4, :cond_0

    .line 469
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 470
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/ah;->a(F)Lcom/avast/android/generic/internet/c/a/ah;

    .line 474
    :cond_0
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/ah;->c()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 7

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ad;->P()Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v1

    .line 113
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 115
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/c;->d()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c;->a([B)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/internet/c/a/ae;->c(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 117
    const-string v0, "AMS2"

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/internet/c/a/ae;->d(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 118
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->t()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/generic/internet/c/a/ae;->a(J)Lcom/avast/android/generic/internet/c/a/ae;
    :try_end_0
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c;->a([B)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/internet/c/a/ae;->e(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 128
    :goto_0
    :try_start_2
    const-string v0, "AuidInfoSender"

    const-string v2, "Creating AUIDinfo message for AUID: %s, last update: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/a/ae;->e()Lcom/google/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/a/ae;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/c;->b()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 134
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/c;->j()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 136
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/c;->g:Lcom/avast/android/generic/internet/c/c;

    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/a/ae;->c()Lcom/avast/android/generic/internet/c/a/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/c;->a(Lcom/avast/android/generic/internet/c/a/ad;)Z

    move-result v0

    return v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v2, "AuidInfoSender"

    const-string v3, "Could not encode GUID."

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    throw v0

    .line 139
    :catch_2
    move-exception v0

    .line 140
    throw v0

    .line 141
    :catch_3
    move-exception v0

    .line 142
    new-instance v1, Lcom/avast/android/generic/internet/c/g;

    invoke-direct {v1, v0}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
