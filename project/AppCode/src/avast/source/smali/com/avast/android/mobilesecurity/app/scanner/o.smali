.class public Lcom/avast/android/mobilesecurity/app/scanner/o;
.super Ljava/lang/Object;
.source "ScanResultHelper.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/avast/android/mobilesecurity/t;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->a:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->a:Landroid/content/Context;

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    .line 67
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->c:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/scanner/o;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "result"

    aput-object v3, v2, v6

    const-string v3, "packageName = ?"

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "result"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/engine/x;->a(I)Lcom/avast/android/mobilesecurity/engine/x;

    move-result-object v1

    .line 151
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    if-ne v1, v2, :cond_2

    .line 152
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->ao()V

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "packageName = ?"

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    :cond_0
    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_1
    return-void

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aq()V

    goto :goto_0
.end method

.method private a(Lcom/avast/android/mobilesecurity/engine/x;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 264
    if-eqz p2, :cond_1

    .line 265
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    if-ne p1, v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->an()V

    .line 277
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ap()V

    goto :goto_0

    .line 271
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    if-ne p1, v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->as()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->c(I)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->au()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->e(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/s;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 177
    if-ne p4, v2, :cond_5

    move v3, v2

    .line 178
    :goto_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_6

    move v0, v2

    .line 179
    :goto_1
    if-nez v3, :cond_0

    if-eqz v0, :cond_7

    :cond_0
    move v0, v2

    .line 181
    :goto_2
    iget-object v3, p3, Lcom/avast/android/mobilesecurity/engine/s;->d:Lcom/avast/android/mobilesecurity/engine/u;

    if-nez v3, :cond_1

    .line 182
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/u;->a:Lcom/avast/android/mobilesecurity/engine/u;

    iput-object v3, p3, Lcom/avast/android/mobilesecurity/engine/s;->d:Lcom/avast/android/mobilesecurity/engine/u;

    .line 184
    :cond_1
    iget-object v3, p3, Lcom/avast/android/mobilesecurity/engine/s;->c:Lcom/avast/android/mobilesecurity/engine/v;

    if-nez v3, :cond_2

    .line 185
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/v;->a:Lcom/avast/android/mobilesecurity/engine/v;

    iput-object v3, p3, Lcom/avast/android/mobilesecurity/engine/s;->c:Lcom/avast/android/mobilesecurity/engine/v;

    .line 188
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 189
    const-string v4, "name"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v4, "packageName"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v4, "infection"

    iget-object v5, p3, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v4, "result"

    iget-object v5, p3, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v4, "detection_category"

    iget-object v5, p3, Lcom/avast/android/mobilesecurity/engine/s;->d:Lcom/avast/android/mobilesecurity/engine/u;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/engine/u;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string v4, "detection_type"

    iget-object v5, p3, Lcom/avast/android/mobilesecurity/engine/s;->c:Lcom/avast/android/mobilesecurity/engine/v;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/engine/v;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    iget-object v4, p3, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    sget-object v5, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    if-ne v4, v5, :cond_3

    .line 197
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v4, v2}, Lcom/avast/android/mobilesecurity/t;->l(Z)V

    .line 200
    :cond_3
    if-eqz v0, :cond_9

    .line 201
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->b()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 203
    if-gez v0, :cond_4

    .line 204
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    :goto_3
    invoke-direct {p0, v0, v2}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Lcom/avast/android/mobilesecurity/engine/x;Z)V

    .line 210
    :cond_4
    :goto_4
    return-void

    :cond_5
    move v3, v1

    .line 177
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 178
    goto/16 :goto_1

    :cond_7
    move v0, v1

    .line 179
    goto/16 :goto_2

    :cond_8
    move v2, v1

    .line 204
    goto :goto_3

    .line 207
    :cond_9
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 208
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    :goto_5
    invoke-direct {p0, v0, v2}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Lcom/avast/android/mobilesecurity/engine/x;Z)V

    goto :goto_4

    :cond_a
    move v2, v1

    goto :goto_5
.end method

.method private a(Ljava/util/List;Landroid/net/Uri;ILcom/avast/android/mobilesecurity/app/locking/core/App;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/s;

    .line 228
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    if-ne v0, v1, :cond_2

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 230
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/s;

    .line 233
    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/s;->d:Lcom/avast/android/mobilesecurity/engine/u;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_0
    const/4 v6, 0x0

    .line 239
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_3

    .line 240
    sget-object v6, Lcom/avast/android/mobilesecurity/app/scanner/ao;->a:Lcom/avast/android/mobilesecurity/app/scanner/ao;

    .line 245
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->a:Landroid/content/Context;

    const/high16 v7, 0x1000

    move-object v1, p2

    move-object v2, p4

    invoke-static/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->call(Landroid/content/Context;Landroid/net/Uri;Lcom/avast/android/mobilesecurity/app/locking/core/App;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/avast/android/mobilesecurity/app/scanner/ao;I)V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ar()I

    move-result v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->as()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->at()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->au()I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(I)V

    .line 254
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;)V

    .line 255
    return-void

    .line 241
    :cond_3
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    .line 242
    sget-object v6, Lcom/avast/android/mobilesecurity/app/scanner/ao;->b:Lcom/avast/android/mobilesecurity/app/scanner/ao;

    goto :goto_1
