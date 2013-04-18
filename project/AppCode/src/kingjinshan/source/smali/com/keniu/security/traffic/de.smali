.class final Lcom/keniu/security/traffic/de;
.super Ljava/lang/Object;
.source "TrafficUpdater2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object p1, p0, Lcom/keniu/security/traffic/de;->a:Landroid/content/Context;

    .line 701
    iput-wide p2, p0, Lcom/keniu/security/traffic/de;->b:J

    .line 702
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 706
    const/4 v0, 0x1

    sput-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    .line 707
    iget-object v0, p0, Lcom/keniu/security/traffic/de;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 708
    iget-object v1, p0, Lcom/keniu/security/traffic/de;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/at;->a(Landroid/content/Context;Lcom/keniu/security/traffic/y;)V

    .line 710
    iget-object v0, p0, Lcom/keniu/security/traffic/de;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/keniu/security/traffic/de;->b:J

    invoke-static {v0, p0, v1, v2}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 712
    return-void
.end method
