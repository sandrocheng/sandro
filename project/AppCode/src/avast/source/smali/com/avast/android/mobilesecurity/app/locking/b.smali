.class Lcom/avast/android/mobilesecurity/app/locking/b;
.super Ljava/lang/Object;
.source "BlockAvastPasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/locking/b;->a:Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/b;->a:Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;->d()V

    .line 80
    return-void
.end method
