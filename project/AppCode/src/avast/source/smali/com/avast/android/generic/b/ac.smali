.class public Lcom/avast/android/generic/b/ac;
.super Lcom/avast/android/generic/b/d;
.source "SuccessCommandHandler.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/avast/a/a/a/ak;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;Lcom/avast/a/a/a/ak;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/avast/android/generic/b/d;-><init>(Lcom/avast/android/generic/service/AvastService;)V

    .line 18
    iput-object p2, p0, Lcom/avast/android/generic/b/ac;->a:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/avast/android/generic/b/ac;->b:Lcom/avast/a/a/a/ak;

    .line 21
    sget-object v0, Lcom/avast/android/generic/b/f;->d:Lcom/avast/android/generic/b/f;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/b/ac;->a(Lcom/avast/android/generic/b/f;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/b/ac;->a(Z)V

    .line 24
    return-void
.end method


# virtual methods
.method public i()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/avast/android/generic/b/ac;->u()Lcom/avast/android/generic/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/avast/android/generic/b/ac;->a:Ljava/lang/String;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/b/ac;->b:Lcom/avast/a/a/a/ak;

    goto :goto_0
.end method

.method protected n()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected o()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method protected p()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method protected q()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected r()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
