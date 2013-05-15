.class public final Lcom/avast/android/mobilesecurity/app/filter/core/y;
.super Lcom/avast/android/mobilesecurity/app/filter/core/z;
.source "Telephony.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field private static final k:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 660
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/t;->a:Landroid/net/Uri;

    const-string v1, "conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/y;->k:Landroid/net/Uri;

    .line 672
    sget-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/y;->k:Landroid/net/Uri;

    .line 674
    :try_start_0
    const-string v0, "android.provider.Telephony$Threads"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 676
    const-string v2, "CONTENT_URI"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/y;->a:Landroid/net/Uri;

    .line 684
    :goto_0
    return-void

    .line 678
    :catch_0
    move-exception v0

    .line 679
    :try_start_1
    const-string v2, "Telephony.Threads"

    const-string v3, "Android class not found."

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/y;->a:Landroid/net/Uri;

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/y;->a:Landroid/net/Uri;

    throw v0
.end method
