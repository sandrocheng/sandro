.class Lcom/avast/android/generic/service/a;
.super Ljava/lang/Object;
.source "AvastService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/avast/android/generic/service/AvastService;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/avast/android/generic/service/a;->d:Lcom/avast/android/generic/service/AvastService;

    iput-object p2, p0, Lcom/avast/android/generic/service/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/avast/android/generic/service/a;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/avast/android/generic/service/a;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/avast/android/generic/service/a;->d:Lcom/avast/android/generic/service/AvastService;

    new-instance v1, Lcom/avast/android/generic/service/b;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/service/b;-><init>(Lcom/avast/android/generic/service/a;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/service/AvastService;->a(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method
