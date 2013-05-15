.class public final Lcom/avast/android/mobilesecurity/app/filter/core/t;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 839
    const-string v0, "content://mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/t;->b:Landroid/net/Uri;

    .line 848
    sget-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/t;->b:Landroid/net/Uri;

    .line 850
    :try_start_0
    const-string v0, "android.provider.Telephony$MmsSms"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 852
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

    .line 858
    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/t;->a:Landroid/net/Uri;

    .line 860
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    :try_start_1
    const-string v2, "Telephony.MmsSms"

    const-string v3, "Android class not found."

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/t;->a:Landroid/net/Uri;

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/t;->a:Landroid/net/Uri;

    throw v0
.end method
