.class Lcom/avast/android/mobilesecurity/app/manager/e;
.super Ljava/lang/Object;
.source "AppDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/e;->a:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/e;->a:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    const-string v1, "ms-AppManager"

    const-string v2, "Open System Info"

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/e;->a:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 268
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/e;->a:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->d(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V

    .line 269
    return-void
.end method
