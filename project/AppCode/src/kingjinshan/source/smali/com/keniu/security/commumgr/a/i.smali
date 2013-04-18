.class final Lcom/keniu/security/commumgr/a/i;
.super Ljava/lang/Object;
.source "RpCtrl.java"

# interfaces
.implements Lcom/keniu/security/commumgr/a/k;


# instance fields
.field final synthetic a:Lcom/keniu/security/commumgr/a/h;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/keniu/security/commumgr/a/i;->a:Lcom/keniu/security/commumgr/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/keniu/security/commumgr/a/e;->c()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    return-void
.end method
