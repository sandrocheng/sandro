.class final Lcom/keniu/security/traffic/dg;
.super Ljava/lang/Object;
.source "TrafficUpdater2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    iput-object p1, p0, Lcom/keniu/security/traffic/dg;->b:Landroid/content/Context;

    .line 664
    iput p2, p0, Lcom/keniu/security/traffic/dg;->a:I

    .line 665
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/keniu/security/traffic/dg;->b:Landroid/content/Context;

    iget v1, p0, Lcom/keniu/security/traffic/dg;->a:I

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;I)V

    .line 670
    return-void
.end method