.end method

.method private b(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/locking/core/App;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 328
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/avast/android/mobilesecurity/engine/s;

    .line 329
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    .line 333
    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_2

    .line 334
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 335
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 341
    :goto_0
    if-eqz v1, :cond_0

    .line 342
    iget-object v3, v8, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v3, p3

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 345
    :cond_0
    iget-object v1, v8, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v1, v3}, Lcom/avast/android/mobilesecurity/engine/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->j:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v3, p3

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 349
    :cond_1
    return-void

    .line 336
    :cond_2
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_3

    iget-boolean v1, v8, Lcom/avast/android/mobilesecurity/engine/s;->e:Z

    if-nez v1, :cond_3

    .line 337
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->b:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 338
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v4, v2

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 286
    if-lez p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->c:Landroid/os/Handler;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/scanner/p;

    invoke-direct {v1, p0, p1}, Lcom/avast/android/mobilesecurity/app/scanner/p;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/o;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->c:Landroid/os/Handler;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/scanner/q;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/scanner/q;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/locking/core/App;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 87
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_5

    move v1, v3

    .line 92
    :goto_1
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_6

    move v0, v3

    .line 93
    :goto_2
    and-int/lit8 v4, p5, 0x8

    if-eqz v4, :cond_7

    move v5, v3

    .line 94
    :goto_3
    if-nez v1, :cond_2

    if-eqz v0, :cond_8

    :cond_2
    move v1, v3

    .line 96
    :goto_4
    new-instance v6, Lcom/avast/android/mobilesecurity/app/account/e;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/o;->a:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/avast/android/mobilesecurity/app/account/e;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/s;

    .line 98
    iget-object v4, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    sget-object v7, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    if-eq v4, v7, :cond_3

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/x;->d:Lcom/avast/android/mobilesecurity/engine/x;

    if-ne v0, v4, :cond_9

    .line 100
    :cond_3
    if-eqz v1, :cond_4

    .line 101
    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Landroid/content/pm/ApplicationInfo;)V

    .line 102
    sget-object v0, Lcom/avast/android/generic/internet/c/a/av;->a:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v6, v2, v3, v0}, Lcom/avast/android/mobilesecurity/app/account/e;->a(IILcom/avast/android/generic/internet/c/a/av;)V

    .line 132
    :cond_4
    :goto_5
    and-int/lit8 v0, p5, 0x10

    if-nez v0, :cond_0

    .line 133
    invoke-direct/range {p0 .. p5}, Lcom/avast/android/mobilesecurity/app/scanner/o;->b(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/locking/core/App;I)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 91
    goto :goto_1

    :cond_6
    move v0, v2

    .line 92
    goto :goto_2

    :cond_7
    move v5, v2

    .line 93
    goto :goto_3

    :cond_8
    move v1, v2

    .line 94
    goto :goto_4

    .line 105
    :cond_9
    if-nez p2, :cond_c

    const/4 v0, 0x0

    move-object v4, v0

    .line 106
    :goto_6
    and-int/lit8 v0, p5, 0x4

    const/4 v7, 0x4

    if-eq v0, v7, :cond_a

    if-eqz v5, :cond_b

    :cond_a
    move v2, v3

    .line 107
    :cond_b
    if-eqz v2, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/s;

    .line 110
    invoke-direct {p0, v4, p3, v0, p5}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/s;I)V

    .line 111
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    sget-object v8, Lcom/avast/android/generic/internet/c/a/av;->a:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v6, v2, v0, v8}, Lcom/avast/android/mobilesecurity/app/account/e;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/avast/android/generic/internet/c/a/av;)V

    goto :goto_8

    .line 105
    :cond_c
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v4, v0

    goto :goto_6

    .line 107
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 115
    :cond_e
    if-nez v1, :cond_f

    if-eqz v5, :cond_10

    .line 116
    :cond_f
    sget-object v0, Lcom/avast/android/generic/internet/c/a/av;->a:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v6, v3, v3, v0}, Lcom/avast/android/mobilesecurity/app/account/e;->a(IILcom/avast/android/generic/internet/c/a/av;)V

    .line 123
    :cond_10
    if-eqz v1, :cond_11

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    if-eqz v5, :cond_4

    .line 125
    :cond_12
    if-eqz v5, :cond_13

    .line 126
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/fileshield/v;->a()Lcom/avast/android/mobilesecurity/app/fileshield/v;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/avast/android/mobilesecurity/app/fileshield/v;->b(Ljava/lang/String;)V

    .line 128
    :cond_13
    invoke-direct {p0, p1, v2, p5, p4}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Ljava/util/List;Landroid/net/Uri;ILcom/avast/android/mobilesecurity/app/locking/core/App;)V

    goto/16 :goto_5
.end method
