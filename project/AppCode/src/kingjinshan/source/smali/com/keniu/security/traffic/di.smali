.class final Lcom/keniu/security/traffic/di;
.super Ljava/lang/Object;
.source "TrafficUpdater2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:J

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JJJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    iput-object p1, p0, Lcom/keniu/security/traffic/di;->a:Landroid/content/Context;

    .line 721
    iput-wide p2, p0, Lcom/keniu/security/traffic/di;->b:J

    .line 722
    iput-wide p4, p0, Lcom/keniu/security/traffic/di;->c:J

    .line 723
    iput-wide p6, p0, Lcom/keniu/security/traffic/di;->d:J

    .line 724
    iput-boolean p8, p0, Lcom/keniu/security/traffic/di;->e:Z

    .line 725
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 729
    iget-object v0, p0, Lcom/keniu/security/traffic/di;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/keniu/security/traffic/di;->b:J

    iget-wide v3, p0, Lcom/keniu/security/traffic/di;->c:J

    iget-wide v5, p0, Lcom/keniu/security/traffic/di;->d:J

    iget-boolean v7, p0, Lcom/keniu/security/traffic/di;->e:Z

    invoke-static/range {v0 .. v7}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;JJJZ)V

    .line 731
    return-void
.end method
