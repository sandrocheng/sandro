.class final Lcom/avast/android/mobilesecurity/app/firewall/v;
.super Ljava/lang/Object;
.source "FirewallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/avast/android/mobilesecurity/app/firewall/core/a;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/v;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/avast/android/mobilesecurity/app/firewall/v;->b:Z

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/firewall/v;->c:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    iput-object p4, p0, Lcom/avast/android/mobilesecurity/app/firewall/v;->d:Landroid/os/Handler;

    iput-object p5, p0, Lcom/avast/android/mobilesecurity/app/firewall/v;->e:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 551
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/v;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/v;->b:Z

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/v;->c:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/v;->d:Landroid/os/Handler;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/firewall/v;->e:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Landroid/content/Context;ZLcom/avast/android/mobilesecurity/app/firewall/core/a;ZLandroid/os/Handler;Landroid/os/Handler;)Z

    .line 552
    return-void
.end method
