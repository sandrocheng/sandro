.class Lcom/avast/android/generic/service/c;
.super Ljava/lang/Object;
.source "AvastService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/avast/android/generic/service/AvastService;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/service/AvastService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/avast/android/generic/service/c;->b:Lcom/avast/android/generic/service/AvastService;

    iput-object p2, p0, Lcom/avast/android/generic/service/c;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/avast/android/generic/service/c;->b:Lcom/avast/android/generic/service/AvastService;

    new-instance v1, Lcom/avast/android/generic/service/d;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/service/d;-><init>(Lcom/avast/android/generic/service/c;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/service/AvastService;->a(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method
