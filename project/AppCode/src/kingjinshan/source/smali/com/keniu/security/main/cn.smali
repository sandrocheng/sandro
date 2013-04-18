.class final Lcom/keniu/security/main/cn;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/main/SplashActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/keniu/security/main/cn;->a:Lcom/keniu/security/main/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/main/cn;->a:Lcom/keniu/security/main/SplashActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/main/cn;->a:Lcom/keniu/security/main/SplashActivity;

    const-class v2, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    iget-object v1, p0, Lcom/keniu/security/main/cn;->a:Lcom/keniu/security/main/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/main/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    iget-object v0, p0, Lcom/keniu/security/main/cn;->a:Lcom/keniu/security/main/SplashActivity;

    invoke-virtual {v0}, Lcom/keniu/security/main/SplashActivity;->finish()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    return-void
.end method
