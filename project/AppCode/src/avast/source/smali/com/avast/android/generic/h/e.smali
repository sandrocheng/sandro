.class public Lcom/avast/android/generic/h/e;
.super Lcom/avast/android/generic/h/l;
.source "C2DMErrorTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/avast/android/generic/h/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/avast/android/generic/ah;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 17
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->E()V

    .line 18
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->b()Z

    .line 20
    invoke-virtual {p0}, Lcom/avast/android/generic/h/e;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/g;->b(Landroid/content/Context;)V

    .line 21
    return-void
.end method
