.class public Lcom/avast/android/generic/util/q;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final a:[Lcom/avast/android/generic/util/r;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avast/android/generic/util/r;

    const/4 v1, 0x0

    new-instance v2, Lcom/avast/android/generic/util/r;

    const-string v3, "HTTP status 400"

    sget v4, Lcom/avast/android/generic/z;->aN:I

    invoke-direct {v2, v3, v4}, Lcom/avast/android/generic/util/r;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/avast/android/generic/util/r;

    const-string v3, "ECONNREFUSED"

    sget v4, Lcom/avast/android/generic/z;->ap:I

    invoke-direct {v2, v3, v4}, Lcom/avast/android/generic/util/r;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/generic/util/q;->a:[Lcom/avast/android/generic/util/r;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget v0, Lcom/avast/android/generic/z;->ay:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 64
    :cond_0
    :goto_0
    return-object p1

    .line 56
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 58
    sget-object v2, Lcom/avast/android/generic/util/q;->a:[Lcom/avast/android/generic/util/r;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 60
    iget-object v5, v4, Lcom/avast/android/generic/util/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    iget v0, v4, Lcom/avast/android/generic/util/r;->b:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {p0, v0}, Lcom/avast/android/generic/util/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 32
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const-string v0, "Reason unknown"

    .line 41
    :cond_1
    :goto_0
    return-object v0

    .line 39
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 41
    invoke-static {v0, p1}, Lcom/avast/android/generic/util/q;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
