.class final Lcom/keniu/security/traffic/bk;
.super Ljava/lang/Object;
.source "TrafficMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/keniu/security/traffic/bk;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/keniu/security/traffic/bk;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->h(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    .line 392
    return-void
.end method
