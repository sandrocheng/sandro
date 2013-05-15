.class public Lcom/avast/android/mobilesecurity/app/firewall/core/d;
.super Lcom/avast/android/mobilesecurity/app/manager/a/a/e;
.source "FirewallAppsCursorLoader.java"


# static fields
.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# instance fields
.field private y:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "wifi"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->f:Ljava/lang/String;

    .line 25
    const-string v0, "mobile"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->g:Ljava/lang/String;

    .line 26
    const-string v0, "roaming"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/e;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private x()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/l;->a()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 78
    const-string v3, "wifi"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 79
    const-string v4, "mobile"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 80
    const-string v5, "roaming"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 82
    :cond_0
    new-instance v6, Lcom/avast/android/mobilesecurity/app/firewall/core/g;

    invoke-direct {v6, v2}, Lcom/avast/android/mobilesecurity/app/firewall/core/g;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/core/e;)V

    .line 83
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/avast/android/mobilesecurity/app/firewall/core/g;->a:I

    .line 84
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/avast/android/mobilesecurity/app/firewall/core/g;->b:I

    .line 85
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/avast/android/mobilesecurity/app/firewall/core/g;->c:I

    .line 86
    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->y:Ljava/util/Map;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 89
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->y:Ljava/util/Map;

    .line 64
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->x()V

    .line 65
    invoke-super {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/avast/android/mobilesecurity/app/firewall/core/f;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->g:Ljava/lang/String;

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->y:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->y:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/firewall/core/g;

    .line 104
    iget v1, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/g;->a:I

    iput v1, p1, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->a:I

    .line 105
    iget v1, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/g;->b:I

    iput v1, p1, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->b:I

    .line 106
    iget v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/g;->c:I

    iput v0, p1, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->c:I

    .line 112
    :goto_1
    return-void

    .line 100
    :cond_0
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->h:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_1
    iput v2, p1, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->a:I

    .line 109
    iput v2, p1, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->b:I

    .line 110
    iput v2, p1, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->c:I

    goto :goto_1
.end method

.method protected bridge synthetic a(Lcom/avast/android/mobilesecurity/app/manager/a/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/avast/android/mobilesecurity/app/firewall/core/f;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->a(Lcom/avast/android/mobilesecurity/app/firewall/core/f;)V

    return-void
.end method

.method protected b(Ljava/util/List;)Landroid/database/Cursor;
    .locals 6
    .parameter

    .prologue
    .line 116
    new-instance v1, Landroid/database/MatrixCursor;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->i:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->k:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->l:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->t:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->j:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->v:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->w:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->x:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->f:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->g:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->h:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;

    .line 120
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget v4, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget v4, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget v4, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget v4, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget v4, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/l;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 127
    return-object v1
.end method

.method protected f()Lcom/avast/android/mobilesecurity/app/firewall/core/f;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/core/f;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/f;-><init>()V

    return-object v0
.end method

.method protected synthetic w()Lcom/avast/android/mobilesecurity/app/manager/a/a/f;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->f()Lcom/avast/android/mobilesecurity/app/firewall/core/f;

    move-result-object v0

    return-object v0
.end method
