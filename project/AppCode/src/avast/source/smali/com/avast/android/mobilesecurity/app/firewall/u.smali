.class final Lcom/avast/android/mobilesecurity/app/firewall/u;
.super Landroid/os/Handler;
.source "FirewallFragment.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/u;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/avast/android/mobilesecurity/app/firewall/u;->b:Z

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 541
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/u;->a:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/u;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0326

    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 545
    return-void

    .line 541
    :cond_0
    const v0, 0x7f0c032d

    goto :goto_0
.end method
