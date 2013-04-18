.class final Lcom/keniu/security/main/ba;
.super Landroid/os/Handler;
.source "MainActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2763
    iput-object p1, p0, Lcom/keniu/security/main/ba;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/keniu/security/main/ba;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0, p1}, Lcom/keniu/security/main/MainActivity;->a(Lcom/keniu/security/main/MainActivity;Landroid/os/Message;)V

    .line 2767
    return-void
.end method
