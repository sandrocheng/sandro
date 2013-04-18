.class final Lcom/keniu/security/traffic/df;
.super Ljava/lang/Object;
.source "TrafficUpdater2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-object p1, p0, Lcom/keniu/security/traffic/df;->a:Landroid/content/Context;

    .line 743
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/keniu/security/traffic/df;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/traffic/z;->e(Landroid/content/Context;)V

    .line 748
    return-void
.end method
