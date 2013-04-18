.class final Lcom/keniu/security/main/co;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/main/SplashActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/keniu/security/main/co;->a:Lcom/keniu/security/main/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/main/co;->a:Lcom/keniu/security/main/SplashActivity;

    invoke-static {v0}, Lcom/keniu/security/main/SplashActivity;->a(Lcom/keniu/security/main/SplashActivity;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    return-void
.end method
