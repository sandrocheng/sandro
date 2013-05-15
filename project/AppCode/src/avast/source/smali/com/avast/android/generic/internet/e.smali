.class public Lcom/avast/android/generic/internet/e;
.super Ljava/lang/Object;
.source "HttpInfo.java"


# instance fields
.field private a:Lcom/avast/a/a/a/ak;

.field private b:Z

.field private c:Lcom/avast/android/generic/internet/k;

.field private d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/avast/a/a/a/ak;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/e;-><init>(Lcom/avast/a/a/a/ak;ZLcom/avast/android/generic/internet/k;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/avast/a/a/a/ak;ZLcom/avast/android/generic/internet/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/e;->a(Lcom/avast/a/a/a/ak;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/avast/android/generic/internet/e;->a(Z)V

    .line 23
    invoke-virtual {p0, p3}, Lcom/avast/android/generic/internet/e;->a(Lcom/avast/android/generic/internet/k;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/avast/android/generic/internet/e;->d:Landroid/os/Bundle;

    .line 56
    return-void
.end method

.method public a(Lcom/avast/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/avast/android/generic/internet/e;->a:Lcom/avast/a/a/a/ak;

    .line 44
    return-void
.end method

.method public a(Lcom/avast/android/generic/internet/k;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/avast/android/generic/internet/e;->c:Lcom/avast/android/generic/internet/k;

    .line 36
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/e;->b:Z

    .line 28
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/e;->b:Z

    return v0
.end method

.method public b()Lcom/avast/android/generic/internet/k;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avast/android/generic/internet/e;->c:Lcom/avast/android/generic/internet/k;

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/ak;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avast/android/generic/internet/e;->a:Lcom/avast/a/a/a/ak;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avast/android/generic/internet/e;->d:Landroid/os/Bundle;

    return-object v0
.end method
