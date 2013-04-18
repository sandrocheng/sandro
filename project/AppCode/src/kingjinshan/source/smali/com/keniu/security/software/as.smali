.class final Lcom/keniu/security/software/as;
.super Landroid/content/pm/e;
.source "SoftwareManager2.java"


# instance fields
.field final synthetic b:Lcom/keniu/security/software/o;

.field final synthetic c:Lcom/keniu/security/software/ar;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/ar;Lcom/keniu/security/software/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/keniu/security/software/as;->c:Lcom/keniu/security/software/ar;

    iput-object p2, p0, Lcom/keniu/security/software/as;->b:Lcom/keniu/security/software/o;

    invoke-direct {p0}, Landroid/content/pm/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/keniu/security/software/as;->b:Lcom/keniu/security/software/o;

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v1, v3

    iget-wide v3, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/software/o;->a(J)V

    .line 441
    return-void
.end method
