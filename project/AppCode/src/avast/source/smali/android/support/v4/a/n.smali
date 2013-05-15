.class public final Landroid/support/v4/a/n;
.super Landroid/database/ContentObserver;
.source "Loader.java"


# instance fields
.field final synthetic a:Landroid/support/v4/a/m;


# direct methods
.method public constructor <init>(Landroid/support/v4/a/m;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Landroid/support/v4/a/n;->a:Landroid/support/v4/a/m;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 53
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v4/a/n;->a:Landroid/support/v4/a/m;

    invoke-virtual {v0}, Landroid/support/v4/a/m;->v()V

    .line 63
    return-void
.end method
