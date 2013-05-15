.class public Lcom/avast/android/mobilesecurity/filebrowser/k;
.super Lcom/avast/android/generic/filebrowser/e;
.source "SystemFileLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/avast/android/generic/filebrowser/e;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/avast/android/generic/filebrowser/f;
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/filebrowser/h;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/filebrowser/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/k;->x()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/k;->w()Lcom/avast/android/generic/filebrowser/f;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Lcom/avast/android/generic/filebrowser/f;->g()[Lcom/avast/android/generic/filebrowser/f;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 42
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 44
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/avast/android/mobilesecurity/filebrowser/l;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/filebrowser/l;-><init>(Lcom/avast/android/mobilesecurity/filebrowser/k;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
