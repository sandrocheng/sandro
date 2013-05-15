.class Lcom/avast/android/generic/ui/m;
.super Ljava/lang/Object;
.source "CheckerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/l;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/l;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/avast/android/generic/ui/m;->a:Lcom/avast/android/generic/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/avast/android/generic/ui/m;->a:Lcom/avast/android/generic/ui/l;

    iget-object v0, v0, Lcom/avast/android/generic/ui/l;->b:Lcom/avast/android/generic/ui/CheckerFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/CheckerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/m;->a:Lcom/avast/android/generic/ui/l;

    iget-object v0, v0, Lcom/avast/android/generic/ui/l;->b:Lcom/avast/android/generic/ui/CheckerFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/CheckerFragment;->h()V

    goto :goto_0
.end method
