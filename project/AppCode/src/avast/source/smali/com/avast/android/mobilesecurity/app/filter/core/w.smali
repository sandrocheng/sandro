.class public final Lcom/avast/android/mobilesecurity/app/filter/core/w;
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
    .line 319
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/w;->k:Landroid/net/Uri;

    .line 329
    sget-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/w;->k:Landroid/net/Uri;

    .line 330
    const-string v2, "date DESC"

    .line 332
    :try_start_0
    const-string v0, "android.provider.Telephony$Sms$Inbox"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 334
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

    .line 336
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

    .line 344
    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/w;->a:Landroid/net/Uri;

    .line 345
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/w;->b:Ljava/lang/String;

    .line 347
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    :goto_1
    :try_start_2
    const-string v3, "Telephony.Sms.Conversations"

    const-string v4, "Android class not found."

    invoke-static {v3, v4, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/w;->a:Landroid/net/Uri;

    .line 345
    sput-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/w;->b:Ljava/lang/String;

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    :goto_2
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/w;->a:Landroid/net/Uri;

    .line 345
    sput-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/w;->b:Ljava/lang/String;

    throw v0

    .line 344
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 338
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    sget-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/w;->a:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/filter/core/u;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
