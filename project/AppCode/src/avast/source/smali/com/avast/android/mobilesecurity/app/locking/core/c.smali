.class Lcom/avast/android/mobilesecurity/app/locking/core/c;
.super Ljava/lang/Object;
.source "AppKillerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/locking/core/b;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/locking/core/b;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/c;->b:Lcom/avast/android/mobilesecurity/app/locking/core/b;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/c;->b:Lcom/avast/android/mobilesecurity/app/locking/core/b;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/locking/core/b;->a(Ljava/lang/String;)V

    .line 91
    return-void
.end method
