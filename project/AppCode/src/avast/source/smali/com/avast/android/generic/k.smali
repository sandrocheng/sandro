.class public Lcom/avast/android/generic/k;
.super Ljava/lang/Object;
.source "PasswordProtector.java"


# static fields
.field public static a:Landroid/os/Handler$Callback;

.field public static b:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/avast/android/generic/l;

    invoke-direct {v0}, Lcom/avast/android/generic/l;-><init>()V

    sput-object v0, Lcom/avast/android/generic/k;->a:Landroid/os/Handler$Callback;

    .line 49
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avast/android/generic/k;->a(Landroid/support/v4/app/FragmentActivity;Z)V

    .line 54
    return-void
.end method

.method private static a(Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 63
    const-class v0, Lcom/avast/android/generic/a/a;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/a/a;

    .line 65
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/avast/android/generic/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/avast/android/generic/ae;

    invoke-static {v1, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ae;

    .line 67
    if-nez p1, :cond_1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/avast/android/generic/k;->b:Ljava/lang/ref/WeakReference;

    .line 69
    const-class v0, Lcom/avast/android/generic/util/s;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    sget v1, Lcom/avast/android/generic/t;->ay:I

    sget-object v2, Lcom/avast/android/generic/k;->a:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 71
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/t;->ay:I

    invoke-static {v0, v1}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/support/v4/app/FragmentManager;I)V

    .line 77
    :cond_2
    :goto_0
    return-void

    .line 73
    :cond_3
    if-eqz v0, :cond_2

    .line 74
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/avast/android/generic/a/a;->a(Z)V

    goto :goto_0
.end method
