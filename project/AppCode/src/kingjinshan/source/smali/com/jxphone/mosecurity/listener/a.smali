.class public final Lcom/jxphone/mosecurity/listener/a;
.super Landroid/database/ContentObserver;
.source "CallObserver.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 17
    iput-object p1, p0, Lcom/jxphone/mosecurity/listener/a;->a:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 23
    if-eqz p1, :cond_0

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/h;->b(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/g;

    goto :goto_0
.end method
