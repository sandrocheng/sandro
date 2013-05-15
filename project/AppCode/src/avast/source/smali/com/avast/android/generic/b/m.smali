.class Lcom/avast/android/generic/b/m;
.super Ljava/lang/Object;
.source "CommandReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/b/l;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/b/l;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/avast/android/generic/b/m;->a:Lcom/avast/android/generic/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 46
    iget-object v0, p0, Lcom/avast/android/generic/b/m;->a:Lcom/avast/android/generic/b/l;

    new-instance v1, Lcom/avast/android/generic/b/n;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/b/n;-><init>(Lcom/avast/android/generic/b/m;)V

    invoke-static {v0, v1}, Lcom/avast/android/generic/b/l;->a(Lcom/avast/android/generic/b/l;Landroid/os/Handler;)Landroid/os/Handler;

    .line 63
    iget-object v0, p0, Lcom/avast/android/generic/b/m;->a:Lcom/avast/android/generic/b/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avast/android/generic/b/l;->a(Lcom/avast/android/generic/b/l;Z)Z

    .line 65
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 66
    return-void
.end method
