.class Lcom/dolphin/browser/addons/w;
.super Landroid/os/Handler;
.source "Browser.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/h;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dolphin/browser/addons/w;->a:Lcom/dolphin/browser/addons/h;

    .line 45
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/addons/w;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0, p1}, Lcom/dolphin/browser/addons/h;->a(Lcom/dolphin/browser/addons/h;Landroid/os/Message;)V

    .line 49
    return-void
.end method
