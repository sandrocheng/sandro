.class public Lcom/avast/android/mobilesecurity/app/trafficinfo/g;
.super Lcom/avast/android/mobilesecurity/app/manager/a/a/e;
.source "TrafficInfoAppsCursorLoader.java"


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# instance fields
.field private D:Ljava/util/HashMap;

.field private E:I

.field private F:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "totalRx"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->f:Ljava/lang/String;

    .line 39
    const-string v0, "totalTx"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->g:Ljava/lang/String;

    .line 40
    const-string v0, "totalRx3G"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->h:Ljava/lang/String;

    .line 41
    const-string v0, "totalTx3G"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->y:Ljava/lang/String;

    .line 42
    const-string v0, "totalRxWifi"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->z:Ljava/lang/String;

    .line 43
    const-string v0, "totalTxWifi"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->A:Ljava/lang/String;

    .line 44
    const-string v0, "totalRxRoaming"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->B:Ljava/lang/String;

    .line 45
    const-string v0, "totalTxRoaming"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/e;-><init>(Landroid/content/Context;)V

    .line 120
    iput p2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->E:I

    .line 121
    iput p3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->F:I

    .line 122
    return-void
.end method

.method private D()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/avast/android/mobilesecurity/r;->a()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/avast/android/mobilesecurity/r;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_2

    .line 141
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->D:Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Landroid/database/Cursor;Ljava/util/HashMap;)Lcom/avast/android/mobilesecurity/app/trafficinfo/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :cond_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 159
    :cond_2
    :goto_1
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    :try_start_4
    const-string v2, "AvastMobileSecurityNetworkInfo"

    const-string v3, "Can not read network info"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 152
    :cond_3
    :goto_2
    throw v0

    .line 155
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->D:Ljava/util/HashMap;

    .line 127
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->D()V

    .line 128
    invoke-super {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/avast/android/mobilesecurity/app/manager/a/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    check-cast p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->a(Lcom/avast/android/mobilesecurity/app/trafficinfo/h;)V

    return-void
.end method

.method protected a(Lcom/avast/android/mobilesecurity/app/trafficinfo/h;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 168
    iget v0, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->D:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->D:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;

    .line 173
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->F:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 174
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    .line 181
    :goto_0
    iget-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    iput-wide v1, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->a:J

    .line 182
    iget-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    iput-wide v1, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->b:J

    .line 183
    iget-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    iput-wide v1, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->c:J

    .line 184
    iget-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    iput-wide v1, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->o:J

    .line 185
    iget-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    iput-wide v1, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->p:J

    .line 186
    iget-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    iput-wide v1, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->q:J

    .line 187
    iget-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    iput-wide v1, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->r:J

    .line 188
    iget-wide v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    iput-wide v0, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->s:J

    .line 199
    :goto_1
    return-void

    .line 175
    :cond_0
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->F:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 176
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    goto :goto_0

    .line 190
    :cond_2
    iput-wide v2, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->a:J

    .line 191
    iput-wide v2, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->b:J

    .line 192
    iput-wide v2, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->c:J

    .line 193
    iput-wide v2, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->o:J

    .line 194
    iput-wide v2, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->p:J

    .line 195
    iput-wide v2, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->q:J

    .line 196
    iput-wide v2, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->r:J

    .line 197
    iput-wide v2, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->s:J

    goto :goto_1
.end method

.method protected b(Ljava/util/List;)Landroid/database/Cursor;
    .locals 6
    .parameter

    .prologue
    .line 203
    new-instance v1, Landroid/database/MatrixCursor;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->i:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->k:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->l:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->t:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->j:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->v:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->w:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->x:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->f:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->g:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->h:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->y:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->z:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->A:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->B:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->C:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;

    .line 208
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->o:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->p:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->q:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->r:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->s:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_0

    .line 214
    :cond_0
    return-object v1
.end method

.method protected c_()Ljava/util/Comparator;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/i;

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->E:I

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/i;-><init>(I)V

    return-object v0
.end method

.method protected synthetic w()Lcom/avast/android/mobilesecurity/app/manager/a/a/f;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->x()Lcom/avast/android/mobilesecurity/app/trafficinfo/h;

    move-result-object v0

    return-object v0
.end method

.method protected x()Lcom/avast/android/mobilesecurity/app/trafficinfo/h;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;-><init>()V

    return-object v0
.end method
