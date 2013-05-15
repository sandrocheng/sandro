.class public Lcom/avast/android/generic/b/k;
.super Ljava/lang/Object;
.source "CommandPort.java"


# instance fields
.field public a:Lcom/avast/android/generic/b/r;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/avast/android/generic/b/r;->a:Lcom/avast/android/generic/b/r;

    iput-object v0, p0, Lcom/avast/android/generic/b/k;->a:Lcom/avast/android/generic/b/r;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/b/k;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/avast/android/generic/b/r;->d:Lcom/avast/android/generic/b/r;

    iput-object v0, p0, Lcom/avast/android/generic/b/k;->a:Lcom/avast/android/generic/b/r;

    .line 35
    iput-object p2, p0, Lcom/avast/android/generic/b/k;->b:Ljava/lang/String;

    .line 37
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Target tool is empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    const-string v0, "MS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    const-string p3, "mobilesecurity"

    .line 54
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.avast.android."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 56
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Target tool not found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    const-string v0, "AT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    invoke-static {p1}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Target tool not found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_3
    iput-object v0, p0, Lcom/avast/android/generic/b/k;->c:Ljava/lang/String;

    .line 59
    :goto_1
    return-void

    .line 51
    :cond_4
    const-string v0, "BU"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-string p3, "backup"

    goto :goto_0

    .line 58
    :cond_5
    iput-object v0, p0, Lcom/avast/android/generic/b/k;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/avast/android/generic/b/r;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/avast/android/generic/b/k;->a:Lcom/avast/android/generic/b/r;

    .line 29
    iput-object p2, p0, Lcom/avast/android/generic/b/k;->b:Ljava/lang/String;

    .line 30
    return-void
.end method
