.class public final Lcom/avast/android/mobilesecurity/app/filter/core/u;
.super Lcom/avast/android/mobilesecurity/app/filter/core/x;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;

.field private static final k:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 183
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/u;->k:Landroid/net/Uri;

    .line 193
    sget-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/u;->k:Landroid/net/Uri;

    .line 194
    const-string v2, "date DESC"

    .line 196
    :try_start_0
    const-string v0, "android.provider.Telephony$Sms"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 198
    const-string v0, "CONTENT_URI"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :try_start_1
    const-string v1, "DEFAULT_SORT_ORDER"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/u;->a:Landroid/net/Uri;

    .line 206
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/u;->b:Ljava/lang/String;

    .line 208
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    :goto_1
    :try_start_2
    const-string v3, "Telephony.Sms"

    const-string v4, "Android class not found."

    invoke-static {v3, v4, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/u;->a:Landroid/net/Uri;

    .line 206
    sput-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/u;->b:Ljava/lang/String;

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    :goto_2
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/u;->a:Landroid/net/Uri;

    .line 206
    sput-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/u;->b:Ljava/lang/String;

    throw v0

    .line 205
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 201
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/avast/android/mobilesecurity/app/filter/core/u;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    new-instance v1, Landroid/content/ContentValues;

    const/4 v0, 0x7

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 266
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/u;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz p5, :cond_0

    .line 268
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/u;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    :cond_0
    sget-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/u;->g:Ljava/lang/String;

    if-eqz p6, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/u;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/u;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz p7, :cond_1

    .line 274
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/u;->h:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v0, p8, v2

    if-eqz v0, :cond_2

    .line 277
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/u;->d:Ljava/lang/String;

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 279
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 270
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
