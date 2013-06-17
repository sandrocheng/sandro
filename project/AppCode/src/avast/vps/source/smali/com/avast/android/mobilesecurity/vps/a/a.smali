.class public final Lcom/avast/android/mobilesecurity/vps/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/a/a;->a:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/a/a;->b:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/a/a;->c:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/a/a;->d:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/avast/android/mobilesecurity/vps/a/a;->e:I

    return-void
.end method

.method private static a()[B
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/o;->a:Lcom/avast/android/mobilesecurity/vps/b/o;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/o;->b:Lcom/avast/android/mobilesecurity/vps/b/o;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/o;->c:Lcom/avast/android/mobilesecurity/vps/b/o;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/b/b;->a(Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v1, "com.avast.android.antitheft"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/vps/a/c;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/a/c;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/avast/android/mobilesecurity/vps/a/a;->a()[B

    move-result-object v0

    :goto_2
    return-object v0

    :cond_4
    invoke-static {p2}, Lcom/avast/android/mobilesecurity/vps/a/d;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/a/d;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/avast/android/mobilesecurity/vps/a/a;->a()[B

    move-result-object v0

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/avast/android/mobilesecurity/vps/a/b;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/a/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avast/android/mobilesecurity/vps/a/a;->a()[B

    move-result-object v0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lcom/avast/android/mobilesecurity/vps/a/a;->a()[B

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
